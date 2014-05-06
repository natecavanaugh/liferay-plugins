AUI().use(
    'aui-base',
    function(A) {
        Liferay.namespace('Chat');

        var UPDATE_PRESENCE_PERIOD_MS = 10000;

        Liferay.Chat.WebRtcManager = {
            State: {
                ACQUIRED: 'acquired',
                ASKED: 'asked',
                INIT: 'init'
            },

            debugIO: function(msgType, details, dir) {
                var msg = '';

                if (dir === 'i') {
                    msg += '[S -> C]';
                }
                else if (dir === 'o') {
                    msg += '[C -> S]';
                }
                else {
                    return;
                }

                msg += ' (' + msgType + ') ' + details;
                Liferay.Chat.WebRtcManager.debugMsg(msg);
            },

            debugJsonIO: function(msgType, msgObj, dir) {
                Liferay.Chat.WebRtcManager.debugIO(msgType, JSON.stringify(msgObj), dir);
            },

            debugMsg: function(msg) {
                console.log('WebRTC: ' + msg);
            },

            debugObj: function(obj) {
                console.log(obj);
            },

            doError: function(errorMsg) {
                Liferay.Chat.WebRtcManager.errorMsg(errorMsg);
            },

            errorMsg: function(msg) {
                console.error('WebRTC: ' + msg);
            },

            getConversationsGlobalState: function() {
                var instance = this;
                var State = Liferay.Chat.WebRtcConversation.State;
                var ret = {
                    active: false,
                    communicationRequired: false,
                    inRinging: false,
                    outRinging: false,
                    waiting: false
                };

                for (uid in instance._conversations) {
                    var conv = instance._conversations[uid];

                    if (conv.getState() !== State.STOPPED &&
                           conv.getState() !== State.DELETED &&
                           conv.getState() !== State.STOPPING &&
                           conv.getState() !== State.DELETING) {
                        ret.active = true;

                        if (conv.getState() !== State.CONNECTED) {
                            ret.communicationRequired = true;
                        }
                    }

                    if (conv.getState() === State.STOPPING ||
                           conv.getState() === State.DELETING) {
                        ret.communicationRequired = true;
                    }

                    if (conv.getState() === State.CALLING ||
                           conv.getState() === State.CALLED) {
                        ret.outRinging = true;
                    }

                    if (conv.getState() === State.GOTCALL ||
                           conv.getState() === State.GOTCALLWAITING) {
                        ret.inRinging = true;
                    }

                    if (conv.getState() === State.CALLINGWAITING ||
                           conv.getState() === State.GOTCALLWAITING) {
                        ret.waiting = true;
                    }
                }

                return ret;
            },

            getLocalStream: function() {
                var instance = Liferay.Chat.WebRtcManager;

                return instance._localStream;
            },

            getWebRtcAdapter: function() {
                return Liferay.Chat.WebRtcManager._webRtcAdapter;
            },

            getState: function() {
                var instance = Liferay.Chat.WebRtcManager;

                return instance._currentState;
            },

            init: function(conf) {
                var instance = Liferay.Chat.WebRtcManager;

                instance.debugMsg('initializing the WebRTC manager');

                instance._webRtcAdapter = Liferay.Chat.WebRtcAdapter.getWebRtcAdapter();
                if (instance._webRtcAdapter === null) {
                    instance.debugMsg('WebRTC is not supported');
                    return;
                }

                instance.debugMsg('WebRTC seems supported!');

                instance._cb.disableInRinging = conf.cb.disableInRinging;
                instance._cb.disableOutRinging = conf.cb.disableOutRinging;
                instance._cb.enableInRinging = conf.cb.enableInRinging;
                instance._cb.enableOutRinging = conf.cb.enableOutRinging;
                instance._cb.ensurePanel = conf.cb.ensurePanel;
                instance._cb.isUserAvailableForChatVideo = conf.cb.isUserAvailableForChatVideo;
                instance._cb.onMediaDisabled = conf.cb.onMediaDisabled
                instance._cb.onMediaEnabled = conf.cb.onMediaEnabled;
                instance._cb.send = conf.cb.send;

                instance._currentState = Liferay.Chat.WebRtcManager.State.INIT;

                instance.sendResetMsg();

                instance._updatePresenceTimerId = setInterval(
                    function() {
                        instance._updatePresence();
                    }, UPDATE_PRESENCE_PERIOD_MS);
            },

            isSupported: function() {
                var instance = Liferay.Chat.WebRtcManager;

                if (instance._webRtcAdapter === null) {
                    instance._webRtcAdapter = Liferay.Chat.WebRtcAdapter.getWebRtcAdapter();
                }

                return instance.getWebRtcAdapter() !== null;
            },

            isUserAvailableForChatVideo: function(userId) {
                var instance = Liferay.Chat.WebRtcManager;

                return instance._cb.isUserAvailableForChatVideo(userId);
            },

            muteMike: function() {
                var instance = Liferay.Chat.WebRtcManager;

                Liferay.Chat.WebRtcManager.debugMsg('muting microphone');

                var localStream = instance.getLocalStream();
                if (localStream) {
                    instance.getWebRtcAdapter().muteStreamAudio(localStream);
                }
            },

            onConversationStateChange: function() {
                var instance = Liferay.Chat.WebRtcManager;
                var globalState = instance.getConversationsGlobalState();

                if (!globalState.active) {
                    instance._disableMedia(true);
                }

                if (globalState.waiting) {
                    instance._enableMedia();
                }

                if (globalState.inRinging) {
                    instance._cb.enableInRinging();
                }
                else {
                    instance._cb.disableInRinging();
                }

                if (globalState.outRinging) {
                    instance._cb.enableOutRinging();
                }
                else {
                    instance._cb.disableOutRinging();
                }
            },

            processWebRtcMails: function(mails) {
                var instance = Liferay.Chat.WebRtcManager;

                if (mails.length > 0) {
                    instance.debugMsg('received ' + mails.length + ' mail' + (mails.length > 1 ? 's' : '') + ':');
                    instance.debugObj(mails);
                }

                for (var i = 0; i < mails.length; ++i) {
                    var mail = mails[i];
                    var msg = mail.message;

                    var ensurePanel = !(mail.type === 'conn' && msg.type === 'status');
                    if (ensurePanel) {
                        instance.debugMsg('asking host to ensure panel for user ID ' + mail.sourceUserId);
                        var webRtcConversation = instance._cb.ensurePanel(mail.sourceUserId);
                    }

                    var webRtcConversation = instance._conversations[mail.sourceUserId];
                    if (!webRtcConversation) {
                        instance.doError('got message for user ' + mail.sourceUserId + ', but conversation not registered');
                        continue;
                    }

                    Liferay.Chat.WebRtcManager.debugJsonIO(mail.type, msg, 'i');

                    switch (mail.type) {
                        case 'err':
                            webRtcConversation.onMsgError(msg);
                            break;

                        case 'conn':
                            webRtcConversation._cb.onWebRtcEvent();
                            switch (msg.type) {
                                case 'call':
                                    webRtcConversation.onMsgGotCall();
                                    break;

                                case 'answer':
                                    webRtcConversation.onMsgGotAnswer(msg);
                                    break;

                                case 'status':
                                    webRtcConversation.onMsgGotStatus(msg);
                                    break;

                                default:
                                    instance.doError('got "conn" message, but unknown connection message type "' + msg.type + '"');
                            }
                            break;

                        case 'ice':
                            webRtcConversation.onMsgNewIceCandidate(msg);
                            break;

                        case 'sdp':
                            webRtcConversation.onMsgNewSdp(msg);
                            break;

                        default:
                            instance.doError('got message, but unknown message type "' + mail.type + '"');
                    }
                }
            },

            registerConversation: function(conv) {
                var instance = Liferay.Chat.WebRtcManager;

                instance._conversations[conv.getToUserId()] = conv;
                instance.debugMsg('registering conversation ID ' + conv.getToUserId());
            },

            sendMsg: function(msgType, payload) {
                var instance = Liferay.Chat.WebRtcManager;

                payload.type = msgType;
                instance._cb.send(payload);
                Liferay.Chat.WebRtcManager.debugJsonIO(msgType, payload, 'o');
            },

            sendResetMsg: function() {
                var instance = Liferay.Chat.WebRtcManager;

                instance.sendMsg('reset', {});
            },

            sendSetAvailabilityMsg: function(available) {
                var instance = Liferay.Chat.WebRtcManager;
                var msgType = 'setAvailability';
                var msg = {
                    available: available
                };

                instance.sendMsg(msgType, msg);
            },

            sendUpdatePresenceMsg: function() {
                var instance = Liferay.Chat.WebRtcManager;
                var msgType = 'updatePresence';

                instance.sendMsg(msgType, {});
            },

            setState: function(state) {
                var instance = Liferay.Chat.WebRtcManager;

                instance._currentState = state;
            },

            unmuteMike: function() {
                var instance = Liferay.Chat.WebRtcManager;

                instance.debugMsg('unmuting microphone');

                var localStream = instance.getLocalStream();
                if (localStream) {
                    instance.getWebRtcAdapter().unmuteStreamAudio(localStream);
                }
            },

            _disableMedia: function(notify) {
                var instance = Liferay.Chat.WebRtcManager;

                if (instance.getState() === instance.State.ACQUIRED) {
                    instance.setState(instance.State.INIT);
                    instance._stopLocalStream();
                    if (notify) {
                        instance._cb.onMediaDisabled();
                    }
                }
            },

            _enableMedia: function() {
                var instance = Liferay.Chat.WebRtcManager;

                if (instance.getState() === instance.State.INIT) {
                    instance.setState(instance.State.ASKED);
                    instance.getWebRtcAdapter().getUserMedia(instance.getWebRtcAdapter().getUserMediaConstraints,
                        function(stream) {
                            instance.debugMsg('user media acquired');

                            instance._setLocalStream(stream);
                            instance.setState(instance.State.ACQUIRED);

                            var globalState = instance.getConversationsGlobalState();
                            if (!globalState.active) {
                                instance._disableMedia(false);
                                return;
                            }

                            instance._cb.onMediaEnabled();
                            instance._updateWaitingConversationsNextState();
                        },
                        function(e) {
                            instance.doError('error while trying to acquired user media');

                            instance.setState(instance.State.INIT);
                            instance._updateWaitingConversationsCancel();
                        });
                }
                else if (instance.getState() === instance.State.ACQUIRED) {
                    instance._updateWaitingConversationsNextState();
                }
                else {
                    instance.debugMsg('local stream in progress of being acquired');
                }
            },

            _setAudioTracksEnabled: function(en) {
                var instance = this;

                if (instance.getState() === instance.State.ACQUIRED && instance.getLocalStream()) {
                    for (i in instance.getLocalStream().getAudioTracks()) {
                        var track = instance.getLocalStream().getAudioTracks()[i];
                        track.enabled = en;
                    }
                }
            },

            _setLocalStream: function(stream) {
                var instance = Liferay.Chat.WebRtcManager;

                instance._localStream = stream;
            },

            _stopLocalStream: function() {
                var instance = this;

                if (instance._localStream) {
                    /* This is how we dispose of a local stream: we stop
                     * it and then set it to null so that there's no more
                     * reference to it.
                     */
                    instance.debugMsg('stopping local stream');
                    instance._localStream.stop();
                    instance._localStream = null;
                }
            },

            _updatePresence: function() {
                var instance = Liferay.Chat.WebRtcManager;

                instance.sendUpdatePresenceMsg();
            },

            _updateWaitingConversationsCancel: function() {
                var instance = Liferay.Chat.WebRtcManager;

                for (var i in instance._conversations) {
                    var conv = instance._conversations[i];
                    conv.onError(Liferay.Chat.WebRtcConversation.Error.CANNOTGETUSERMEDIA);

                    if (conv.getState() === Liferay.Chat.WebRtcConversation.State.GOTCALLWAITING) {
                        conv.setState(Liferay.Chat.WebRtcConversation.State.DENYINGCALL);
                    }
                    else if (conv.getState() === Liferay.Chat.WebRtcConversation.State.CALLINGWAITING) {
                        conv.setState(Liferay.Chat.WebRtcConversation.State.STOPPED);
                    }
                }
            },

            _updateWaitingConversationsNextState: function() {
                var instance = Liferay.Chat.WebRtcManager;

                for (var i in instance._conversations) {
                    var conv = instance._conversations[i];

                    if (conv.getState() === Liferay.Chat.WebRtcConversation.State.GOTCALLWAITING) {
                        conv.setState(Liferay.Chat.WebRtcConversation.State.GOTCALL);
                    }

                    if (conv.getState() === Liferay.Chat.WebRtcConversation.State.CALLINGWAITING) {
                        conv.setState(Liferay.Chat.WebRtcConversation.State.CALLING);
                    }
                }
            },

            _cb: {
                getConversation: null,
                isUserAvailableForChatVideo: null,
                send: null
            },
            _conversations: [],
            _currentState: null,
            _localStream: null,
            _updatePresenceTimerId: null,
            _webRtcAdapter: null
        };

        Liferay.Chat.WebRtcConversation =
            function(conf) {
                var instance = this;

                instance._userId = conf.userId;
                Liferay.Chat.WebRtcManager.debugMsg('creating new WebRTC conversation (ID ' + instance._userId + ')');

                instance._cb = {
                    onError: conf.cb.onError,
                    onStateChange: conf.cb.onStateChange,
                    onWebRtcEvent: conf.cb.onWebRtcEvent
                };

                instance._remoteVideoDomElem = conf.remoteVideoDomElem;
                instance._localVideoDomElem = conf.localVideoDomElem;

                instance._lastError = Liferay.Chat.WebRtcConversation.Error.NOERROR;

                instance._iceServers = [];
                for (var i in conf.iceServers) {
                    var ice = conf.iceServers[i];
                    var compatIce = Liferay.Chat.WebRtcManager.getWebRtcAdapter().createIceServer(ice);

                    if (compatIce !== null) {
                        instance._iceServers.push(compatIce);
                    }
                }

                Liferay.Chat.WebRtcManager.registerConversation(instance);
                instance.setState(Liferay.Chat.WebRtcConversation.State.STOPPED);
            };

        Liferay.Chat.WebRtcConversation.State = {
            ACCEPTINGCALL: 'acceptingCall',
            ANSWERED: 'answered',
            CALLED: 'called',
            CALLINGWAITING: 'callingWaiting',
            CALLING: 'calling',
            CONNECTED: 'connected',
            DELETED: 'deleted',
            DELETING: 'deleting',
            DENYINGCALL: 'denyingCall',
            GOTANSWER: 'gotAnswer',
            GOTCALL: 'gotCall',
            GOTCALLWAITING: 'gotCallWaiting',
            STOPPED: 'stopped',
            STOPPING: 'stopping'
        };

        Liferay.Chat.WebRtcConversation.Error = {
            CANNOTGETUSERMEDIA: 'cannotGetUserMedia',
            HANGUP: 'hangUp',
            REMOTEPEERDENIEDCALL: 'remotePeerDeniedCall',
            REMOTEPEERNOTAVAILABLE: 'remotePeerNotAvailable',
            REMOTEPEERRESET: 'remotePeerReset'
        };

        var State = Liferay.Chat.WebRtcConversation.State;
        var Error = Liferay.Chat.WebRtcConversation.Error;

        Liferay.Chat.WebRtcConversation.prototype = {
            getState: function() {
                var instance = this;

                return instance._currentState;
            },

            getToUserId: function() {
                var instance = this;

                return instance._userId;
            },

            isRemoteStreamFlowing: function() {
                var instance = this;
                var remoteVideo = instance._remoteVideoDomElem;
                var flowing = !(remoteVideo.readyState <= HTMLMediaElement.HAVE_CURRENT_DATA ||
                        remoteVideo.paused || remoteVideo.currentTime <= 0);

                return flowing;
            },

            onDelete: function() {
                var instance = this;

                Liferay.Chat.WebRtcManager.debugMsg('event: conversation deleted');

                switch (instance.getState()) {
                    case State.CALLED:
                    case State.ACCEPTINGCALL:
                    case State.ANSWERED:
                    case State.GOTANSWER:
                    case State.CONNECTED:
                        instance.setState(Liferay.Chat.WebRtcConversation.State.DELETING);
                        instance._sendHangUpMsg();
                        break;

                    case State.STOPPING:
                        instance.setState(Liferay.Chat.WebRtcConversation.State.DELETING);
                        break;

                    case State.GOTCALL:
                    case State.GOTCALLWAITING:
                    case State.DENYINGCALL:
                        instance.setState(Liferay.Chat.WebRtcConversation.State.DELETED);
                        instance._sendAnswerMsg(false);
                        break;

                    default:
                        instance.setState(Liferay.Chat.WebRtcConversation.State.DELETED);
                        break;
                }
            },

            onError: function(error) {
                var instance = this;

                instance._cb.onError(error);
            },

            onMsgError: function(msg) {
                var instance = this;

                instance._cb.onWebRtcEvent();
                switch (msg.id) {
                    case 'existingConnection':
                        break;

                    case 'unavailableUser':
                    case 'invalidState':
                    case 'cannotAnswer':
                        Liferay.Chat.WebRtcManager.doError('error from server: "' + msg.id + '"');
                        instance.setState(State.STOPPED);
                        break;
                }
            },

            onMsgGotAnswer: function(msg) {
                var instance = this;

                if (instance.getState() !== State.CALLED) {
                    return;
                }

                if (msg.answer) {
                    instance.setState(State.GOTANSWER);
                }
                else {
                    instance.onError(Error.REMOTEPEERDENIEDCALL);
                    instance.setState(State.STOPPED);
                }
            },

            onMsgGotCall: function() {
                var instance = this;

                switch (instance.getState()) {
                    case State.STOPPED:
                    case State.STOPPING:
                    case State.DELETED:
                    case State.DELETING:
                        break;

                    case State.CALLED:
                    case State.CALLING:
                        instance.setState(State.GOTCALL);
                        break;

                    case State.CALLINGWAITING:
                        instance.setState(State.GOTCALLWAITING);
                        break;

                    default:
                        // Error: wrong state for an incoming call, so deny it
                        instance.setState(State.DENYINGCALL);
                        return;
                }

                instance.setState(State.GOTCALLWAITING);
            },

            onMsgGotStatus: function(msg) {
                var instance = this;

                switch (msg.status) {
                    case 'lost':
                        instance._onLostConnection(msg.reason);
                        break;

                    default:
                        // Unknown connection status
                }
            },

            onMsgNewIceCandidate: function(msg) {
                var instance = this;

                if (!instance._isWebRtcStarted()) {
                    return;
                }

                var iceCandidate = JSON.parse(msg.candidate);

                RTCIceCandidate = Liferay.Chat.WebRtcManager.getWebRtcAdapter().RTCIceCandidate;
                var rtcIce = new RTCIceCandidate({
                    sdpMLineIndex: iceCandidate.sdpMLineIndex,
                    candidate: iceCandidate.candidate
                });

                if (!instance._pc || !instance._acceptIceCandidates) {
                    instance._iceCandidatesBuffer.push(rtcIce);
                }
                else {
                    instance._addIceCandidate(rtcIce);
                }
            },

            onMsgNewSdp: function(msg) {
                var instance = this;

                var description = JSON.parse(msg.description);

                if (!instance._isWebRtcStarted()) {
                    return;
                }

                if (instance._isCaller) {
                    instance._webRtcCompleteOffer(description);
                }
                else {
                    instance._webRtcAnswer(description);
                }
            },

            onPressAccept: function() {
                var instance = this;

                Liferay.Chat.WebRtcManager.debugMsg('event: user pressed "accept"');

                if (instance.getState() !== State.GOTCALL && instance.getState() !== State.GOTCALLWAITING) {
                    Liferay.Chat.WebRtcManager.doError('wrong state "' + instance.getState() + ' to "accept"');

                    return;
                }

                if (!instance._isUserAvailableForChatVideo()) {
                    instance.onError(Error.REMOTEPEERNOTAVAILABLE);
                    instance.setState(State.DENYINGCALL);
                    Liferay.Chat.WebRtcManager.doError('remote peer not available for WebRTC to "accept"');

                    return;
                }
                instance.setState(State.ACCEPTINGCALL);
            },

            onPressCall: function() {
                var instance = this;

                Liferay.Chat.WebRtcManager.debugMsg('event: user pressed "call"');

                if (instance.getState() !== State.STOPPED) {
                    Liferay.Chat.WebRtcManager.doError('wrong state "' + instance.getState() + ' to "call"');

                    return;
                }

                if (!instance._isUserAvailableForChatVideo()) {
                    Liferay.Chat.WebRtcManager.doError('remote peer not available for WebRTC to "call"');
                }

                instance.setState(State.CALLINGWAITING);
            },

            onPressHangUp: function() {
                var instance = this;
                var State = Liferay.Chat.WebRtcConversation.State;

                Liferay.Chat.WebRtcManager.debugMsg('event: user pressed "hang up"');

                switch (instance.getState()) {
                    case State.GOTCALL:
                    case State.GOTCALLWAITING:
                        instance.setState(State.DENYINGCALL);
                        break;

                    case State.CALLED:
                    case State.CALLING:
                    case State.ANSWERED:
                    case State.ACCEPTINGCALL:
                    case State.DENYINGCALL:
                    case State.GOTANSWER:
                    case State.CONNECTED:
                        instance._sendHangUpMsg();
                        instance.setState(State.STOPPING);
                        break;

                    case State.CALLINGWAITING:
                        instance.setState(State.STOPPED);
                        break;

                    case State.STOPPING:
                    case State.STOPPED:
                    case State.DELETING:
                    case State.DELETED:
                        break;
                }
            },

            setState: function(state) {
                var instance = this;

                if (typeof instance.getState() === 'undefined') {
                    Liferay.Chat.WebRtcManager.debugMsg('{' + state + '}');
                }
                else {
                    Liferay.Chat.WebRtcManager.debugMsg('{' + instance.getState() + ' -> ' + state + '}');
                }

                instance._currentState = state;

                instance._cb.onStateChange(state);
                Liferay.Chat.WebRtcManager.onConversationStateChange();
                instance._onStateChange();
            },

            _addIceCandidate: function(ice) {
                var instance = this;

                if (!instance._acceptIceCandidates) {
                    Liferay.Chat.WebRtcManager.doError('cannot add following ICE candidate to peer connection:');
                    Liferay.Chat.WebRtcManager.debugObj(ice);

                    return;
                }

                Liferay.Chat.WebRtcManager.debugMsg('adding remote ICE candidate to peer connection');
                instance._pc.addIceCandidate(ice);
            },

            _configurePC: function() {
                var instance = this;

                var RTCPeerConnection = Liferay.Chat.WebRtcManager.getWebRtcAdapter().RTCPeerConnection;
                instance._pc = new RTCPeerConnection({
                    iceServers: instance._iceServers
                }, Liferay.Chat.WebRtcManager.getWebRtcAdapter().peerConnectionConstraints);

                instance._pc.addStream(Liferay.Chat.WebRtcManager.getLocalStream());

                instance._pc.onicecandidate =
                    function(e) {
                        instance._onIceCandidate(e);
                    };

                instance._pc.onaddstream =
                    function(e) {
                        instance._onAddStream(e);
                    };
            },

            _doWebRtcCall: function() {
                var instance = this;

                if (!instance._isWebRtcStarted()) {
                    return;
                }

                if (!instance._isCaller) {
                    Liferay.Chat.WebRtcManager.doError('cannot call with WebRTC because we\'re not the original caller');

                    return;
                }

                instance._webRtcOffer();
            },

            _flushIceCandidatesBuffer: function() {
                var instance = this;

                if (!instance._isWebRtcStarted()) {
                    return;
                }

                Liferay.Chat.WebRtcManager.debugMsg('flushing ICE candidates buffer (length=' + instance._iceCandidatesBuffer.length + ')');

                for (var i in instance._iceCandidatesBuffer) {
                    instance._addIceCandidate(instance._iceCandidatesBuffer[i]);
                }

                instance._iceCandidatesBuffer.length = 0;
            },

            _isUserAvailableForChatVideo: function() {
                var instance = this;
                var destUserId = instance.getToUserId();

                return Liferay.Chat.WebRtcManager.isUserAvailableForChatVideo(destUserId);
            },

            _isWebRtcStarted: function() {
                var instance = this;

                return instance.getState() === State.ANSWERED ||
                    instance.getState() === State.GOTANSWER ||
                    instance.getState() === State.CONNECTED;
            },

            _onAddStream: function(e) {
                var instance = this;

                if (!instance._isWebRtcStarted()) {
                    return;
                }

                if (!e) {
                    return;
                }

                Liferay.Chat.WebRtcManager.debugMsg('added remote stream');

                instance._setRemoteVideoStream(e.stream);
                instance.setState(State.CONNECTED);
            },

            _onIceCandidate: function(e) {
                var instance = this;

                if (!instance._pc || !e || !e.candidate) {
                    return;
                }

                Liferay.Chat.WebRtcManager.debugMsg('new local ICE candidate ready');
                instance._sendIceMsg(e.candidate);
            },

            _onLostConnection: function(reason) {
                var instance = this;

                Liferay.Chat.WebRtcManager.debugMsg('event: lost logical connection with remote peer');
                
                if (instance._pc) {
                    instance._pc.close();
                    instance._pc = null;
                }

                if (reason === 'hangUp') {
                    instance.onError(Error.HANGUP);
                }
                else if (reason === 'reset') {
                    instance.onError(Error.REMOTEPEERRESET);   
                }

                switch (instance.getState()) {
                    case Liferay.Chat.WebRtcConversation.State.DELETING:
                        instance.setState(State.DELETED);
                        break;

                    default:
                        instance.setState(State.STOPPED);
                        break;
                }
            },

            _onStateAcceptingCall: function() {
                var instance = this;

                instance._sendAnswerMsg(true);
                instance.setState(State.ANSWERED);
            },

            _onStateCalled: function() {
                var instance = this;

                instance._isCaller = true;
                instance._setLocalVideoStream();
            },

            _onStateCalling: function() {
                var instance = this;

                instance._sendCallMsg();
                instance._isCaller = true;
                instance.setState(State.CALLED);
            },

            _onStateChange: function() {
                var instance = this;

                switch (instance.getState()) {
                    case State.STOPPED:
                        instance._onStateStopped();
                        break;

                    case State.DELETED:
                        instance._onStateDeleted();
                        break;

                    case State.CALLING:
                        instance._onStateCalling();
                        break;

                    case State.CALLED:
                        instance._onStateCalled();
                        break;

                    case State.GOTCALL:
                        instance._onStateGotCall();
                        break;

                    case State.ACCEPTINGCALL:
                        instance._onStateAcceptingCall();
                        break;

                    case State.DENYINGCALL:
                        instance._onStateDenyingCall();
                        break;

                    case State.GOTANSWER:
                        instance._onStateGotAnswer();
                        break;

                    case State.STOPPING:
                        instance._onStateStopping();
                        break;

                    case State.DELETING:
                        instance._onStateDeleting();
                        break;
                }
            },

            _onStateDeleted: function() {
                var instance = this;
            },

            _onStateDeleting: function() {
                var instance = this;
            },

            _onStateDenyingCall: function() {
                var instance = this;

                instance._sendAnswerMsg(false);
                instance.setState(State.STOPPED);
            },

            _onStateGotAnswer: function() {
                var instance = this;

                instance._doWebRtcCall();
            },

            _onStateGotCall: function() {
                var instance = this;

                instance._isCaller = false;

                instance._setLocalVideoStream();
            },

            _onStateStopped: function() {
                var instance = this;

                instance._resetWebRtcState();
            },

            _onStateStopping: function() {
                var instance = this;
            },

            _resetWebRtcState: function() {
                var instance = this;

                instance._pc = null;
                instance._isCaller = false;
                instance._iceCandidatesBuffer = [];
                instance._acceptIceCandidates = false;
            },

            _sendAnswerMsg: function(accept) {
                var instance = this;

                var userId = instance.getToUserId();
                var msg = {
                    destinationUserId: userId,
                    answer: accept
                };

                Liferay.Chat.WebRtcManager.sendMsg('answer', msg);
            },

            _sendCallMsg: function() {
                var instance = this;

                var userId = instance.getToUserId();
                var msg = {
                    destinationUserId: userId
                };

                Liferay.Chat.WebRtcManager.sendMsg('call', msg);
            },

            _sendHangUpMsg: function() {
                var instance = this;

                var userId = instance.getToUserId();
                var msg = {
                    destinationUserId: userId
                };

                Liferay.Chat.WebRtcManager.sendMsg('hangUp', msg);
            },

            _sendIceMsg: function(ice) {
                var instance = this;

                var jsonIce = JSON.stringify(ice);
                var msg = {
                    destinationUserId: instance.getToUserId(),
                    candidate: jsonIce
                };

                Liferay.Chat.WebRtcManager.sendMsg('ice', msg);
            },

            _sendSdpMsg: function(desc) {
                var instance = this;

                var jsonDesc = JSON.stringify(desc);
                var msg = {
                    destinationUserId: instance.getToUserId(),
                    description: jsonDesc
                };

                Liferay.Chat.WebRtcManager.sendMsg('sdp', msg);
            },

            _setLocalVideoStream: function() {
                var instance = this;
                var localStream = Liferay.Chat.WebRtcManager.getLocalStream();

                if (localStream) {
                    instance._setVideoStream(instance._localVideoDomElem, localStream);
                }
            },

            _setRemoteVideoStream: function(stream) {
                var instance = this;

                instance._setVideoStream(instance._remoteVideoDomElem, stream);
            },

            _setVideoStream: function(elem, stream) {
                var instance = this;

                Liferay.Chat.WebRtcManager.getWebRtcAdapter().attachMediaStream(elem, stream);
            },

            _webRtcAnswer: function(desc) {
                var instance = this;

                instance._configurePC();

                if (!instance._pc) {
                    Liferay.Chat.WebRtcManager.doError('when trying to create WebRTC answer: no peer connection available');

                    return;
                }

                var RTCSessionDescription = Liferay.Chat.WebRtcManager.getWebRtcAdapter().RTCSessionDescription;
                var remoteDesc = new RTCSessionDescription(desc);
                instance._pc.setRemoteDescription(remoteDesc);
                instance._pc.createAnswer(
                    function(desc) {
                        desc.sdp = Liferay.Chat.WebRtcAdapter.preferOpus(desc.sdp);
                        Liferay.Chat.WebRtcManager.debugMsg('generated SDP answer');
                        instance._pc.setLocalDescription(desc);
                        instance._sendSdpMsg(desc);
                        instance._acceptIceCandidates = true;
                        instance._flushIceCandidatesBuffer();
                    },
                    function(error) {
                        Liferay.Chat.WebRtcManager.doError(error.message);
                    }, {
                        mandatory: {
                            OfferToReceiveAudio: true,
                            OfferToReceiveVideo: true
                        }
                    });
            },

            _webRtcCompleteOffer: function(desc) {
                var instance = this;

                if (!instance._pc) {
                    Liferay.Chat.WebRtcManager.doError('when trying to complete WebRTC offer: no peer connection available');

                    return;
                }

                instance._flushIceCandidatesBuffer();

                var RTCSessionDescription = Liferay.Chat.WebRtcManager.getWebRtcAdapter().RTCSessionDescription;
                instance._pc.setRemoteDescription(new RTCSessionDescription(desc));
            },

            _webRtcOffer: function() {
                var instance = this;

                instance._configurePC();

                if (!instance._pc) {
                    Liferay.Chat.WebRtcManager.doError('when trying to create WebRTC offer: no peer connection available');

                    return;
                }

                instance._pc.createOffer(
                    function(desc) {
                        desc.sdp = Liferay.Chat.WebRtcAdapter.preferOpus(desc.sdp);
                        Liferay.Chat.WebRtcManager.debugMsg('generated SDP offer');
                        instance._pc.setLocalDescription(desc);
                        instance._sendSdpMsg(desc);
                        instance._acceptIceCandidates = true;
                    },
                    function(error) {
                        Liferay.Chat.WebRtcManager.doError(error.message);
                    }, {
                        mandatory: {
                            OfferToReceiveAudio: true,
                            OfferToReceiveVideo: true
                        },
                        optional: []
                    });
            }
        };
    });
