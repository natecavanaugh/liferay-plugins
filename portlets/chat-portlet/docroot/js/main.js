AUI().use(
	'anim-color',
	'anim-easing',
	'aui-base',
	'aui-live-search',
	'liferay-poller',
	'liferay-store',
	'stylesheet',
	'swfobject',
	function(A) {
		var Lang = A.Lang;

		var now = Lang.now;

		var DOC = A.config.doc;

		var NOTIFICATIONS = A.config.win.webkitNotifications;

		var NOTIFICATIONS_ALLOWED = 0;
		var NOTIFICATIONS_NOT_ALLOWED = 1;

		var STR_NEW_MESSAGE = Liferay.Language.get('new-message-from-x');

		Liferay.namespace('Chat');

		A.one(DOC.documentElement).toggleClass('desktop-notifications', !!NOTIFICATIONS);

		Liferay.Chat.Util = {
			getDefaultColor: function() {
				var instance = this;

				var defaultColor = instance._defaultColor;

				if (!defaultColor) {
					var bgColorNode = A.one('#chatBar .panel-trigger');

					if (bgColorNode) {
						defaultColor = bgColorNode.getStyle('backgroundColor');

						while (defaultColor == 'transparent') {
							defaultColor = bgColorNode.getStyle('backgroundColor');

							bgColorNode = bgColorNode.ancestor();
						}
					}

					instance._defaultColor = defaultColor;
				}

				return defaultColor;
			},

			getWaitingColor: function() {
				var instance = this;

				var waitingColor = instance._waitingColor;

				if (!waitingColor) {
					var waitingColorNode = A.Node.create('<span class="aui-helper-hidden message-waiting" />').appendTo(DOC.body);

					waitingColor = waitingColorNode.getStyle('backgroundColor');

					waitingColorNode.remove();

					instance._waitingColor = waitingColor;
				}

				return waitingColor;
			},

			formatTime: function(time) {
				var instance = this;

				time = Number(time);
				time = new Date(time);

				var meridian = 'am';
				var hour = time.getHours();
				var minute = time.getMinutes();

				if (hour >= 11) {
					meridian = 'pm';
				}

				if (hour > 12) {
					hour -= 12;
				}

				if (hour === 0) {
					hour += 12;
				}

				if (minute < 10) {
					minute = '0' + minute;
				}

				return hour + ':' + minute + ' ' + meridian;
			},

			getCurrentTimestamp: function() {
				var instance = this;

				return now() - instance._getOffset();
			},

			getUserImagePath: function(userId) {
				var instance = this;

				return themeDisplay.getPathImage() + '/user_portrait?img_id=' + userId;
			},

			_getOffset: function() {
				var instance = this;

				var offset = instance._offset;

				if (Lang.isUndefined(offset)) {
					var currentChatServerTime = A.one('#currentChatServerTime').val() || 0;

					offset = now() - currentChatServerTime;

					instance._offset = offset;
				}

				return offset;
			},

			TIMESTAMP_24: (24 * 60 * 60 * 1000)
		};

		Liferay.Chat.Panel = function(options) {
			var instance = this;

			instance._chatProperties = {};
			instance._eventsSuspended = false;

			instance._panelId = options.panelId;
			instance._panelTitle = options.panelTitle;
			instance._panelIcon = options.panelIcon;

			var container = options.container;

			var panelTitle = instance._panelTitle;

			var panelHTML = instance._setPanelHTML(options.panelHTML);

			if (!container) {
				instance._tabsContainer = Liferay.Chat.Manager.getContainer();
			}
			else {
				instance._tabsContainer = A.one(container);
			}

			instance.set('panelHTML', panelHTML);

			instance._createPanel(options.fromMarkup);

			if (panelTitle) {
				instance.setTitle(panelTitle);
			}

			instance._popupTrigger.unselectable();
		};

		Liferay.Chat.Panel.prototype = {
			close: function() {
				var instance = this;

				instance._panel.hide();

				instance.minimize();

				instance.fire('close');
			},

			getPanel: function() {
				var instance = this;

				return instance._panel;
			},

			getTitle: function() {
				var instance = this;

				return instance._popupTitle.text();
			},

			hide: function() {
				var instance = this;

				instance._hidePanel();

				instance.fire('hide');
			},

			minimize: function() {
				var instance = this;

				instance._hidePanel();
			},

			restore: function() {
				var instance = this;

				instance._showPanel();
			},

			resumeEvents: function() {
				var instance = this;

				instance._eventsSuspended = false;
			},

			setTitle: function(value) {
				var instance = this;

				instance._popupTrigger.one('.trigger-name').text(value);
				instance._popupTitle.text(value);
			},

			show: function() {
				var instance = this;

				instance._unregisterPanelMinimized();

				instance._showPanel();

				instance.fire('show');
			},

			suspendEvents: function() {
				var instance = this;

				instance._eventsSuspended = true;
			},

			toggle: function() {
				var instance = this;

				if (instance.get('selected')) {
					instance.hide();
				}
				else {
					instance.show();
				}
			},

			_createPanel: function(fromMarkup) {
				var instance = this;

				var panel;

				if (fromMarkup) {
					panel = A.one(fromMarkup);
				}
				else {
					panel = A.Node.create(instance.get('panelHTML'));
				}

				instance._popup = panel.one('.chat-panel');
				instance._popupTitle = panel.one('.panel-title');
				instance._popupTrigger = panel.one('.panel-trigger');
				instance._textBox = panel.one('textarea');

				instance._popupTrigger.on('click', instance.toggle, instance);

				panel.all('.panel-button').on(
					'click',
					function(event) {
						var target = event.currentTarget;

						if (target.hasClass('minimize')) {
							instance.hide();
						}
						else if (target.hasClass('close')) {
							instance.close();
						}
					}
				);

				instance._panel = panel;

				instance._tabsContainer.append(panel);
			},

			_hidePanel: function() {
				var instance = this;

				var panel = instance._panel;

				if (!panel.hasClass('aui-helper-hidden')) {
					instance._registerPanelMinimized();
				}

				instance.set('selected', false);

				panel.removeClass('selected');
			},

			_registerPanelMinimized: function() {
				var instance = this;

				var panelId = instance._panel.attr('panelid');

				if (panelId) {
					var id = parseInt(panelId, 10);

					Liferay.Store(
						'minimized-panels',
						function(panels) {
							if (!(panels && Lang.isArray(panels))) {
								panels = [];
							}

							if (panels.indexOf(id) < 0) {
								panels.push(id);

								Liferay.Store('minimized-panels', panels);
							}
						}
					);
				}
			},

			_showPanel: function() {
				var instance = this;

				var panel = instance._panel;

				panel.show();

				instance.set('selected', true);

				panel.addClass('selected');
			},

			_setPanelHTML: function(html) {
				var instance = this;

				if (!html) {
					html = '<li class="panel">' +
						'<div class="panel-trigger"><span class="trigger-name"></span></div>' +
						'<div class="chat-panel">' +
							'<div class="panel-window">' +
								'<div class="panel-button minimize"></div>' +
								'<div class="panel-title"></div>' +
								'<div class="search-buddies"><input class="search-buddies-field" type="text" /></div>' +
								'<div class="panel-content"></div>' +
							'</div>' +
						'</div>' +
					'</li>';
				}

				return html;
			},

			_unregisterPanelMinimized: function() {
				var instance = this;

				var panelId = instance._panel.attr('panelid');

				if (panelId) {
					var id = parseInt(panelId, 10);

					Liferay.Store(
						'minimized-panels',
						function(panels) {
							if (panels && (panels.indexOf(id) > -1)) {
								A.Array.removeItem(panels, id);

								Liferay.Store('minimized-panels', panels);
							}
						}
					);
				}
			}
		};

		A.augment(Liferay.Chat.Panel, A.Attribute);

		Liferay.Chat.Conversation = function(options) {
			var instance = this;

			Liferay.Chat.Conversation.superclass.constructor.call(instance, options);

			instance._lastMessageTime = 0;
			instance._lastTypedTime = 0;
			instance._typingDelay = 5000;
			instance._unreadMessages = 0;

			instance._originalPageTitle = DOC.title;

			var statusMessage = options.statusMessage;

			instance._chatInput = instance._panel.one('.panel-input textarea');
			instance._chatOutput = instance._panel.one('.panel-output');
			instance._statusMessage = instance._panel.one('.panel-profile');

			instance._stopTypingTask = A.debounce(instance.setTyping, instance._typingDelay, instance, false);

			instance._heightMonitor = A.Node.create('<pre class="chat-height-monitor" />');

			instance._heightMonitor.appendTo(DOC.body);

			instance._unreadMessagesContainer = instance._panel.one('.unread') || A.Node.create('<div class="unread" />');

			instance._popupTrigger.append(instance._unreadMessagesContainer);

			if (statusMessage) {
				instance._statusMessage.text(statusMessage);
			}

			instance._chatInput.on(['focus', 'keyup'], instance._keystroke, instance);
		};

		A.extend(
			Liferay.Chat.Conversation,
			Liferay.Chat.Panel,
			{
				send: function(options) {
					var instance = this;

					Liferay.Chat.Manager.send(options);
				},

				setAsRead: function() {
					var instance = this;

					instance.setWaiting(false);

					instance._unreadMessagesContainer.hide();

					instance._unreadMessages = 0;

					instance.set('lastReadTime', Liferay.Chat.Util.getCurrentTimestamp());

					DOC.title = instance._originalPageTitle;
				},

				setAsUnread: function() {
					var instance = this;

					if (!instance.get('selected')) {
						var unreadMessages = instance._unreadMessages;
						var unreadMessagesContainer = instance._unreadMessagesContainer;

						if (unreadMessages > 1) {
							unreadMessagesContainer.text(unreadMessages);

							unreadMessagesContainer.show();
						}
						else {
							Liferay.Chat.Manager.triggerSound();

							instance.setWaiting(true);

							unreadMessagesContainer.hide();
						}

						DOC.title = instance._originalPageTitle + ' - Unread messages (' + unreadMessages + ')';
					}
				},

				setTyping: function(isTyping) {
					var instance = this;

					var panel = instance._panel;

					if (isTyping) {
						panel.addClass('typing');
					}
					else {
						panel.removeClass('typing');
					}
				},

				setWaiting: function(isWaiting) {
					var instance = this;

					var panel = instance._panel;
					var waitingAnim = instance._waitingAnim;

					if (isWaiting) {
						if (!waitingAnim) {
							var ChatUtil = Liferay.Chat.Util;

							waitingAnim = new A.Anim(
								{
									direction: 'alternate',
									duration: 0.65,
									easing: 'easeBoth',
									from: {
										backgroundColor: ChatUtil.getDefaultColor()
									},
									iterations: 'infinite',
									node: panel,
									to: {
										backgroundColor: ChatUtil.getWaitingColor()
									}
								}
							);

							instance._waitingAnim = waitingAnim;
						}

						waitingAnim.run();
					}
					else {
						if (waitingAnim) {
							waitingAnim.stop();
						}

						panel.setStyle('backgroundColor', '');
					}
				},

				show: function() {
					var instance = this;

					Liferay.Chat.Panel.prototype.show.call(instance);

					instance.setAsRead();

					var outputEl = instance._chatOutput.getDOM();

					outputEl.scrollTop = outputEl.scrollHeight;
				},

				update: function(entry) {
					var instance = this;

					var content = entry.content;
					var statusMessage = entry.statusMessage;

					if (entry.incoming && !entry.cache) {
						if (content.length) {
							if (!instance.get('selected')) {
								var lastRead = instance.get('lastReadTime') || 0;

								if (lastRead < entry.createDate) {
									instance._unreadMessages++;
								}

								Liferay.Chat.Manager.notify(
									Liferay.Chat.Util.getUserImagePath(instance._panelIcon),
									Lang.sub(STR_NEW_MESSAGE, [instance._panelTitle]),
									content.replace(/\n/g, ' ')
								);
							}

							instance.setAsUnread();
						}
						else {
							instance.setTyping(true);

							instance._stopTypingTask();
						}
					}

					if (content.length) {
						instance._updateMessageWindow(entry);

						instance.setTyping(false);

						instance.getPanel().show();
					}

					if (statusMessage) {
						instance._statusMessage.text(statusMessage);
					}
				},

				updateStatus: function(status) {
					var instance = this;

					instance._statusMessage.text(status);
				},

				_autoSize: function() {
					var instance = this;

					var heightMonitorEl = instance._heightMonitor.getDOM();

					if (!instance._chatInputWidth) {
						instance._chatInputWidth = instance._chatInput.get('offsetWidth');

						instance._heightMonitor.setStyle('width', instance._chatInputWidth);
					}

					var chatInputEl = instance._chatInput.getDOM();

					var content = Liferay.Util.escapeHTML(chatInputEl.value);

					var textNode = DOC.createTextNode(content);

					heightMonitorEl.innerHTML = '';

					heightMonitorEl.appendChild(textNode);

					content = heightMonitorEl.innerHTML;

					if (!content.length) {
						content = '&nbsp;&nbsp;';
					}

					if (A.UA.ie) {
						content = content.replace(/\n/g, '<br />');
					}

					heightMonitorEl.innerHTML = content;

					var height = Math.max(heightMonitorEl.offsetHeight, 14);

					height = Math.min(height, 64);

					chatInputEl.style.overflowY = 'auto';

					if (height != instance._lastHeight) {
						instance._lastHeight = height;

						chatInputEl.style.height = height + 'px';
						chatInputEl.style.overflowY = (height == 64) ? 'scroll' : 'hidden';

						chatInputEl.parentNode.style.height = (height + 5) + 'px';
					}
				},

				_keystroke: function(event) {
					var instance = this;

					var chatInputEl = instance._chatInput.getDOM();
					var userId = instance._panelId;

					var content = chatInputEl.value.replace(/\n|\r/gim, '');

					if (event.type == 'keyup') {
						if (instance.get('typedTo') == userId) {
							var currentTime = Liferay.Chat.Util.getCurrentTimestamp();

							if (currentTime - instance._lastTypedTime > instance._typingDelay) {
								instance.send(
									{
										content: '',
										toUserId: userId
									}
								);

								instance._lastTypedTime = currentTime;
							}
						}

						instance.set('typedTo', userId);
					}

					if (event.keyCode == 13 && !event.shiftKey && content.length) {
						instance._sendChat(chatInputEl.value);

						chatInputEl.value = '';
					}

					instance._autoSize();
				},

				_sendChat: function(content) {
					var instance = this;

					instance.send(
						{
							content: content,
							toUserId: instance._panelId
						}
					);

					instance._updateMessageWindow(
						{
							content: Liferay.Util.escapeHTML(content),
							createDate: Liferay.Chat.Util.getCurrentTimestamp()
						}
					);
				},

				_setPanelHTML: function() {
					var instance = this;

					var panelId = instance._panelId;

					var userImagePath = Liferay.Chat.Util.getUserImagePath(instance._panelIcon);

					var html = '<li class="user user_' + panelId + '" panelId="' + panelId + '">' +
									'<div class="panel-trigger">' +
										'<span class="trigger-name"></span>' +
										'<div class="typing-status"></div>' +
									'</div>' +
									'<div class="chat-panel">' +
										'<div class="panel-window">' +
											'<div class="panel-button minimize"></div>' +
											'<div class="panel-button close"></div>' +
											'<img alt="" class="panel-icon" src="' + userImagePath + '" />' +
											'<div class="panel-title">' + instance._panelTitle + '</div>' +
											'<div class="panel-profile">...</div>' +
											'<div class="panel-output"></div>' +
											'<div class="panel-input">' +
												'<textarea></textarea>' +
											'</div>' +
										'</div>' +
									'</div>' +
								'</li>';

					return html;
				},

				_updateMessageWindow: function(entry) {
					var instance = this;

					var output = instance._chatOutput;
					var cssClass = 'outgoing';

					var content = entry.content;
					var userName = themeDisplay.getUserName();

					if (entry.incoming) {
						cssClass = 'incoming';

						userName = instance._panelTitle;
					}

					content = content.replace(/\n/g, '<br />');

					var message = '<p class="blurb ' + cssClass + '">' +
									'<b class="name">' + userName + '</b>' +
									'<i class="date">' + Liferay.Chat.Util.formatTime(entry.createDate) + '</i>' +
									'<span class="text">' + content + '</span>' +
								'</p>';

					var outputEl = output.getDOM();

					outputEl.innerHTML += message;

					instance._lastMessageTime = entry.createDate;

					setTimeout(
						function() {
							outputEl.scrollTop = outputEl.scrollHeight - outputEl.clientHeight;
						},
						1
					);
				}
			}
		);

		Liferay.Chat.Manager = {
			init: function() {
				var instance = this;

				instance._notificationTimeout = 8000;
				instance._initialRequest = true;

				instance._activePanelId = A.one('#activePanelId').val() || '';
				instance._chatContainer = A.one('#chatBar');
				instance._portletId = A.one('#chatPortletId').val();

				instance._myStatus = instance._chatContainer.one('.status-message');
				instance._soundContainer = instance._chatContainer.one('.chat-sound');
				instance._tabsContainer = instance._chatContainer.one('.chat-tabs');

				instance._sendTask = A.debounce(instance.send, 100, instance);

				instance._sound = new SWFObject('/chat-portlet/alert.swf', 'alertsound', '0', '0', '8');

				instance._updatePresenceTask = A.debounce(instance._updatePresence, 30000, instance);

				instance._updatePresenceTask.delay(0);

				Liferay.Poller.addListener(instance._portletId, instance._onPollerUpdate, instance);

				Liferay.bind(
					'sessionExpired',
					function(event) {
						Liferay.Poller.removeListener(instance._portletId);

						instance._chatContainer.hide();
					}
				);

				instance._createBuddyListPanel();

				instance._createSettingsPanel();
			},

			close: function(panelName) {
				var instance = this;

				if ((panelName != 'buddylist') && (panelName != 'settings')) {
					var panel = instance._panels[panelName];

					if (panel) {
						panel.close();
					}
				}
			},

			getContainer: function() {
				var instance = this;

				return instance._tabsContainer;
			},

			notify: function(iconUrl, title, body) {
				var instance = this;

				if (NOTIFICATIONS && NOTIFICATIONS.checkPermission() === NOTIFICATIONS_ALLOWED) {
					var notification = NOTIFICATIONS.createNotification(iconUrl, title, body);

					notification.show();

					setTimeout(
						function() {
							notification.cancel();
						},
						instance._notificationTimeout
					);
				}
			},

			registerBuddyService: function(options) {
				var instance = this;

				var name = options.name;

				instance._buddyServices[name] = options.fn;

				var styleSheet = instance._styleSheet;

				if (!styleSheet) {
					styleSheet = new A.StyleSheet();

					instance._styleSheet = styleSheet;
				}

				styleSheet.set(
					'.chat-bar .buddy-services .' + name,
					{
						backgroundImage: 'url("' + options.icon + '")'
					}
				);
			},

			send: function(options, id) {
				var instance = this;

				if (!options.updatePresence) {
					instance._updatePresenceTask.cancel();
				}

				Liferay.Poller.submitRequest(instance._portletId, options, id);

				instance._updatePresenceTask();
			},

			show: function(panelName) {
				var instance = this;

				var panel = instance._panels[panelName];

				if (panel) {
					panel.show();
				}
			},

			toggle: function(panelName) {
				var instance = this;

				var panel = instance._panels[panelName];

				if (panel) {
					panel.toggle();
				}
			},

			triggerSound: function() {
				var instance = this;

				if (instance._playSound) {
					instance._sound.write(instance._soundContainer.getDOM());
				}
			},

			_addChat: function(chatName, chat) {
				var instance = this;

				instance._chatSessions[chatName] = chat;
			},

			_addPanel: function(panelName, panel) {
				var instance = this;

				instance._panels[panelName] = panel;

				panel.on(['close', 'hide'], instance._onPanelHide, instance);
				panel.on('show', instance._onPanelShow, instance);
			},

			_createBuddyListPanel: function() {
				var instance = this;

				var buddyListPanel = new Liferay.Chat.Panel(
					{
						fromMarkup: '.chat-tabs > .buddy-list',
						panelId: 'buddylist'
					}
				);

				instance._addPanel('buddylist', buddyListPanel);

				var buddyListNode = buddyListPanel.getPanel();

				var buddyList = buddyListNode.one('.online-users');
				var searchBuddiesField = buddyListNode.one('.search-buddies-field');

				var liveSearch = new A.LiveSearch(
					{
						data: function(node) {
							return node.one('.name').text();
						},
						input: searchBuddiesField,
						nodes: '#chatBar .buddy-list .online-users li'
					}
				);

				searchBuddiesField.on('focus', liveSearch.refreshIndex, liveSearch);

				buddyListPanel.on(
					'show',
					function(event) {
						if (searchBuddiesField.val()) {
							searchBuddiesField.selectText();
						}
					}
				);

				if (buddyList) {
					buddyList.delegate(
						'click',
						function(event) {
							var target = event.currentTarget;

							if (target.ancestor('.buddy-services')) {
								event.stopPropagation();

								var serviceName = target.getAttribute('class');

								instance._buddyServices[serviceName](target.ancestor('li.user'));
							}
							else {
								instance._createChatFromUser(target);
							}
						},
						'li, .buddy-services div'
					);
				}

				instance._searchBuddiesField = searchBuddiesField;

				instance._liveSearch = liveSearch;

				instance._onlineBuddies = buddyList;
			},

			_createChatFromUser: function(user) {
				var instance = this;

				var userId = user;

				var userNode = A.one(user);

				if (userNode) {
					userId = userNode.getAttribute('userId');
				}

				var buddy = instance._buddies[userId];

				if (buddy) {
					var chat = instance._chatSessions[userId];

					if (!chat) {
						chat = instance._createChatSession(buddy);
					}

					chat.show();
				}
			},

			_createChatSession: function(options) {
				var instance = this;

				var userId = options.userId;

				var chat = new Liferay.Chat.Conversation(
					{
						panelIcon: options.portraitId,
						panelId: options.userId,
						panelTitle: options.fullName,
						statusMessage: options.statusMessage
					}
				);

				instance._addChat(userId, chat);
				instance._addPanel(userId, chat);

				var entryCache = instance._entryCache;

				if (entryCache && entryCache[userId]) {
					var entryCacheUserId = entryCache[userId];

					var entryIds = instance._entryIds.join('|');

					for (var i in entryCacheUserId) {
						var entry = entryCacheUserId[i];

						var fromUserId = entry.fromUserId;

						var entryProcessed = (entryIds.indexOf('|' + entry.entryId) > -1);

						if (!entryProcessed && entry.flag || (themeDisplay.getUserId() == fromUserId)) {
							chat.update(
								{
									cache: true,
									content: entry.content,
									createDate: entry.createDate,
									incoming: (fromUserId == userId)
								}
							);
						}
					}
				}

				if (options.open) {
					chat.show();
				}

				return chat;
			},

			_createSettingsPanel: function() {
				var instance = this;

				var settings = new Liferay.Chat.Panel(
					{
						fromMarkup: '.chat-tabs > .chat-settings',
						panelId: 'settings'
					}
				);

				instance._addPanel('settings', settings);

				var settingsPanel = settings.getPanel();

				var saveSettings = settingsPanel.one('#saveSettings');

				instance._onlineObj = settingsPanel.one('#onlineStatus');
				instance._playSoundObj = settingsPanel.one('#playSound');
				instance._showNotificationsObj = settingsPanel.one('#showNotifications');
				instance._statusMessageObj = settingsPanel.one('#statusMessage');

				instance._online = instance._onlineObj.get('checked') ? 1 : 0;
				instance._playSound = instance._playSoundObj.get('checked') ? 1 : 0;
				instance._statusMessage = instance._statusMessageObj.val() || '';

				if (NOTIFICATIONS) {
					var showNotificationsObj = instance._showNotificationsObj;

					var notifyPermission = NOTIFICATIONS.checkPermission();

					var attrs = {
						checked: (notifyPermission === NOTIFICATIONS_ALLOWED)
					};

					if (notifyPermission === NOTIFICATIONS_NOT_ALLOWED) {
						attrs.disabled = false;
					}

					showNotificationsObj.attr(attrs);
				}

				saveSettings.on('click', instance._updateSettings, instance);
			},

			_getSettings: function() {
				var instance = this;

				return {
					activePanelId: instance._activePanelId,
					online: instance._online,
					playSound: instance._playSound,
					statusMessage: instance._statusMessage
				};
			},

			_loadCache: function(entries) {
				var instance = this;

				if (!instance._entryCache) {
					instance._entryCache = {};
				}

				if (!instance._entryIds) {
					instance._entryIds = [0];
				}

				var entryCache = instance._entryCache;
				var entryIds = instance._entryIds.join('|');

				var currentUserId = themeDisplay.getUserId();

				for (var i = 0; i < entries.length; i++) {
					var entry = entries[i];

					var entryId = entry.entryId;
					var entryFromUserId = entry.fromUserId;

					var userId = (entry.toUserId == currentUserId) ? entryFromUserId : entry.toUserId;

					if (!entryCache[userId]) {
						entryCache[userId] = {};
					}

					var userEntryCache = entryCache[userId];

					var entryProcessed = (entryIds.indexOf('|' + entryId) > -1);

					if (!entryProcessed) {
						userEntryCache[entryId] = entry;

						instance._entryIds.push(entryId);

						if (entryFromUserId == currentUserId) {
							entry.flag = 1;
						}
					}
				}
			},

			_onPanelHide: function(event) {
				var instance = this;

				instance._activePanelId = '';

				instance._saveSettings();
			},

			_onPanelShow: function(event) {
				var instance = this;

				var panel = event.target;

				for (var i in instance._panels) {
					var currentPanel = instance._panels[i];

					if (currentPanel != panel) {
						currentPanel.hide();
					}
				}

				if (panel instanceof Liferay.Chat.Conversation) {
					panel._chatInput.focus();
				}

				instance._activePanelId = panel._panelId;

				instance._saveSettings();
			},

			_onPollerUpdate: function(response, chunkId) {
				var instance = this;

				instance._updateBuddies(response.buddies);

				var entries = response.entries;

				if (instance._initialRequest) {
					instance._loadCache(entries);

					var activePanelId = instance._activePanelId;

					if (activePanelId.length) {
						instance._createChatFromUser(activePanelId);
					}

					instance._chatContainer.one('.chat-tabs > .buddy-list').removeClass('loading');
				}

				instance._updateConversations(entries);
			},

			_saveSettings: function() {
				var instance = this;

				instance._sendTask(instance._getSettings());
			},

			_updateBuddies: function(buddies) {
				var instance = this;

				var currentBuddies = instance._buddies;
				var currentChats = instance._chatSessions;
				var searchBuddiesField = instance._searchBuddiesField;

				var buffer = [''];

				var search = searchBuddiesField.val().toLowerCase();

				var buddyList = buddies || [];

				var numBuddies = buddyList.length;

				instance._onlineBuddiesCount = numBuddies;

				for (var i = 0; i < numBuddies; i++) {
					var buddy = buddyList[i];

					var statusMessage = buddy.statusMessage;
					var userId = buddy.userId;

					var currentBuddy = currentBuddies[userId];
					var currentChat = currentChats[userId];

					buddy.isTyping = false;

					if (currentChat && (!currentBuddy || currentBuddy.statusMessage != statusMessage)) {
						currentChat.updateStatus(statusMessage);
					}

					currentBuddies[userId] = buddy;

					var userImagePath = Liferay.Chat.Util.getUserImagePath(buddy.portraitId);

					buffer.push(
						'<li class="user active" userId="' + buddy.userId + '">' +
							'<img alt="" src="' + userImagePath + '" />' +
							'<div class="name">' + buddy.fullName + '</div>' +
							'<div class="buddy-services">'
					);

					var serviceNames = instance._buddyServices;

					for (var serviceName in serviceNames) {
						buffer.push('<div class="' + serviceName + '"></div>');
					}

					buffer.push(
							'</div>' +
						'</li>'
					);
				}

				instance._onlineBuddies.html(buffer.join(''));

				if (
					searchBuddiesField.test(':visible') &&
					(search.length > 2 || searchBuddiesField.compareTo(DOC.activeElement))) {

					instance._liveSearch.refreshIndex();

					instance._liveSearch.fire(
						'search',
						{
							liveSearch: {}
						}
					);
				}

				instance._updateBuddyList();

				instance.fire('updateBuddies', buddies);
			},

			_updateBuddyList: function(buddy) {
				var instance = this;

				var buddyList = instance._panels.buddylist;

				var title = buddyList.getTitle();

				title = title.replace(/\(\d+\)/, '(' + instance._onlineBuddiesCount + ')');

				buddyList.setTitle(title);
			},

			_updateConversations: function(entries) {
				var instance = this;

				var entryIds = instance._entryIds.join('|');

				for (var i = 0; i < entries.length; i++) {
					var entry = entries[i];

					var entryProcessed = (entryIds.indexOf('|' + entry.entryId) > -1);

					var content = entry.content;
					var fromUserId = entry.fromUserId;

					var initialRequest = instance._initialRequest;

					if (initialRequest || !entryProcessed) {
						if (!entry.flag && content) {
							var userId = entry.toUserId;

							var incoming = false;

							if (fromUserId != themeDisplay.getUserId()) {
								userId = fromUserId;

								incoming = true;
							}

							var buddy = instance._buddies[userId];

							if (buddy) {
								var statusMessage = buddy.statusMessage;

								if ((initialRequest && content) || incoming) {
									var chat = instance._chatSessions[userId];

									if (!chat && (initialRequest || content)) {
										chat = instance._createChatSession(
											{
												fullName: buddy.fullName,
												portraitId: buddy.portraitId,
												statusMessage: statusMessage,
												userId: buddy.userId
											}
										);
									}

									if (chat) {
										chat.update(
											{
												content: content,
												createDate: entry.createDate,
												entryId: entry.entryId,
												incoming: incoming,
												statusMessage: statusMessage
											}
										);
									}

									entry.flag = 1;
								}
							}
						}
					}
				}

				instance._loadCache(entries);

				if (instance._initialRequest) {
					instance._restoreMinimizedChats();

					instance._initialRequest = false;
				}
			},

			_restoreMinimizedChats: function() {
				var instance = this;

				var buddies = instance._buddies;

				if (buddies) {
					Liferay.Store(
						'minimized-panels',
						function(panels) {
							if (Lang.isArray(panels)) {
								A.Array.map(
									panels,
									function(item, index, collection) {
										var buddy = buddies[item];

										if (buddy)	{
											var buddyUserId = buddy.userId;

											if (buddyUserId != instance._activePanelId) {
												var chat = instance._chatSessions[buddyUserId];

												if (!chat) {
													chat = instance._createChatSession(buddy);

													chat.restore();

													chat.minimize();

													var panel = chat.getPanel().one('.unread');

													if (panel) {
														panel.hide();
													}
												}
											}
										}
									}
								);
							}
						}
					);
				}
			},

			_updatePresence: function() {
				var instance = this;

				instance.send(
					{
						updatePresence: true
					}
				);
			},

			_updateSettings: function() {
				var instance = this;

				var settings = instance._panels.settings;

				var settingsPanel = settings.getPanel();

				instance._online = instance._onlineObj.get('checked') ? 1 : 0;
				instance._playSound = instance._playSoundObj.get('checked') ? 1 : 0;
				instance._statusMessage = instance._statusMessageObj.val();

				var showNotificationsObj = instance._showNotificationsObj;
				var statusMessage = instance._statusMessage;

				if (showNotificationsObj.attr('checked') && NOTIFICATIONS && NOTIFICATIONS.checkPermission() === NOTIFICATIONS_NOT_ALLOWED) {
					NOTIFICATIONS.requestPermission(
						function() {
							var allowed = NOTIFICATIONS.checkPermission() == NOTIFICATIONS_ALLOWED;

							showNotificationsObj.attr(
								{
									checked: allowed,
									disabled: allowed
								}
							);
						}
					);
				}

				instance._activePanelId = '';

				settings.hide();

				instance._saveSettings();

				settingsPanel.addClass('saved');

				if (statusMessage) {
					instance._myStatus.html('You are <strong>' + Liferay.Util.escapeHTML(statusMessage) + '</strong>');
				}

				setTimeout(
					function() {
						settingsPanel.removeClass('saved');
					}, 1500);
			},

			_buddies: {},
			_buddyServices: {},
			_chatSessions: {},
			_entries: [],
			_panels: {},
			_settings: {},
			_styleSheet: null
		};

		A.augment(Liferay.Chat.Manager, A.Attribute, true);

		Liferay.publish(
			'chatPortletReady',
			{
				defaultFn: A.bind(Liferay.Chat.Manager.init, Liferay.Chat.Manager),
				fireOnce: true
			}
		);

		A.on(
			'domready',
			function() {
				Liferay.fire('chatPortletReady');
			}
		);
	}
);