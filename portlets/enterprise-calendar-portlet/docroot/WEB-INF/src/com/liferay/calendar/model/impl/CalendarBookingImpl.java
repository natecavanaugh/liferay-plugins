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

package com.liferay.calendar.model.impl;

import com.liferay.calendar.model.Calendar;
import com.liferay.calendar.model.CalendarBooking;
import com.liferay.calendar.model.CalendarResource;
import com.liferay.calendar.service.CalendarBookingLocalServiceUtil;
import com.liferay.calendar.service.CalendarLocalServiceUtil;
import com.liferay.calendar.service.CalendarResourceLocalServiceUtil;
import com.liferay.calendar.util.CalendarUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.CalendarFactoryUtil;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.TimeZoneUtil;
import com.liferay.portal.model.User;
import com.liferay.portal.service.UserLocalServiceUtil;

import java.util.Date;

/**
 * @author Eduardo Lundgren
 */
public class CalendarBookingImpl
	extends CalendarBookingBaseImpl {

	public CalendarBookingImpl() {
	}

	public Calendar getCalendar() throws PortalException, SystemException {
		return CalendarLocalServiceUtil.getCalendar(getCalendarId());
	}

	public CalendarResource getCalendarResource()
		throws PortalException, SystemException {

		return CalendarResourceLocalServiceUtil.getCalendarResource(
			getCalendarResourceId());
	}

	public CalendarBooking getParentCalendarBooking()
		throws PortalException, SystemException {

		return CalendarBookingLocalServiceUtil.getCalendarBooking(
			getParentCalendarBookingId());
	}

	public Date getUTCEndDate() throws PortalException, SystemException {
		return getUTCDate(getEndDate());
	}

	public Date getUTCStartDate() throws PortalException, SystemException {
		return getUTCDate(getStartDate());
	}

	public boolean isMasterBooking() {
		return (getParentCalendarBookingId() == getCalendarBookingId());
	}

	protected Date getUTCDate(Date date)
		throws PortalException, SystemException {

		User user = UserLocalServiceUtil.getUser(getUserId());

		java.util.Calendar userDate = CalendarFactoryUtil.getCalendar(
			user.getTimeZone());

		userDate.setTime(date);

		java.util.Calendar utcDate = CalendarUtil.getCalendar(
			userDate, TimeZoneUtil.getTimeZone(StringPool.UTC));

		return utcDate.getTime();
	}

}