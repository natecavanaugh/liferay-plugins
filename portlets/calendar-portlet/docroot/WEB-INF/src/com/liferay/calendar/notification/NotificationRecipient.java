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

package com.liferay.calendar.notification;

import com.liferay.portal.kernel.util.ContentTypes;
import com.liferay.portal.model.User;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

/**
 * @author Eduardo Lundgren
 */
public class NotificationRecipient {

	public NotificationRecipient(String email) {
		_email = email;
	}

	public NotificationRecipient(User user) {
		_user = user;
		_email = user.getEmailAddress();
	}

	public String getEmail() {
		return _email;
	}

	public String getFormat() {
		return _format;
	}

	public InternetAddress getInternetAddress() throws AddressException {
		return new InternetAddress(_email);
	}

	public String getName() {
		return _name;
	}

	public User getUser() {
		return _user;
	}

	public User getUserRecipient() {
		return _user;
	}

	public boolean isHTMLFormat() {
		return _format.equals(ContentTypes.TEXT_HTML);
	}

	public void setEmail(String email) {
		_email = email;
	}

	public void setFormat(String format) {
		_format = format;
	}

	public void setName(String name) {
		_name = name;
	}

	public void setUser(User user) {
		_user = user;
	}

	private String _email;

	private String _format = ContentTypes.TEXT_HTML;

	private String _name;

	private User _user;

}