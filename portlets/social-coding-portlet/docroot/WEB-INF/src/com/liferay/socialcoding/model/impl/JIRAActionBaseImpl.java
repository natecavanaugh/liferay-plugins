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

package com.liferay.socialcoding.model.impl;

import com.liferay.portal.kernel.exception.SystemException;

import com.liferay.socialcoding.model.JIRAAction;
import com.liferay.socialcoding.service.JIRAActionLocalServiceUtil;

/**
 * The extended model base implementation for the JIRAAction service. Represents a row in the &quot;jiraaction&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This class exists only as a container for the default extended model level methods generated by ServiceBuilder. Helper methods and all application logic should be put in {@link JIRAActionImpl}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see JIRAActionImpl
 * @see com.liferay.socialcoding.model.JIRAAction
 * @generated
 */
public abstract class JIRAActionBaseImpl extends JIRAActionModelImpl
	implements JIRAAction {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this class directly. All methods that expect a j i r a action model instance should use the {@link JIRAAction} interface instead.
	 */
	public void persist() throws SystemException {
		JIRAActionLocalServiceUtil.updateJIRAAction(this);
	}
}