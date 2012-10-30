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
CalendarBooking calendarBooking = (CalendarBooking)request.getAttribute(WebKeys.CALENDAR_BOOKING);
Calendar calendar = calendarBooking.getCalendar();

List<CalendarBooking> childCalendarBookings = calendarBooking.getChildCalendarBookings();

Date startDate = JCalendarUtil.getJCalendar(calendarBooking.getStartDate(), user.getTimeZone()).getTime();
Date endDate = JCalendarUtil.getJCalendar(calendarBooking.getEndDate(), user.getTimeZone()).getTime();
%>

<div>
	<p>
		<liferay-ui:icon
			image="../common/user_icon"
			message=""
		/>

		<strong><%= HtmlUtil.escape(calendar.getName(locale)) %></strong>

		<c:if test="<%= (childCalendarBookings.size() > 0) %>">
			<br />

			<liferay-ui:icon
				image="../common/organization_icon"
				message="resources"
			/>

			<liferay-ui:message key="resources" />:

			<%
			List<String> calendarResourcesNames = new ArrayList<String>();

			for (CalendarBooking childCalendarBooking : childCalendarBookings) {
				CalendarResource calendarResource = childCalendarBooking.getCalendarResource();

				calendarResourcesNames.add(calendarResource.getName(locale));
			}
			%>

			<%= StringUtil.merge(calendarResourcesNames, ", ") %>
		</c:if>

		<br />
		<br />

		<liferay-ui:icon
			image="../common/revision"
			message="start-date"
		/>

		<liferay-ui:message key="start-date" />: <%= dateFormatLongDate.format(startDate) + ", " + dateFormatTime.format(startDate) %>

		<br />

		<liferay-ui:icon
			image="../common/revision"
			message="end-date"
		/>

		<liferay-ui:message key="end-date" />: <%= dateFormatLongDate.format(endDate) + ", " + dateFormatTime.format(endDate) %>
	</p>
</div>

<br />