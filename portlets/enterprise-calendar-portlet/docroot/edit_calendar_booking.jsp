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
String redirect = ParamUtil.getString(request, "redirect");

String activeView = ParamUtil.getString(request, "activeView", "week");
long currentDate = ParamUtil.getLong(request, "currentDate", now.getTimeInMillis());

redirect = HttpUtil.setParameter(redirect, renderResponse.getNamespace() + "activeView", activeView);
redirect = HttpUtil.setParameter(redirect, renderResponse.getNamespace() + "currentDate", currentDate);

java.util.Calendar defaultEndDate = (java.util.Calendar)now.clone();
defaultEndDate.add(java.util.Calendar.HOUR, 1);

CalendarBooking calendarBooking = (CalendarBooking)request.getAttribute(WebKeys.CALENDAR_BOOKING);

String title = BeanParamUtil.getString(calendarBooking, request, "titleCurrentValue");
long calendarBookingId = BeanParamUtil.getLong(calendarBooking, request, "calendarBookingId");
long calendarId = BeanParamUtil.getLong(calendarBooking, request, "calendarId", userDefaultCalendar.getCalendarId());
long endDate = ParamUtil.getLong(request, "endDate", defaultEndDate.getTimeInMillis());
long startDate = ParamUtil.getLong(request, "startDate", now.getTimeInMillis());
boolean allDay = ParamUtil.getBoolean(request, "allDay", false);

java.util.Calendar startDateCal = CalendarUtil.getCalendar(startDate, timeZone);
java.util.Calendar endDateCal = CalendarUtil.getCalendar(endDate, timeZone);

if (!allDay) {
	com.liferay.portal.kernel.util.CalendarUtil.roundByMinutes(startDateCal, 30);
	com.liferay.portal.kernel.util.CalendarUtil.roundByMinutes(endDateCal, 30);
}

JSONArray acceptedCalendarsJSONArray = JSONFactoryUtil.createJSONArray();
JSONArray declinedCalendarsJSONArray = JSONFactoryUtil.createJSONArray();
JSONArray pendingCalendarsJSONArray = JSONFactoryUtil.createJSONArray();

boolean canInvite = true;

if (calendarBooking != null) {
	startDateCal.setTime(calendarBooking.getStartDate());
	endDateCal.setTime(calendarBooking.getEndDate());

	acceptedCalendarsJSONArray = CalendarUtil.toCalendarBookingsJSON(
		request, CalendarBookingServiceUtil.findByP_S(
			calendarBooking.getParentCalendarBookingId(),
			CalendarBookingWorkflowConstants.STATUS_APPROVED));

	declinedCalendarsJSONArray = CalendarUtil.toCalendarBookingsJSON(
		request, CalendarBookingServiceUtil.findByP_S(
			calendarBooking.getParentCalendarBookingId(),
			CalendarBookingWorkflowConstants.STATUS_DENIED));

	pendingCalendarsJSONArray = CalendarUtil.toCalendarBookingsJSON(
		request, CalendarBookingServiceUtil.findByP_S(
			calendarBooking.getParentCalendarBookingId(),
			CalendarBookingWorkflowConstants.STATUS_PENDING));

	if (!calendarBooking.isMasterBooking()) {
		canInvite = false;
	}
}

if (acceptedCalendarsJSONArray.length() == 0) {
	Calendar calendar = CalendarServiceUtil.fetchCalendar(calendarId);

	if (calendar != null) {
		acceptedCalendarsJSONArray.put(CalendarUtil.toCalendarJSON(request, calendar));
	}
}
%>

<liferay-ui:header
	backURL="<%= redirect %>"
	title='<%= ((calendarBooking != null) && Validator.isNotNull(title)) ? title : "new-calendar-booking" %>'
/>

<liferay-portlet:actionURL name="updateCalendarBooking" var="updateCalendarBookingURL">
	<liferay-portlet:param name="mvcPath" value="/edit_calendar_booking.jsp" />
	<liferay-portlet:param name="redirect" value="<%= redirect %>" />
