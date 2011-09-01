<%--
/**
 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<%
long microblogsEntryId = ParamUtil.getLong(request, "microblogsEntryId");

MicroblogsEntry microblogsEntry = null;

if (microblogsEntryId > 0) {
	try {
		microblogsEntry = MicroblogsEntryLocalServiceUtil.getMicroblogsEntry(microblogsEntryId);
	}
	catch (NoSuchEntryException nsee) {
	}
}

String modifiedDate = StringPool.BLANK;

long receiverUserId = 0;

String receiverUserDisplayURL = StringPool.BLANK;
String receiverUserEmail = StringPool.BLANK;
String receiverUserFullName = StringPool.BLANK;
String receiverUserPortaitURL = StringPool.BLANK;

boolean edit = ParamUtil.getBoolean(request, "edit");
boolean reply = ParamUtil.getBoolean(request, "reply");
boolean repost = ParamUtil.getBoolean(request, "repost");

if ((microblogsEntry != null) && (reply || repost)) {
	modifiedDate = dateFormatDateTime.format(microblogsEntry.getModifiedDate());

	receiverUserId = microblogsEntry.getUserId();

	receiverUserFullName = PortalUtil.getUserName(microblogsEntry.getUserId(), microblogsEntry.getUserName());

	try {
		User receiverUser = UserLocalServiceUtil.getUserById(microblogsEntry.getUserId());

		receiverUserDisplayURL = receiverUser.getDisplayURL(themeDisplay);
		receiverUserEmail = receiverUser.getEmailAddress();
		receiverUserPortaitURL = receiverUser.getPortraitURL(themeDisplay);
	}
	catch (NoSuchUserException nsue) {
	}
}

String header = "whats-happening";

String formName = "dialogFm";

boolean view = false;

if (edit) {
	header = "what-do-you-want-to-say-instead";
}
else if (repost) {
	header = "repost-this-entry-to-your-followers";
}
else if (reply) {
	header = "what-do-you-want-to-say-to-x";
}
else {
	formName = "fm";

	view = true;
}

header = LanguageUtil.format(pageContext, header, receiverUserFullName);
%>

<liferay-ui:header title="<%= header %>" />

<c:if test="<%= reply || repost %>">
	<c:choose>
		<c:when test="<%= microblogsEntry == null %>">
			<div class="portlet-msg-error">
				<liferay-ui:message key="entry-could-not-be-found" />
			</div>
		</c:when>
		<c:otherwise>
			<div class="microblogs-entry">
				<span class="thumbnail">
					<a href="<%= receiverUserDisplayURL %>"><img alt="<%= receiverUserFullName %>" src="<%= receiverUserPortaitURL %>" /></a>
				</span>

				<div class="entry-bubble">
					<div class="user-name">
						<span><%= receiverUserFullName %></span> <span class="small"><%= receiverUserEmail %></span>
					</div>

					<div class="content">
						<span><%= HtmlUtil.escape(microblogsEntry.getContent()) %><span>
					</div>

					<div class="footer">
						<span class="modified-date"><%= modifiedDate %></span>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</c:if>

<portlet:actionURL name="updateMicroblogsEntry" var="updateMicroblogsEntryURL" />

<aui:form action="<%= updateMicroblogsEntryURL %>" name="<%= formName %>">
	<aui:input name="redirect" type="hidden" value="<%= currentURL %>" />
	<aui:input name="microblogsEntryId" type="hidden" value="<%= (repost || reply) ? 0 : microblogsEntryId %>" />
	<aui:input name="receiverUserId" type="hidden" value="<%= receiverUserId %>" />
	<aui:input name="receiverMicroblogsEntryId" type="hidden" value="<%= microblogsEntryId %>" />

	<c:choose>
		<c:when test="<%= repost %>">
			<aui:input name="type" type="hidden" value="<%= MicroblogsEntryConstants.TYPE_REPOST %>" />

			<aui:input name="content" type="hidden" value="<%= microblogsEntry.getContent() %>" />
		</c:when>
		<c:when test="<%= reply %>">
			<aui:input name="type" type="hidden" value="<%= MicroblogsEntryConstants.TYPE_REPLY %>" />

			<aui:input name="receiverMicroblogsEntryId" type="hidden" value="<%= microblogsEntryId %>" />
		</c:when>
	</c:choose>

	<aui:model-context bean="<%= microblogsEntry %>" model="<%= MicroblogsEntry.class %>" />

	<c:if test="<%= !repost %>">
		<div class="highlighter">
			<div class="highlighter-content" id="<portlet:namespace />highlighterContent"> </div>
		</div>

		<div id="<portlet:namespace />autoCompleteContainer">
			<aui:input label="" name="contentInput" type="text" />
		</div>

		<aui:input label="" name="content" type="hidden" />
	</c:if>

	<aui:button-row cssClass='<%= view ? "aui-helper-hidden" : StringPool.BLANK %>'>
		<c:if test="<%= !repost && !reply %>">

			<%
			int socialRelationType = 0;

			if(microblogsEntry != null) {
				socialRelationType = microblogsEntry.getSocialRelationType();
			}
			%>

			<aui:select label="viewable-by" inlineLabel="true" name="socialRelationType">
				<aui:option label="everyone" selected="<%= socialRelationType == MicroblogsEntryConstants.TYPE_EVERYONE %>" value="<%= MicroblogsEntryConstants.TYPE_EVERYONE %>" />
				<aui:option label="friends" selected="<%= socialRelationType == SocialRelationConstants.TYPE_BI_FRIEND %>" value="<%= SocialRelationConstants.TYPE_BI_FRIEND %>" />
				<aui:option label="coworkers" selected="<%= socialRelationType == SocialRelationConstants.TYPE_BI_COWORKER %>" value="<%=SocialRelationConstants.TYPE_BI_COWORKER %>" />
				<aui:option label="followers" selected="<%= socialRelationType == SocialRelationConstants.TYPE_UNI_FOLLOWER %>" value="<%= SocialRelationConstants.TYPE_UNI_FOLLOWER %>" />
			</aui:select>
		</c:if>

		<span class="button-holder-right">
			<c:if test="<%= !repost %>">
				<span class="microblogs-countdown">150</span>
			</c:if>

			<aui:button name="submit" type="submit" value="post" />

			<c:if test="<%= !view %>">
				<aui:button onClick="Liferay.Microblogs.closePopup();" type="cancel" />
			</c:if>
		</span>
	</aui:button-row>
</aui:form>

<aui:script use="aui-base,autocomplete,autocomplete-filters">
	var form = A.one(document.<portlet:namespace /><%= formName %>);

	var MAP_MATCHED_USERS = {
		userId: function(str, match) {
			return '[@' + MAP_USERS[str] + ']';
		},
		userName: function(str, match) {
			return '<b>' + str + '</b>'
		}
	};

	var MAP_USERS = {};

	var REGEX_USER_NAME = /@[^\s]*$/;

	<c:if test="<%= !repost %>">
		var buttonContainer = form.one('.aui-button-holder');
		var contentInput = form.one('input[name=<portlet:namespace />contentInput]');
		var countdown = form.one('.microblogs-countdown');
		var submitButton = form.one('.aui-button-input-submit');
	</c:if>

	<c:if test="<%= view %>">
		contentInput.on(
			'focus',
			function(event) {
				buttonContainer.show();
			}
		);
	</c:if>

	form.on(
		'submit',
		function(event) {
			event.halt(true);

			var content = A.one('#<portlet:namespace />content');
			var contentInputValue = A.one('#<portlet:namespace />contentInput').val();

			var updatedText = replaceName(contentInputValue, 'userId');

			content.val(updatedText);

			Liferay.Microblogs.updateMicroblogs(form);

			<c:choose>
				<c:when test="<%= view %>">
					contentInput.setStyle('height', '18px');
					contentInput.set('value', '');

					countContent();

					buttonContainer.hide();
				</c:when>
				<c:otherwise>
					Liferay.Microblogs.closePopup();
				</c:otherwise>
			</c:choose>
		}
	);

	<c:if test="<%= reply %>">
		contentInput.set('value', '');

		contentInput.focus();
	</c:if>

	<c:if test="<%= !repost %>">
		var countContent = function() {
			var remainCount = 150 - contentInput.get('value').length;

			countdown.set('innerHTML', remainCount);

			if((remainCount < 0) || (remainCount == 150)) {
				submitButton.set('disabled', true);
				submitButton.setStyle('color', '#C8C9CA');

				if (remainCount < 0) {
					countdown.setStyle('color', '#F00');
				}
			}
			else {
				submitButton.set('disabled', false);
				submitButton.setStyle('color', '#34404F');

				countdown.setStyle('color', '#C8C9CA');
			}
		};

		contentInput.on(
			'keyup',
			countContent
		);

		countContent();

		var customFormatter = function(query, results) {
			var searchResultTemplate = '<div class="microblogs-autocomplete">' +
				'<div class="thumbnail">' +
					'<img src="{portrait_url}" alt="{user_fullname}" />' +
				'</div>' +
				'<div>' +
					'<span class="user-name">{user_fullname}</span><br />' +
					'<span class="small">{user_email}</span>' +
				'</div>' +
			'</div>';

			return A.Array.map(
				results,
				function(result) {
					var userData = result.raw;

					return A.Lang.sub(
						searchResultTemplate,
						{
							portrait_url : userData.portraitURL,
							user_email : userData.email,
							user_fullname : userData.userFullName
						}
					);
				}
			);
		};

		var replaceName = function(inputText, returnType) {
			var matchedUsers = {};

			var updatedText = inputText;

			var users = A.Object.keys(MAP_USERS);

			var findNames = new RegExp('('+users.join('|')+')', 'g');

			if (users.length > 0) {
				updatedText = updatedText.replace(
					findNames,
					function(userName) {
						if (userName !== '') {
							matchedUsers[userName] = MAP_USERS[userName];

							return MAP_MATCHED_USERS[returnType](userName, MAP_USERS[userName]);
						}
					}
				);
			}

			MAP_USERS = matchedUsers;

			return updatedText;
		};

		var updateHighlightDiv = function(event) {
			var highlighterContent = A.one('#<portlet:namespace/>highlighterContent');

			var inputValue = event.inputValue;

			var query = inputValue.match(REGEX_USER_NAME);

			if (query) {
				event.query = query[0].substr(1);
			}
			else {
				event.preventDefault();
			}

			var updatedText = replaceName(inputValue, 'userName');

			updatedText = updatedText.replace(/\s/g, '&nbsp;');

			highlighterContent.html(updatedText);
		};

		var updateContentTextbox = function(event) {
			event.preventDefault();

			var fullName = event.result.raw.userFullName;
			var inputNode = event.currentTarget._inputNode;
			var userId = event.result.raw.userId;

			var highlighterContent = A.one('#<portlet:namespace/>highlighterContent');

			var inputNodeValue = inputNode.val();

			var inputValueUpdated = inputNodeValue.replace(inputNodeValue.match(REGEX_USER_NAME), fullName);

			inputNode._node.value = inputValueUpdated;

			MAP_USERS[fullName] = userId;

			autocomplete.hide();
		};

		var autocomplete = new A.AutoComplete(
			{
				inputNode: '#<portlet:namespace/>contentInput',
				maxResults: 20,
				on: {
					clear: function() {
						var highlightDiv = A.one('#<portlet:namespace/>highlighterContent');

						highlightDiv.html('');
					},
					query: updateHighlightDiv,
					select: updateContentTextbox
				},
				resultFilters: 'phraseMatch',
				resultFormatter: customFormatter,
				resultTextLocator: 'userFullName',
				source: <%= MicroblogsUtil.getJSONRecipients(user.getUserId(), themeDisplay) %>
			}
		).render();
	</c:if>
</aui:script>