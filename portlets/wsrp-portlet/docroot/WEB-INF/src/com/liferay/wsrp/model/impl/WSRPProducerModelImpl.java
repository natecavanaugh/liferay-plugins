/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
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

package com.liferay.wsrp.model.impl;

import com.liferay.portal.kernel.bean.AutoEscapeBeanHandler;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.ProxyUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.model.impl.BaseModelImpl;
import com.liferay.portal.service.ServiceContext;

import com.liferay.portlet.expando.model.ExpandoBridge;
import com.liferay.portlet.expando.util.ExpandoBridgeFactoryUtil;

import com.liferay.wsrp.model.WSRPProducer;
import com.liferay.wsrp.model.WSRPProducerModel;

import java.io.Serializable;

import java.sql.Types;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * The base model implementation for the WSRPProducer service. Represents a row in the &quot;WSRP_WSRPProducer&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This implementation and its corresponding interface {@link com.liferay.wsrp.model.WSRPProducerModel} exist only as a container for the default property accessors generated by ServiceBuilder. Helper methods and all application logic should be put in {@link WSRPProducerImpl}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see WSRPProducerImpl
 * @see com.liferay.wsrp.model.WSRPProducer
 * @see com.liferay.wsrp.model.WSRPProducerModel
 * @generated
 */
