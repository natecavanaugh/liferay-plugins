<%--
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
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
String tabs2 = ParamUtil.getString(request, "tabs2", "email-from");

String redirect = ParamUtil.getString(request, "redirect");

String emailFromName = ParamUtil.getString(request, "emailFromName", NotificationUtil.getEmailFromName(preferences, themeDisplay.getCompanyId()));
String emailFromAddress = ParamUtil.getString(request, "emailFromAddress", NotificationUtil.getEmailFromAddress(preferences, themeDisplay.getCompanyId()));

String notificationTemplateType = ParamUtil.getString(request, "notificationTemplateType", "reminder");
String notificationType = ParamUtil.getString(request, "notificationType", PortletPropsValues.CALENDAR_NOTIFICATION_DEFAULT_TYPE);

NotificationTemplateType notificationTemplateTypeEnum = NotificationTemplateType.parse(notificationTemplateType);
NotificationType notificationTypeEnum = NotificationType.parse(notificationType);

String templateBodyParameterName = NotificationUtil.getPreferenceName(PortletPropsKeys.CALENDAR_NOTIFICATION_BODY, notificationTypeEnum, notificationTemplateTypeEnum);
String templateSubjectParameterName = NotificationUtil.getPreferenceName(PortletPropsKeys.CALENDAR_NOTIFICATION_SUBJECT, notificationTypeEnum, notificationTemplateTypeEnum);

String templateBody = PrefsParamUtil.getString(preferences, request, templateBodyParameterName, NotificationUtil.getTemplateContent(PortletPropsKeys.CALENDAR_NOTIFICATION_BODY, notificationTypeEnum, notificationTemplateTypeEnum));
String templateSubject = PrefsParamUtil.getString(preferences, request, templateSubjectParameterName, NotificationUtil.getTemplateContent(PortletPropsKeys.CALENDAR_NOTIFICATION_SUBJECT, notificationTypeEnum, notificationTemplateTypeEnum));
%>

<liferay-portlet:renderURL portletConfiguration="true" var="portletURL">
	<portlet:param name="tabs2" value="<%= tabs2 %>" />
	<portlet:param name="redirect" value="<%= redirect %>" />
</liferay-portlet:renderURL>

<liferay-portlet:actionURL portletConfiguration="true" var="actionURL" />

