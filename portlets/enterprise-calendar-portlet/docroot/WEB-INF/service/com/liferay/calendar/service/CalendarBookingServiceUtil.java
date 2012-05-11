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

package com.liferay.calendar.service;

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.util.MethodCache;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.InvokableService;

/**
 * The utility for the calendar booking remote service. This utility wraps {@link com.liferay.calendar.service.impl.CalendarBookingServiceImpl} and is the primary access point for service operations in application layer code running on a remote server.
 *
 * <p>
 * This is a remote service. Methods of this service are expected to have security checks based on the propagated JAAS credentials because this service can be accessed remotely.
 * </p>
 *
 * @author Eduardo Lundgren
 * @see CalendarBookingService
 * @see com.liferay.calendar.service.base.CalendarBookingServiceBaseImpl
 * @see com.liferay.calendar.service.impl.CalendarBookingServiceImpl
 * @generated
 */
public class CalendarBookingServiceUtil {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify this class directly. Add custom service methods to {@link com.liferay.calendar.service.impl.CalendarBookingServiceImpl} and rerun ServiceBuilder to regenerate this class.
	 */

	/**
	* Returns the Spring bean ID for this bean.
	*
	* @return the Spring bean ID for this bean
	*/
	public static java.lang.String getBeanIdentifier() {
		return getService().getBeanIdentifier();
	}

	/**
	* Sets the Spring bean ID for this bean.
	*
	* @param beanIdentifier the Spring bean ID for this bean
	*/
	public static void setBeanIdentifier(java.lang.String beanIdentifier) {
		getService().setBeanIdentifier(beanIdentifier);
	}

	public static java.lang.Object invokeMethod(java.lang.String name,
		java.lang.String[] parameterTypes, java.lang.Object[] arguments)
		throws java.lang.Throwable {
		return getService().invokeMethod(name, parameterTypes, arguments);
	}

	public static com.liferay.calendar.model.CalendarBooking addCalendarBooking(
		long userId, long calendarId, long parentCalendarBookingId,
		java.util.Map<java.util.Locale, java.lang.String> titleMap,
		java.util.Map<java.util.Locale, java.lang.String> descriptionMap,
		java.lang.String location, java.util.Date startDate,
		java.util.Date endDate, boolean allDay, java.lang.String recurrence,
		int firstReminder, int secondReminder,
		com.liferay.portal.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService()
				   .addCalendarBooking(userId, calendarId,
			parentCalendarBookingId, titleMap, descriptionMap, location,
			startDate, endDate, allDay, recurrence, firstReminder,
			secondReminder, serviceContext);
	}

	public static com.liferay.calendar.model.CalendarBooking addCalendarBooking(
		long userId, long calendarId,
		java.util.Map<java.util.Locale, java.lang.String> titleMap,
		java.util.Map<java.util.Locale, java.lang.String> descriptionMap,
		java.lang.String location, java.util.Date startDate,
		java.util.Date endDate, boolean allDay, java.lang.String recurrence,
		int firstReminder, int secondReminder,
		com.liferay.portal.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService()
				   .addCalendarBooking(userId, calendarId, titleMap,
			descriptionMap, location, startDate, endDate, allDay, recurrence,
			firstReminder, secondReminder, serviceContext);
	}

	public static com.liferay.calendar.model.CalendarBooking deleteCalendarBooking(
		long calendarBookingId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService().deleteCalendarBooking(calendarBookingId);
	}

	public static com.liferay.calendar.model.CalendarBooking fetchByC_P(
		long calendarId, long parentCalendarBookingId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService().fetchByC_P(calendarId, parentCalendarBookingId);
	}

