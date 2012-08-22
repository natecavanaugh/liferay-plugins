create table Calendar (
	uuid_ VARCHAR(75) null,
	calendarId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	resourceBlockId LONG,
	calendarResourceId LONG,
	name STRING null,
	description STRING null,
	color INTEGER,
	defaultCalendar BOOLEAN
);

create table CalendarBooking (
	uuid_ VARCHAR(75) null,
	calendarBookingId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	calendarId LONG,
	calendarResourceId LONG,
	parentCalendarBookingId LONG,
	title STRING null,
	description STRING null,
	location VARCHAR(75) null,
	startDate LONG,
	endDate LONG,
	allDay BOOLEAN,
	recurrence STRING null,
	firstReminder LONG,
	firstReminderType VARCHAR(75) null,
	secondReminder LONG,
	secondReminderType VARCHAR(75) null,
	status INTEGER,
	statusByUserId LONG,
	statusByUserName VARCHAR(75) null,
	statusDate DATE null
);

create table CalendarResource (
	uuid_ VARCHAR(75) null,
	calendarResourceId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	resourceBlockId LONG,
	classNameId LONG,
	classPK LONG,
	classUuid VARCHAR(75) null,
	defaultCalendarId LONG,
	code_ VARCHAR(75) null,
	name STRING null,
	description STRING null,
	type_ VARCHAR(75) null,
	active_ BOOLEAN
);