<aui:form action="<%= actionURL %>" method="post" name="fm" onSubmit='<%= "event.preventDefault(); " + renderResponse.getNamespace() + "saveConfiguration();" %>'>
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
	<aui:input name="tabs2" type="hidden" value="<%= tabs2 %>" />
	<aui:input name="redirect" type="hidden" value="<%= redirect %>" />
	<aui:input name="templateBodyParameterName" type="hidden" value="<%= templateBodyParameterName %>" />
	<aui:input name="templateSubjectParameterName" type="hidden" value="<%= templateSubjectParameterName %>" />

	<liferay-ui:tabs
		names="email-from,templates,display-settings"
		param="tabs2"
		url="<%= portletURL %>"
	/>

	<liferay-ui:error key="emailFromAddress" message="please-enter-a-valid-email-address" />
	<liferay-ui:error key="emailFromName" message="please-enter-a-valid-name" />
	<liferay-ui:error key="templateBody" message="please-enter-a-valid-body" />
	<liferay-ui:error key="templateSubject" message="please-enter-a-valid-subject" />

	<c:choose>
		<c:when test='<%= tabs2.equals("email-from") %>'>
			<aui:fieldset>
				<aui:input cssClass="lfr-input-text-container" label="name" name="preferences--emailFromName--" type="text" value="<%= emailFromName %>" />

				<aui:input cssClass="lfr-input-text-container" label="address" name="preferences--emailFromAddress--" type="text" value="<%= emailFromAddress %>" />
			</aui:fieldset>
		</c:when>
		<c:when test='<%= tabs2.equals("templates") %>'>
			<aui:fieldset>
				<aui:select name="notificationType" value="<%= notificationType %>">

					<%
					for (NotificationType notificationTypeValue : NotificationType.values()) {
					%>

						<aui:option label="<%= notificationTypeValue.toString() %>" value="<%= notificationTypeValue.toString() %>" />

					<%
					}
					%>

				</aui:select>

				<aui:select name="notificationTemplateType" value="<%= notificationTemplateType %>">

					<%
					for (NotificationTemplateType notificationTemplateTypeValue : NotificationTemplateType.values()) {
					%>

						<aui:option label="<%= notificationTemplateTypeValue.toString() %>" value="<%= notificationTemplateTypeValue.toString() %>" />

					<%
					}
					%>

				</aui:select>

				<aui:input cssClass="lfr-input-text-container" label="subject" name='<%= \"preferences--\" + templateSubjectParameterName + \"--\" %>' type="text" value="<%= templateSubject %>" />

				<aui:field-wrapper label="body">
					<liferay-ui:input-editor editorImpl="ckeditor" />

					<aui:input name='<%= \"preferences--\" + templateBodyParameterName + \"--\" %>' type="hidden" value="<%= templateBody %>" />
				</aui:field-wrapper>
			</aui:fieldset>

			<div class="definition-of-terms">
				<h4><liferay-ui:message key="definition-of-terms" /></h4>

				<dl>
					<dt>
						[$BOOKING_LOCATION$]
					</dt>
					<dd>
						<liferay-ui:message key="booking-location" />
					</dd>
					<dt>
						[$BOOKING_START_DATE$]
					</dt>
					<dd>
						<liferay-ui:message key="booking-start-date" />
					</dd>
					<dt>
						[$BOOKING_TITLE$]
					</dt>
					<dd>
						<liferay-ui:message key="booking-title" />
					</dd>
					<dt>
						[$FROM_ADDRESS$]
					</dt>
					<dd>
						<%= HtmlUtil.escape(emailFromAddress) %>
					</dd>
					<dt>
						[$FROM_NAME$]
					</dt>
					<dd>
						<%= HtmlUtil.escape(emailFromName) %>
					</dd>
					<dt>
						[$PORTAL_URL$]
					</dt>
					<dd>
						<%= company.getVirtualHostname() %>
					</dd>
					<dt>
						[$TO_ADDRESS$]
					</dt>
					<dd>
						<liferay-ui:message key="the-address-of-the-email-recipient" />
					</dd>
					<dt>
						[$TO_NAME$]
					</dt>
					<dd>
						<liferay-ui:message key="the-name-of-the-email-recipient" />
					</dd>
				</dl>
			</div>
		</c:when>
		<c:when test='<%= tabs2.equals("display-settings") %>'>
			<aui:fieldset>
				<aui:input name="preferences--dayViewHeaderDateFormat--" type="text" value="<%= dayViewHeaderDateFormat %>" />

				<aui:input name="preferences--navigationHeaderDateFormat--" type="text" value="<%= navigationHeaderDateFormat %>" />

				<aui:input name="preferences--isoTimeFormat--" type="checkbox" value="<%= isoTimeFormat %>" />
			</aui:fieldset>
		</c:when>
	</c:choose>

	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>

<aui:script use="aui-base">
var <portlet:namespace />changeTemplate = function(parameterName, parameterValue) {
	if (confirm('<liferay-ui:message key="changing-templates-could-loose-unsaved-data-do-you-want-to-proceed" />')) {
		window.location.href = '<%= portletURL %>&' + parameterName + '=' + parameterValue;
	}
};

var notificationType = A.one('#<portlet:namespace />notificationType');
var notificationTemplateType = A.one('#<portlet:namespace />notificationTemplateType');

if (notificationType) {
	notificationType.on('change', function(event) {
		<portlet:namespace />changeTemplate('notificationType', event.currentTarget.val());
	});
}

if (notificationTemplateType) {
	notificationTemplateType.on('change', function(event) {
		<portlet:namespace />changeTemplate('notificationTemplateType', event.currentTarget.val());
	});
}
</aui:script>

<aui:script>
	function <portlet:namespace />initEditor() {
		<c:if test='<%= tabs2.equals("templates") %>'>
			return '<%= UnicodeFormatter.toString(templateBody) %>';
		</c:if>
	}

	function <portlet:namespace />saveConfiguration() {
		<c:if test='<%= tabs2.equals("templates") %>'>
			var templateBody = document.getElementById('<portlet:namespace /><%= HtmlUtil.escapeJS(templateBodyParameterName) %>');

			if (templateBody) {
				templateBody.value = window.<portlet:namespace />editor.getHTML();
			}
		</c:if>

		submitForm(document.<portlet:namespace />fm);
	}
</aui:script>