	public static java.util.List<com.liferay.calendar.model.CalendarBooking> findByP_S(
		long parentCalendarBookingId, int status)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService().findByP_S(parentCalendarBookingId, status);
	}

	public static java.util.List<com.liferay.calendar.model.CalendarBooking> getByParentCalendarBookingId(
		long parentCalendarBookingId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService().getByParentCalendarBookingId(parentCalendarBookingId);
	}

	public static com.liferay.calendar.model.CalendarBooking getCalendarBooking(
		long calendarBookingId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService().getCalendarBooking(calendarBookingId);
	}

	public static java.util.List<com.liferay.calendar.model.CalendarBooking> getCalendarBookings(
		long calendarId, java.util.Date startDate, java.util.Date endDate)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService().getCalendarBookings(calendarId, startDate, endDate);
	}

	public static void invokeTransition(long userId, long calendarBookingId,
		java.lang.String transitionName,
		com.liferay.portal.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		getService()
			.invokeTransition(userId, calendarBookingId, transitionName,
			serviceContext);
	}

	public static java.util.List<com.liferay.calendar.model.CalendarBooking> search(
		long companyId, long[] groupIds, long[] calendarIds,
		long[] calendarResourceIds, long parentCalendarBookingId,
		java.lang.String keywords, java.util.Date startDate,
		java.util.Date endDate, int[] status, int start, int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService()
				   .search(companyId, groupIds, calendarIds,
			calendarResourceIds, parentCalendarBookingId, keywords, startDate,
			endDate, status, start, end, orderByComparator);
	}

	public static java.util.List<com.liferay.calendar.model.CalendarBooking> search(
		long companyId, long[] groupIds, long[] calendarIds,
		long[] calendarResourceIds, long parentCalendarBookingId,
		java.lang.String title, java.lang.String description,
		java.lang.String location, java.util.Date startDate,
		java.util.Date endDate, int[] status, boolean andOperator, int start,
		int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService()
				   .search(companyId, groupIds, calendarIds,
			calendarResourceIds, parentCalendarBookingId, title, description,
			location, startDate, endDate, status, andOperator, start, end,
			orderByComparator);
	}

	public static int searchCount(long companyId, long[] groupIds,
		long[] calendarIds, long[] calendarResourceIds,
		long parentCalendarBookingId, java.lang.String keywords,
		java.util.Date startDate, java.util.Date endDate, int[] status)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService()
				   .searchCount(companyId, groupIds, calendarIds,
			calendarResourceIds, parentCalendarBookingId, keywords, startDate,
			endDate, status);
	}

	public static int searchCount(long companyId, long[] groupIds,
		long[] calendarIds, long[] calendarResourceIds,
		long parentCalendarBookingId, java.lang.String title,
		java.lang.String description, java.lang.String location,
		java.util.Date startDate, java.util.Date endDate, int[] status,
		boolean andOperator)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService()
				   .searchCount(companyId, groupIds, calendarIds,
			calendarResourceIds, parentCalendarBookingId, title, description,
			location, startDate, endDate, status, andOperator);
	}

	public static com.liferay.calendar.model.CalendarBooking updateCalendarBooking(
		long userId, long calendarBookingId, long calendarId,
		java.util.Map<java.util.Locale, java.lang.String> titleMap,
		java.util.Map<java.util.Locale, java.lang.String> descriptionMap,
		java.lang.String location, int status, java.util.Date startDate,
		java.util.Date endDate, boolean allDay, java.lang.String recurrence,
		int firstReminder, int secondReminder,
		com.liferay.portal.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return getService()
				   .updateCalendarBooking(userId, calendarBookingId,
			calendarId, titleMap, descriptionMap, location, status, startDate,
			endDate, allDay, recurrence, firstReminder, secondReminder,
			serviceContext);
	}

	/**
	 * @deprecated
	 */
	public static void clearService() {
	}

	public static CalendarBookingService getService() {
		if (_service == null) {
			InvokableService invokableService = (InvokableService)PortletBeanLocatorUtil.locate(ClpSerializer.getServletContextName(),
					CalendarBookingService.class.getName());

			if (invokableService instanceof CalendarBookingService) {
				_service = (CalendarBookingService)invokableService;
			}
			else {
				_service = new CalendarBookingServiceClp(invokableService);
			}

			ReferenceRegistry.registerReference(CalendarBookingServiceUtil.class,
				"_service");
			MethodCache.remove(CalendarBookingService.class);
		}

		return _service;
	}

	/**
	 * @deprecated
	 */
	public void setService(CalendarBookingService service) {
	}

	private static CalendarBookingService _service;
}