public class WSRPProducerModelImpl extends BaseModelImpl<WSRPProducer>
	implements WSRPProducerModel {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this class directly. All methods that expect a w s r p producer model instance should use the {@link com.liferay.wsrp.model.WSRPProducer} interface instead.
	 */
	public static final String TABLE_NAME = "WSRP_WSRPProducer";
	public static final Object[][] TABLE_COLUMNS = {
			{ "uuid_", Types.VARCHAR },
			{ "wsrpProducerId", Types.BIGINT },
			{ "groupId", Types.BIGINT },
			{ "companyId", Types.BIGINT },
			{ "createDate", Types.TIMESTAMP },
			{ "modifiedDate", Types.TIMESTAMP },
			{ "name", Types.VARCHAR },
			{ "version", Types.VARCHAR },
			{ "portletIds", Types.VARCHAR }
		};
	public static final String TABLE_SQL_CREATE = "create table WSRP_WSRPProducer (uuid_ VARCHAR(75) null,wsrpProducerId LONG not null primary key,groupId LONG,companyId LONG,createDate DATE null,modifiedDate DATE null,name VARCHAR(75) null,version VARCHAR(75) null,portletIds STRING null)";
	public static final String TABLE_SQL_DROP = "drop table WSRP_WSRPProducer";
	public static final String ORDER_BY_JPQL = " ORDER BY wsrpProducer.name ASC";
	public static final String ORDER_BY_SQL = " ORDER BY WSRP_WSRPProducer.name ASC";
	public static final String DATA_SOURCE = "liferayDataSource";
	public static final String SESSION_FACTORY = "liferaySessionFactory";
	public static final String TX_MANAGER = "liferayTransactionManager";
	public static final boolean ENTITY_CACHE_ENABLED = GetterUtil.getBoolean(com.liferay.util.service.ServiceProps.get(
				"value.object.entity.cache.enabled.com.liferay.wsrp.model.WSRPProducer"),
			true);
	public static final boolean FINDER_CACHE_ENABLED = GetterUtil.getBoolean(com.liferay.util.service.ServiceProps.get(
				"value.object.finder.cache.enabled.com.liferay.wsrp.model.WSRPProducer"),
			true);
	public static final boolean COLUMN_BITMASK_ENABLED = GetterUtil.getBoolean(com.liferay.util.service.ServiceProps.get(
				"value.object.column.bitmask.enabled.com.liferay.wsrp.model.WSRPProducer"),
			true);
	public static long COMPANYID_COLUMN_BITMASK = 1L;
	public static long GROUPID_COLUMN_BITMASK = 2L;
	public static long UUID_COLUMN_BITMASK = 4L;
	public static final long LOCK_EXPIRATION_TIME = GetterUtil.getLong(com.liferay.util.service.ServiceProps.get(
				"lock.expiration.time.com.liferay.wsrp.model.WSRPProducer"));

	public WSRPProducerModelImpl() {
	}

	public long getPrimaryKey() {
		return _wsrpProducerId;
	}

	public void setPrimaryKey(long primaryKey) {
		setWsrpProducerId(primaryKey);
	}

	public Serializable getPrimaryKeyObj() {
		return new Long(_wsrpProducerId);
	}

	public void setPrimaryKeyObj(Serializable primaryKeyObj) {
		setPrimaryKey(((Long)primaryKeyObj).longValue());
	}

	public Class<?> getModelClass() {
		return WSRPProducer.class;
	}

	public String getModelClassName() {
		return WSRPProducer.class.getName();
	}

	@Override
	public Map<String, Object> getModelAttributes() {
		Map<String, Object> attributes = new HashMap<String, Object>();

		attributes.put("uuid", getUuid());
		attributes.put("wsrpProducerId", getWsrpProducerId());
		attributes.put("groupId", getGroupId());
		attributes.put("companyId", getCompanyId());
		attributes.put("createDate", getCreateDate());
		attributes.put("modifiedDate", getModifiedDate());
		attributes.put("name", getName());
		attributes.put("version", getVersion());
		attributes.put("portletIds", getPortletIds());

		return attributes;
	}

	@Override
	public void setModelAttributes(Map<String, Object> attributes) {
		String uuid = (String)attributes.get("uuid");

		if (uuid != null) {
			setUuid(uuid);
		}

		Long wsrpProducerId = (Long)attributes.get("wsrpProducerId");

		if (wsrpProducerId != null) {
			setWsrpProducerId(wsrpProducerId);
		}

		Long groupId = (Long)attributes.get("groupId");

		if (groupId != null) {
			setGroupId(groupId);
		}

		Long companyId = (Long)attributes.get("companyId");

		if (companyId != null) {
			setCompanyId(companyId);
		}

		Date createDate = (Date)attributes.get("createDate");

		if (createDate != null) {
			setCreateDate(createDate);
		}

		Date modifiedDate = (Date)attributes.get("modifiedDate");

		if (modifiedDate != null) {
			setModifiedDate(modifiedDate);
		}

		String name = (String)attributes.get("name");

		if (name != null) {
			setName(name);
		}

		String version = (String)attributes.get("version");

		if (version != null) {
			setVersion(version);
		}

		String portletIds = (String)attributes.get("portletIds");

		if (portletIds != null) {
			setPortletIds(portletIds);
		}
	}

	public String getUuid() {
		if (_uuid == null) {
			return StringPool.BLANK;
		}
		else {
			return _uuid;
		}
	}

	public void setUuid(String uuid) {
		if (_originalUuid == null) {
			_originalUuid = _uuid;
		}

		_uuid = uuid;
	}

	public String getOriginalUuid() {
		return GetterUtil.getString(_originalUuid);
	}

	public long getWsrpProducerId() {
		return _wsrpProducerId;
	}

	public void setWsrpProducerId(long wsrpProducerId) {
		_wsrpProducerId = wsrpProducerId;
	}

	public long getGroupId() {
		return _groupId;
	}

	public void setGroupId(long groupId) {
		_columnBitmask |= GROUPID_COLUMN_BITMASK;

		if (!_setOriginalGroupId) {
			_setOriginalGroupId = true;

			_originalGroupId = _groupId;
		}

		_groupId = groupId;
	}

	public long getOriginalGroupId() {
		return _originalGroupId;
	}

	public long getCompanyId() {
		return _companyId;
	}

	public void setCompanyId(long companyId) {
		_columnBitmask |= COMPANYID_COLUMN_BITMASK;

		if (!_setOriginalCompanyId) {
			_setOriginalCompanyId = true;

			_originalCompanyId = _companyId;
		}

		_companyId = companyId;
	}

	public long getOriginalCompanyId() {
		return _originalCompanyId;
	}

	public Date getCreateDate() {
		return _createDate;
	}

	public void setCreateDate(Date createDate) {
		_createDate = createDate;
	}

	public Date getModifiedDate() {
		return _modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		_modifiedDate = modifiedDate;
	}

	public String getName() {
		if (_name == null) {
			return StringPool.BLANK;
		}
		else {
			return _name;
		}
	}

	public void setName(String name) {
		_columnBitmask = -1L;

		_name = name;
	}

	public String getVersion() {
		if (_version == null) {
			return StringPool.BLANK;
		}
		else {
			return _version;
		}
	}

	public void setVersion(String version) {
		_version = version;
	}

	public String getPortletIds() {
		if (_portletIds == null) {
			return StringPool.BLANK;
		}
		else {
			return _portletIds;
		}
	}

	public void setPortletIds(String portletIds) {
		_portletIds = portletIds;
	}

	public long getColumnBitmask() {
		return _columnBitmask;
	}

	@Override
	public ExpandoBridge getExpandoBridge() {
		return ExpandoBridgeFactoryUtil.getExpandoBridge(getCompanyId(),
			WSRPProducer.class.getName(), getPrimaryKey());
	}

	@Override
	public void setExpandoBridgeAttributes(ServiceContext serviceContext) {
		ExpandoBridge expandoBridge = getExpandoBridge();

		expandoBridge.setAttributes(serviceContext);
	}

	@Override
	public WSRPProducer toEscapedModel() {
		if (_escapedModel == null) {
			_escapedModel = (WSRPProducer)ProxyUtil.newProxyInstance(_classLoader,
					_escapedModelInterfaces, new AutoEscapeBeanHandler(this));
		}

		return _escapedModel;
	}

	public WSRPProducer toUnescapedModel() {
		return (WSRPProducer)this;
	}

	@Override
	public Object clone() {
		WSRPProducerImpl wsrpProducerImpl = new WSRPProducerImpl();

		wsrpProducerImpl.setUuid(getUuid());
		wsrpProducerImpl.setWsrpProducerId(getWsrpProducerId());
		wsrpProducerImpl.setGroupId(getGroupId());
		wsrpProducerImpl.setCompanyId(getCompanyId());
		wsrpProducerImpl.setCreateDate(getCreateDate());
		wsrpProducerImpl.setModifiedDate(getModifiedDate());
		wsrpProducerImpl.setName(getName());
		wsrpProducerImpl.setVersion(getVersion());
		wsrpProducerImpl.setPortletIds(getPortletIds());

		wsrpProducerImpl.resetOriginalValues();

		return wsrpProducerImpl;
	}

	public int compareTo(WSRPProducer wsrpProducer) {
		int value = 0;

		value = getName().compareTo(wsrpProducer.getName());

		if (value != 0) {
			return value;
		}

		return 0;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		if (!(obj instanceof WSRPProducer)) {
			return false;
		}

		WSRPProducer wsrpProducer = (WSRPProducer)obj;

		long primaryKey = wsrpProducer.getPrimaryKey();

		if (getPrimaryKey() == primaryKey) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public int hashCode() {
		return (int)getPrimaryKey();
	}

	@Override
	public void resetOriginalValues() {
		WSRPProducerModelImpl wsrpProducerModelImpl = this;

		wsrpProducerModelImpl._originalUuid = wsrpProducerModelImpl._uuid;

		wsrpProducerModelImpl._originalGroupId = wsrpProducerModelImpl._groupId;

		wsrpProducerModelImpl._setOriginalGroupId = false;

		wsrpProducerModelImpl._originalCompanyId = wsrpProducerModelImpl._companyId;

		wsrpProducerModelImpl._setOriginalCompanyId = false;

		wsrpProducerModelImpl._columnBitmask = 0;
	}

	@Override
	public CacheModel<WSRPProducer> toCacheModel() {
		WSRPProducerCacheModel wsrpProducerCacheModel = new WSRPProducerCacheModel();

		wsrpProducerCacheModel.uuid = getUuid();

		String uuid = wsrpProducerCacheModel.uuid;

		if ((uuid != null) && (uuid.length() == 0)) {
			wsrpProducerCacheModel.uuid = null;
		}

		wsrpProducerCacheModel.wsrpProducerId = getWsrpProducerId();

		wsrpProducerCacheModel.groupId = getGroupId();

		wsrpProducerCacheModel.companyId = getCompanyId();

		Date createDate = getCreateDate();

		if (createDate != null) {
			wsrpProducerCacheModel.createDate = createDate.getTime();
		}
		else {
			wsrpProducerCacheModel.createDate = Long.MIN_VALUE;
		}

		Date modifiedDate = getModifiedDate();

		if (modifiedDate != null) {
			wsrpProducerCacheModel.modifiedDate = modifiedDate.getTime();
		}
		else {
			wsrpProducerCacheModel.modifiedDate = Long.MIN_VALUE;
		}

		wsrpProducerCacheModel.name = getName();

		String name = wsrpProducerCacheModel.name;

		if ((name != null) && (name.length() == 0)) {
			wsrpProducerCacheModel.name = null;
		}

		wsrpProducerCacheModel.version = getVersion();

		String version = wsrpProducerCacheModel.version;

		if ((version != null) && (version.length() == 0)) {
			wsrpProducerCacheModel.version = null;
		}

		wsrpProducerCacheModel.portletIds = getPortletIds();

		String portletIds = wsrpProducerCacheModel.portletIds;

		if ((portletIds != null) && (portletIds.length() == 0)) {
			wsrpProducerCacheModel.portletIds = null;
		}

		return wsrpProducerCacheModel;
	}

	@Override
	public String toString() {
		StringBundler sb = new StringBundler(19);

		sb.append("{uuid=");
		sb.append(getUuid());
		sb.append(", wsrpProducerId=");
		sb.append(getWsrpProducerId());
		sb.append(", groupId=");
		sb.append(getGroupId());
		sb.append(", companyId=");
		sb.append(getCompanyId());
		sb.append(", createDate=");
		sb.append(getCreateDate());
		sb.append(", modifiedDate=");
		sb.append(getModifiedDate());
		sb.append(", name=");
		sb.append(getName());
		sb.append(", version=");
		sb.append(getVersion());
		sb.append(", portletIds=");
		sb.append(getPortletIds());
		sb.append("}");

		return sb.toString();
	}

	public String toXmlString() {
		StringBundler sb = new StringBundler(31);

		sb.append("<model><model-name>");
		sb.append("com.liferay.wsrp.model.WSRPProducer");
		sb.append("</model-name>");

		sb.append(
			"<column><column-name>uuid</column-name><column-value><![CDATA[");
		sb.append(getUuid());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>wsrpProducerId</column-name><column-value><![CDATA[");
		sb.append(getWsrpProducerId());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>groupId</column-name><column-value><![CDATA[");
		sb.append(getGroupId());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>companyId</column-name><column-value><![CDATA[");
		sb.append(getCompanyId());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>createDate</column-name><column-value><![CDATA[");
		sb.append(getCreateDate());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>modifiedDate</column-name><column-value><![CDATA[");
		sb.append(getModifiedDate());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>name</column-name><column-value><![CDATA[");
		sb.append(getName());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>version</column-name><column-value><![CDATA[");
		sb.append(getVersion());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>portletIds</column-name><column-value><![CDATA[");
		sb.append(getPortletIds());
		sb.append("]]></column-value></column>");

		sb.append("</model>");

		return sb.toString();
	}

	private static ClassLoader _classLoader = WSRPProducer.class.getClassLoader();
	private static Class<?>[] _escapedModelInterfaces = new Class[] {
			WSRPProducer.class
		};
	private String _uuid;
	private String _originalUuid;
	private long _wsrpProducerId;
	private long _groupId;
	private long _originalGroupId;
	private boolean _setOriginalGroupId;
	private long _companyId;
	private long _originalCompanyId;
	private boolean _setOriginalCompanyId;
	private Date _createDate;
	private Date _modifiedDate;
	private String _name;
	private String _version;
	private String _portletIds;
	private long _columnBitmask;
	private WSRPProducer _escapedModel;
}