</liferay-portlet:actionURL>

<aui:form action="<%= updateCalendarBookingURL %>" method="post" name="fm" onSubmit='<%= "event.preventDefault(); " + renderResponse.getNamespace() + "updateCalendarBooking();" %>'>
	<aui:model-context bean="<%= calendarBooking %>" model="<%= CalendarBooking.class %>" />

	<aui:input name="calendarBookingId" type="hidden" value="<%= calendarBookingId %>" />
	<aui:input name="calendarId" type="hidden" value="<%= calendarId %>" />
	<aui:input name="invitedCalendarIds" type="hidden" />

	<aui:fieldset>
		<aui:input name="title" />

		<aui:input name="startDate" value="<%= startDateCal %>" />

		<aui:input name="endDate" value="<%= endDateCal %>" />

		<aui:input name="allDay" />
	</aui:fieldset>

	<aui:fieldset>
		<liferay-ui:panel-container extended="<%= false %>" id="templateDetailsPanelContainer" persistState="<%= true %>">
			<liferay-ui:panel collapsible="<%= true %>" extended="<%= false %>" id="calendarBookingDetailsSectionPanel" persistState="<%= true %>" title="details">
				<aui:input name="description" />

				<aui:input name="location" />
			</liferay-ui:panel>
		</liferay-ui:panel-container>
	</aui:fieldset>

	<liferay-ui:tabs
		names="invitations"
		refresh="<%= false %>"
	>
		<liferay-ui:section>
			<c:if test="<%= canInvite %>">
				<aui:input inputCssClass="calendar-portlet-invite-resources-input" label="invite-resource" name="inviteResource" placeholder="add-guests-groups-rooms" type="text" />

				<div class="separator"><!-- --></div>
			</c:if>

			<aui:layout cssClass="calendar-booking-invitations">
				<aui:column columnWidth="33" first="true">
					<label class="aui-field-label">
						<liferay-ui:message key="pending" />
						(<span id="<portlet:namespace />pendingCounter"><%= pendingCalendarsJSONArray.length() %></span>)
					</label>

					<div class="calendar-portlet-calendar-list" id="<portlet:namespace />calendarListPending"></div>
				</aui:column>
				<aui:column columnWidth="33">
					<label class="aui-field-label">
						<liferay-ui:message key="accepted" />
						(<span id="<portlet:namespace />acceptedCounter"><%= acceptedCalendarsJSONArray.length() %></span>)
					</label>

					<div class="calendar-portlet-calendar-list" id="<portlet:namespace />calendarListAccepted"></div>
				</aui:column>
				<aui:column columnWidth="33" last="true">
					<label class="aui-field-label">
						<liferay-ui:message key="declined" />
						(<span id="<portlet:namespace />declinedCounter"><%= declinedCalendarsJSONArray.length() %></span>)
					</label>

					<div class="calendar-portlet-calendar-list" id="<portlet:namespace />calendarListDeclined"></div>
				</aui:column>
			</aui:layout>
		</liferay-ui:section>
	</liferay-ui:tabs>

	<aui:button-row>
		<aui:button type="submit" />

		<aui:button href="<%= redirect %>" type="cancel" />
	</aui:button-row>
</aui:form>

<aui:script>
	Liferay.provide(
		window,
		'<portlet:namespace />updateCalendarBooking',
		function() {
			var A = AUI();

			<c:if test="<%= canInvite %>">
				A.one('#<portlet:namespace />invitedCalendarIds').val(A.JSON.stringify(A.Object.keys(Liferay.CalendarUtil.visibleCalendars)));
			</c:if>

			submitForm(document.<portlet:namespace />fm);
		},
		['aui-base', 'json']
	);

	Liferay.Util.focusFormField(document.<portlet:namespace />fm.<portlet:namespace />title);

	<c:if test="<%= calendarBooking == null %>">
		document.<portlet:namespace />fm.<portlet:namespace />title_<%= LanguageUtil.getLanguageId(request) %>.value = decodeURIComponent('<%= HtmlUtil.escapeURL(title) %>');
	</c:if>
</aui:script>

<aui:script use="json,liferay-calendar-list,liferay-calendar-simple-menu">
	var removeCalendarResource = function(calendarList, calendar, menu) {
		calendarList.remove(calendar);

		if (menu) {
			menu.hide();
		}
	}

	var syncVisibleCalendarsMap = function() {
		Liferay.CalendarUtil.syncVisibleCalendarsMap(
			window.<portlet:namespace />calendarListAccepted,
			window.<portlet:namespace />calendarListDeclined,
			window.<portlet:namespace />calendarListPending
		);
	}

	var calendarsMenu = {
		items: [
			{
				caption: '<liferay-ui:message key="check-availability" />',
				fn: function(event) {
					var instance = this;

					return false;
				},
				id: 'check-availability'
			}
			<c:if test="<%= canInvite %>">
				,{
					caption: '<liferay-ui:message key="remove" />',
					fn: function(event) {
						var instance = this;

						var calendarList = instance.get('host');

						removeCalendarResource(calendarList, calendarList.activeItem, instance);
					},
					id: 'remove'
				}
			</c:if>
		],
		<c:if test="<%= canInvite %>">
			on: {
				visibleChange: function(event) {
					var instance = this;

					if (event.newVal) {
						var calendarList = instance.get('host');
						var calendar = calendarList.activeItem;

						var hiddenItems = [];

						if (calendar.get('calendarId') === <%= calendarId %>) {
							hiddenItems.push('remove');
						}

						instance.set('hiddenItems', hiddenItems);
					}
				}
			}
		</c:if>
	}

	window.<portlet:namespace />calendarListPending = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: function(event) {
					var instance = this;

					A.one('#<portlet:namespace />pendingCounter').html(event.newVal.length);

					syncVisibleCalendarsMap();
				}
			},
			boundingBox: '#<portlet:namespace />calendarListPending',
			calendars: <%= pendingCalendarsJSONArray %>,
			simpleMenu: calendarsMenu,
			strings: {
				emptyMessage: '<liferay-ui:message key="no-pending-invites" />'
			}
		}
	).render();

	window.<portlet:namespace />calendarListAccepted = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: function(event) {
					var instance = this;

					A.one('#<portlet:namespace />acceptedCounter').html(event.newVal.length);

					syncVisibleCalendarsMap();
				}
			},
			boundingBox: '#<portlet:namespace />calendarListAccepted',
			calendars: <%= acceptedCalendarsJSONArray %>,
			simpleMenu: calendarsMenu,
			strings: {
				emptyMessage: '<liferay-ui:message key="no-accepted-invites" />'
			}
		}
	).render();

	window.<portlet:namespace />calendarListDeclined = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: function(event) {
					var instance = this;

					A.one('#<portlet:namespace />declinedCounter').html(event.newVal.length);

					syncVisibleCalendarsMap();
				}
			},
			boundingBox: '#<portlet:namespace />calendarListDeclined',
			calendars: <%= declinedCalendarsJSONArray %>,
			simpleMenu: calendarsMenu,
			strings: {
				emptyMessage: '<liferay-ui:message key="no-declined-invites" />'
			}
		}
	).render();

	syncVisibleCalendarsMap();

	<c:if test="<%= canInvite %>">
		<liferay-portlet:resourceURL copyCurrentRenderParameters="<%= false %>" id="calendarResources" var="calendarResourcesURL"></liferay-portlet:resourceURL>

		var inviteResourcesInput = A.one('#<portlet:namespace />inviteResource');

		Liferay.CalendarUtil.createCalendarListAutoComplete('<%= calendarResourcesURL %>', <portlet:namespace />calendarListPending, inviteResourcesInput);
	</c:if>
</aui:script>