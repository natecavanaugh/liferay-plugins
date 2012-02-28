<%
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
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@include file="init.jsp" %>

<portlet:defineObjects />

<h2>Styling Guide</h2>
<div class="markupTabs">
	<ul class="aui-tabview-list aui-widget-hd tab-list">
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Typography Example</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Headings</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Paragraphs</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Blockquote</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Blockquote.small</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Inline Styles</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Address</a></li>
	</ul>

	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<div class="aui-layout-content">
				<div class="aui-w75 aui-column aui-column-first">
					<div class="aui-column-content-first">
						<h4>Paragraphs</h4>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore
						magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper
						suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
						hendrerit in vulputate velit esse molestie consequat</p>
						<p>El illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim
						qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
						liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim
						placerat facer possim assum.</p>

						<h4>Blockquote</h4>
						<blockquote>
							<p>lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit
							in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan
							et iusto odio
							<span>Someone Important</span></p>
						</blockquote>

						<h4>Blockquote Small</h4>
							<blockquote class="small"><p>lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit
							in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan
							et iusto odio
							<span>Someone Important</span></p>
						</blockquote>
					</div>
				</div>
				<div class="aui-w25 aui-column aui-column-last">
					<div class="aui-column-content-last">
						<h4>Inline Styles</h4>
						<ul>
							<li><strong>Strong</strong></li>
							</br>
							<li><em>Emphasis</em></li>
							</br>
							<li><a href="">Inline Link</a></li>
							</br>
							<li><strike>Strike</strike></li>
							</br>
							<li>Inline <span class="aui-buttonitem-icon aui-icon aui-icon-person"></span> Icons</li>
							</br>
							<li><code>&lt;h1&gt;Sample Code&lt;/h1&gt;</code></li>
						</ul>
						<hr />

						<h1>Heading 1</h1>
						<h2>Heading 2</h2>
						<h3>Heading 3</h3>
						<h4>Heading 4</h4>
						<h5>Heading 5</h5>
						<h6>Heading 6</h6>
						<hr />

						<h4>Address</h4>
						<address><p>
							1234 South Creek Lane<br />
							Calgary, Alberta, Canada<br />
							T4B–1S6
						</p></address>
					</div>
				</div>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h1&gt;Heading 1&lt;/h1&gt;
&lt;h2&gt;Heading 2&lt;/h2&gt;
&lt;h3&gt;Heading 3&lt;/h3&gt;
&lt;h4&gt;Heading 4&lt;/h4&gt;
&lt;h5&gt;Heading 5&lt;/h5&gt;
&lt;h6&gt;Heading 6&lt;/h6&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h4&gt;Paragraphs&lt;/h4&gt;
&lt;p&gt;
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore
	magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper
	suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
	hendrerit in vulputate velit esse molestie consequat
&lt;/p&gt;
&lt;p&gt;
	El illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim
	qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
	liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim
	placerat facer possim assum.
&lt;/p&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;blockquote&gt;
	&lt;p&gt;
		lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit
		in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan
		et iusto odio
		&lt;span&gt;Someone Important&lt;/span&gt;
	&lt;/p&gt;
&lt;/blockquote&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;blockquote class=&quot;small&quot;&gt;
	&lt;p&gt;
		lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit
		in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan
		et iusto odio
		&lt;span&gt;Someone Important&lt;/span&gt;
	&lt;/p&gt;
&lt;/blockquote&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;strong&gt;Strong&lt;/strong&gt;
&lt;em&gt;Emphasis&lt;/em&gt;
&lt;a href=&quot;&quot;&gt;Inline Link&lt;/a&gt;
&lt;strike&gt;Strike&lt;/strike&gt;
Inline &lt;span class=&quot;icon&quot; data-icon=&quot;2&quot;&gt;&lt;/span&gt; Icons
&lt;code&gt;&amp;lt;h1&amp;gt;Sample Code&amp;lt;/h1&amp;gt;&lt;/code&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;address&gt;
	&lt;p&gt;
		1234 South Creek Lane&lt;br /&gt;
		Calgary, Alberta, Canada&lt;br /&gt;
		T4B&#8211;1S6
	&lt;/p&gt;
&lt;/address&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Lists</h2>
<div class="markupTabs">
	<ul class="aui-tabview-list aui-widget-hd tab-list">
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">List Example</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">UL</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">OL</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">UL.icons</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">UL.alt</a></li>
	</ul>

	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<div class="aui-layout-content">
				<div class="aui-w25 aui-column aui-column-first">
					<div class="aui-column-content-first">
						<h4>Unordered List</h4>
						<ul>
							<li>tation ullamcorper suscipit lobortis</li>
							<li>Nam liber tempor cum soluta nobis</li>
							<li>imperdiet doming id quod mazim</li>
							<li>suscipit lobortis nisl ut aliquip ex</li>
						</ul>
					</div>
				</div>
				<div class="aui-w25 aui-column aui-column-second">
					<div class="aui-column-content-second">
						<h4>Ordered List</h4>
						<ol>
							<li>tation ullamcorper suscipit lobortis</li>
							<li>Nam liber tempor cum soluta nobis</li>
							<li>imperdiet doming id quod mazim</li>
							<li>suscipit lobortis nisl ut aliquip ex</li>
						</ol>
					</div>
				</div>
				<div class="aui-w25 aui-column aui-column-third">
					<div class="aui-column-content-third">
						<h4>UL.icons</h4>
						<ul class="icon">
							<li><span class="aui-icon aui-icon-check"></span>tation ullamcorper suscipit lobortis</li>
							<li><span class="aui-icon aui-icon-check"></span>Nam liber tempor cum soluta nobis</li>
							<li><span class="aui-icon aui-icon-check"></span>imperdiet doming id quod mazim</li>
							<li><span class="aui-icon aui-icon-check"></span>suscipit lobortis nisl ut aliquip ex</li>
						</ul>
					</div>
				</div>
				<div class="aui-w25 aui-column aui-column-last">
					<div class="aui-column-content-last">
						<h4>UL.alt</h4>
						<ul class="alt">
							<li><span class="carat"></span>tation ullamcorper suscipit lobortis</li>
							<li><span class="close"></span>Nam liber tempor cum soluta nobis</li>
							<li><span class="signal"></span>imperdiet doming id quod mazim</li>
							<li><span class="alert"></span>suscipit lobortis nisl ut aliquip ex</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h4&gt;Unordered List&lt;/h4&gt;
&lt;ul&gt;
	&lt;li&gt;tation ullamcorper suscipit lobortis&lt;/li&gt;
	&lt;li&gt;Nam liber tempor cum soluta nobis&lt;/li&gt;
	&lt;li&gt;imperdiet doming id quod mazim&lt;/li&gt;
	&lt;li&gt;suscipit lobortis nisl ut aliquip ex&lt;/li&gt;
&lt;/ul&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h4&gt;Ordered List&lt;/h4&gt;
&lt;ol&gt;
	&lt;li&gt;tation ullamcorper suscipit lobortis&lt;/li&gt;
	&lt;li&gt;Nam liber tempor cum soluta nobis&lt;/li&gt;
	&lt;li&gt;imperdiet doming id quod mazim&lt;/li&gt;
	&lt;li&gt;suscipit lobortis nisl ut aliquip ex&lt;/li&gt;
&lt;/ol&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h4&gt;UL.icons&lt;/h4&gt;
&lt;ul class=&quot;icon&quot;&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-check&quot;&gt;&lt;/span&gt;tation ullamcorper suscipit lobortis&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-check&quot;&gt;&lt;/span&gt;Nam liber tempor cum soluta nobis&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-check&quot;&gt;&lt;/span&gt;imperdiet doming id quod mazim&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-check&quot;&gt;&lt;/span&gt;suscipit lobortis nisl ut aliquip ex&lt;/li&gt;
&lt;/ul&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h4&gt;UL.alt&lt;/h4&gt;
&lt;ul class=&quot;alt&quot;&gt;
	&lt;li&gt;&lt;span class=&quot;carat&quot;&gt;&lt;/span&gt;tation ullamcorper suscipit lobortis&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;close&quot;&gt;&lt;/span&gt;Nam liber tempor cum soluta nobis&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;signal&quot;&gt;&lt;/span&gt;imperdiet doming id quod mazim&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;alert&quot;&gt;&lt;/span&gt;suscipit lobortis nisl ut aliquip ex&lt;/li&gt;
&lt;/ul&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Navigation Portlet</h2>
<div class="markupTabs">
	<ul class="aui-tabview-list aui-widget-hd tab-list">
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Navigation Example</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Navigation setting</a></li>
	</ul>

	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<div class="aui-layout-content">
				<div class="aui-w33 aui-column aui-column-first">
					<div class="aui-column-content-first">
						<liferay-ui:navigation
							bulletStyle="dots"
							displayStyle="[custom]"
							headerType="root-layout"
							includedLayouts="all"
							nestedChildren="true"
							rootLayoutLevel="0"
							rootLayoutType="absolute"
						/>
					</div>
					<div class="aui-column-content-last">
						<liferay-ui:navigation
							bulletStyle="dots"
							displayStyle="defaultBulletStyle"
							headerType="root-layout"
							includedLayouts="current"
							nestedChildren="true"
							rootLayoutLevel="0"
							rootLayoutType="absolute"
						/>
					</div>
				</div>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
Navigation Portlet 1
			</pre>
		</div>
	</div>
</div>

<h2>Tables</h2>
<p>Don't have AUI examples of tables.</p>

<h2>Tooltips</h2>
<div class="markupTabs">
	<ul class="aui-tabview-list aui-widget-hd tab-list">
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Tooltips Example</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Sharing Trigger</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">With Image</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Video Preview</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">No Arrow</a></li>
	</ul>

	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<div class="aui-layout-content">
				<div class="aui-w25 aui-column aui-column-first">
					<div class="aui-column-content-first">
						<h6>Sharing Trigger</h6>
						<a href="javascript:void(0);" class="t1" title="Here's a sample Tooltip. The pointer requires no images! First trigger.">Tooltip - Sharing the same trigger, content from title attribute</a>
						<br/>
						<a href="javascript:void(0);" class="t1" title="Here's a sample Tooltip. The pointer requires no images! Second trigger.">Tooltip - Sharing the same trigger, content from title attribute</a>
					</div>
				</div>
				<div class="aui-w25 aui-column aui-column-second">
					<div class="aui-column-content-second">
						<h6>With Image</h6>
						<p><a href="javascript:void(0);" class="t2">Tooltip - With Image</a>
						<br/>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
				</div>
				<div class="aui-w25 aui-column aui-column-third">
					<div class="aui-column-content-third">
						<h6>Video Preview</h6>
						<p><a href="javascript:void(0);" class="t4">Tooltip - Video Preview</a>
						<br/>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
				</div>
				<div class="aui-w25 aui-column aui-column-last">
					<div class="aui-column-content-last">
						<h6>No Arrow</h6>
						<p><a href="javascript:void(0);" class="t3">Tooltip - Simple tooltip without arrow and no animation</a>
						<br/>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h6&gt;Sharing Trigger&lt;/h6&gt;
&lt;a href=&quot;javascript:void(0);&quot; class=&quot;t1&quot; title=&quot;Here's a sample Tooltip. The pointer requires no images! First trigger.&quot;&gt;Tooltip - Sharing the same trigger, content from title attribute&lt;/a&gt;
&lt;br/&gt;
&lt;a href=&quot;javascript:void(0);&quot; class=&quot;t1&quot; title=&quot;Here's a sample Tooltip. The pointer requires no images! Second trigger.&quot;&gt;Tooltip - Sharing the same trigger, content from title attribute&lt;/a&gt;

&lt;script src=&quot;../../build/aui/aui.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;
&lt;script type=&quot;text/javascript&quot;&gt;

AUI().ready('aui-tooltip', 'aui-io-plugin', function(A) {
	var t1 = new A.Tooltip({
		trigger: '.t1',
		align: { points: [ 'bc', 'tc' ] },
		title: true
	})
	.render();
});
&lt;/script&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h6&gt;With Image&lt;/h6&gt;
&lt;p&gt;&lt;a href=&quot;javascript:void(0);&quot; class=&quot;t2&quot;&gt;Tooltip - With Image&lt;/a&gt;
&lt;br/&gt;
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;

&lt;script src=&quot;../../build/aui/aui.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;
&lt;script type=&quot;text/javascript&quot;&gt;

AUI().ready('aui-tooltip', 'aui-io-plugin', function(A) {

	var t2 = new A.Tooltip({
		trigger: '.t2',
		bodyContent: '&lt;img src=&quot;http://placehold.it/182x154/98BF0D/1F1A16/&amp;text=Image+Example&quot; /&gt;&lt;br/&gt;&lt;div style=&quot;text-align: center;&quot;&gt;Image Example&lt;/div&gt;',
	})
	.render();
});
&lt;/script&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h6&gt;Video Preview&lt;/h6&gt;
&lt;p&gt;&lt;a href=&quot;javascript:void(0);&quot; class=&quot;t4&quot;&gt;Tooltip - Video Preview&lt;/a&gt;
&lt;br/&gt;
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;

&lt;script src=&quot;../../build/aui/aui.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;
&lt;script type=&quot;text/javascript&quot;&gt;

AUI().ready('aui-tooltip', 'aui-io-plugin', function(A) {
var t4 = new A.Tooltip({
	trigger: '.t4',
        bodyContent: '&lt;object width=&quot;560&quot; height=&quot;340&quot;&gt;&lt;param name=&quot;movie&quot; value=&quot;http://www.youtube.com/v/PiSxJwB29R8&amp;hl=en&amp;fs=1&amp;&quot;&gt;&lt;/param&gt;&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;&lt;/param&gt;&lt;param name=&quot;allowscriptaccess&quot; value=&quot;always&quot;&gt;&lt;/param&gt;&lt;embed src=&quot;http://www.youtube.com/v/PiSxJwB29R8&amp;hl=en&amp;fs=1&amp;&quot; type=&quot;application/x-shockwave-flash&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; width=&quot;560&quot; height=&quot;340&quot;&gt;&lt;/embed&gt;&lt;/object&gt;',
	})
	.render();
});

&lt;/script&gt;
			</pre>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h6&gt;No Arrow&lt;/h6&gt;
&lt;p&gt;&lt;a href=&quot;javascript:void(0);&quot; class=&quot;t3&quot;&gt;Tooltip - Simple tooltip without arrow and no animation&lt;/a&gt;
&lt;br/&gt;
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;

&lt;script src=&quot;../../build/aui/aui.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;
&lt;script type=&quot;text/javascript&quot;&gt;

AUI().ready('aui-tooltip', 'aui-io-plugin', function(A) {
	var t3 = new A.Tooltip({
		trigger: '.t3',
		align: { points: [ 'lc', 'rc' ] },
		showArrow: false,
		bodyContent: 'Simple tooltip without arrow! No animation.'
	})
	.render();
});

&lt;/script&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Horizontal Rules</h2>
<div class="markupTabs">
	<ul class="aui-tabview-list aui-widget-hd tab-list">
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Horizontal Rules Example</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">HTML</a></li>
	</ul>

	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<div class="aui-layout-content">
				<div class="aui-w33 aui-column aui-column-first">
					<div class="aui-column-content-first">
						<h4>HR</h4>
						<hr />
					</div>
				</div>
				<div class="aui-w33 aui-column aui-column-second">
					<div class="aui-column-content-second">
						<h4>HR.alt1</h4>
						<hr class="alt1" />
					</div>
				</div>
				<div class="aui-w33 aui-column aui-column-third">
					<div class="aui-column-content-third">
						<h4>HR.alt2</h4>
						<hr class="alt2" />
					</div>
				</div>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h4&gt;HR&lt;/h4&gt;
&lt;hr /&gt;

&lt;h4&gt;HR.alt1&lt;/h4&gt;
&lt;hr class=&quot;alt1&quot; /&gt;

&lt;h4&gt;HR.alt1&lt;/h4&gt;
&lt;hr class=&quot;alt1&quot; /&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Icons</h2>
<div class="markupTabs">
	<ul class="aui-tabview-list aui-widget-hd tab-list">
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Icon Example</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Icon Code</a></li>
	</ul>
	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<ul class="icon-example">
				<li><span class="aui-icon aui-icon-carat-1-t"></span></li>
				<li><span class="aui-icon aui-icon-carat-1-tr"></span></li>
				<li><span class="aui-icon aui-icon-carat-1-r"></span></li>
				<li><span class="aui-icon aui-icon-carat-1-br"></span></li>
				<li><span class="aui-icon aui-icon-carat-1-bl"></span></li>
				<li><span class="aui-icon aui-icon-carat-1-l"></span></li>
				<li><span class="aui-icon aui-icon-carat-1-tl"></span></li>
				<li><span class="aui-icon aui-icon-carat-2-t-b"></span></li>
				<li><span class="aui-icon aui-icon-carat-2-r-1"></span></li>
				<li><span class="aui-icon aui-icon-triangle-1-t"></span></li>
				<li><span class="aui-icon aui-icon-triangle-1-tr"></span></li>
				<li><span class="aui-icon aui-icon-triangle-1-r"></span></li>
				<li><span class="aui-icon aui-icon-triangle-1-br"></span></li>
				<li><span class="aui-icon aui-icon-triangle-1-b"></span></li>
				<li><span class="aui-icon aui-icon-triangle-1-bl"></span></li>
				<li><span class="aui-icon aui-icon-triangle-1-l"></span></li>
				<li><span class="aui-icon aui-icon-triangle-1-tl"></span></li>
				<li><span class="aui-icon aui-icon-triangle-2-t-b"></span></li>
				<li><span class="aui-icon aui-icon-triangle-2-r-1"></span></li>
				<li><span class="aui-icon aui-icon-arrow-1-t"></span></li>
				<li><span class="aui-icon aui-icon-arrow-1-tr"></span></li>
				<li><span class="aui-icon aui-icon-arrow-1-r"></span></li>
				<li><span class="aui-icon aui-icon-arrow-1-br"></span></li>
				<li><span class="aui-icon aui-icon-arrow-1-b"></span></li>
				<li><span class="aui-icon aui-icon-arrow-1-bl"></span></li>
				<li><span class="aui-icon aui-icon-arrow-1-l"></span></li>
				<li><span class="aui-icon aui-icon-arrow-1-tl"></span></li>
				<li><span class="aui-icon aui-icon-arrow-2-t-b"></span></li>
				<li><span class="aui-icon aui-icon-arrow-2-tr-bl"></span></li>
				<li><span class="aui-icon aui-icon-arrow-2-r-l"></span></li>
				<li><span class="aui-icon aui-icon-arrow-2-br-tl"></span></li>
				<li><span class="aui-icon aui-icon-arrowstop-1-t"></span></li>
				<li><span class="aui-icon aui-icon-arrowstop-1-r"></span></li>
				<li><span class="aui-icon aui-icon-arrowstop-1-b"></span></li>
				<li><span class="aui-icon aui-icon-arrowstop-1-l"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-1-t"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-1-tr"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-1-r"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-1-br"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-1-b"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-1-bl"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-1-l"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-1-tl"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-2-t-b"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-2-tr-bl"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-2-r-1"></span></li>
				<li><span class="aui-icon aui-icon-arrowthick-2-br-tl"></span></li>
				<li><span class="aui-icon aui-icon-arrowthickstop-1-t"></span></li>
				<li><span class="aui-icon aui-icon-arrowthickstop-1-r"></span></li>
				<li><span class="aui-icon aui-icon-arrowthickstop-1-b"></span></li>
				<li><span class="aui-icon aui-icon-arrowthickstop-1-l"></span></li>
				<li><span class="aui-icon aui-icon-arrowreturnthick-1-l"></span></li>
				<li><span class="aui-icon aui-icon-arrowreturnthick-1-t"></span></li>
				<li><span class="aui-icon aui-icon-arrowreturnthick-1-r"></span></li>
				<li><span class="aui-icon aui-icon-arrowreturnthick-1-b"></span></li>
				<li><span class="aui-icon aui-icon-arrowreturn-1-l"></span></li>
				<li><span class="aui-icon aui-icon-arrowreturn-1-t"></span></li>
				<li><span class="aui-icon aui-icon-arrowreturn-1-r"></span></li>
				<li><span class="aui-icon aui-icon-arrowreturn-1-b"></span></li>
				<li><span class="aui-icon aui-icon-arrowrefresh-1-l"></span></li>
				<li><span class="aui-icon aui-icon-arrowrefresh-1-t"></span></li>
				<li><span class="aui-icon aui-icon-arrowrefresh-1-r"></span></li>
				<li><span class="aui-icon aui-icon-arrowrefresh-1-b"></span></li>
				<li><span class="aui-icon aui-icon-arrow-4"></span></li>
				<li><span class="aui-icon aui-icon-arrow-4-diag"></span></li>
				<li><span class="aui-icon aui-icon-extlink"></span></li>
				<li><span class="aui-icon aui-icon-newwin"></span></li>
				<li><span class="aui-icon aui-icon-refresh"></span></li>
				<li><span class="aui-icon aui-icon-shuffle"></span></li>
				<li><span class="aui-icon aui-icon-transfer-r-1"></span></li>
				<li><span class="aui-icon aui-icon-transferthick-r-1"></span></li>
				<li><span class="aui-icon aui-icon-folder-collapsed"></span></li>
				<li><span class="aui-icon aui-icon-folder-open"></span></li>
				<li><span class="aui-icon aui-icon-document"></span></li>
				<li><span class="aui-icon aui-icon-document-b"></span></li>
				<li><span class="aui-icon aui-icon-note"></span></li>
				<li><span class="aui-icon aui-icon-mail-closed"></span></li>
				<li><span class="aui-icon aui-icon-mail-open"></span></li>
				<li><span class="aui-icon aui-icon-suitcase"></span></li>
				<li><span class="aui-icon aui-icon-comment"></span></li>
				<li><span class="aui-icon aui-icon-person"></span></li>
				<li><span class="aui-icon aui-icon-print"></span></li>
				<li><span class="aui-icon aui-icon-trash"></span></li>
				<li><span class="aui-icon aui-icon-locked"></span></li>
				<li><span class="aui-icon aui-icon-unlocked"></span></li>
				<li><span class="aui-icon aui-icon-bookmark"></span></li>
				<li><span class="aui-icon aui-icon-tag"></span></li>
				<li><span class="aui-icon aui-icon-home"></span></li>
				<li><span class="aui-icon aui-icon-flag"></span></li>
				<li><span class="aui-icon aui-icon-calendar"></span></li>
				<li><span class="aui-icon aui-icon-cart"></span></li>
				<li><span class="aui-icon aui-icon-pencil"></span></li>
				<li><span class="aui-icon aui-icon-clock"></span></li>
				<li><span class="aui-icon aui-icon-disk"></span></li>
				<li><span class="aui-icon aui-icon-calculator"></span></li>
				<li><span class="aui-icon aui-icon-zoomin"></span></li>
				<li><span class="aui-icon aui-icon-zoomout"></span></li>
				<li><span class="aui-icon aui-icon-search"></span></li>
				<li><span class="aui-icon aui-icon-wrench"></span></li>
				<li><span class="aui-icon aui-icon-gear"></span></li>
				<li><span class="aui-icon aui-icon-heart"></span></li>
				<li><span class="aui-icon aui-icon-star"></span></li>
				<li><span class="aui-icon aui-icon-link"></span></li>
				<li><span class="aui-icon aui-icon-cancel"></span></li>
				<li><span class="aui-icon aui-icon-plus"></span></li>
				<li><span class="aui-icon aui-icon-plusthick"></span></li>
				<li><span class="aui-icon aui-icon-minus"></span></li>
				<li><span class="aui-icon aui-icon-minusthick"></span></li>
				<li><span class="aui-icon aui-icon-close"></span></li>
				<li><span class="aui-icon aui-icon-closethick"></span></li>
				<li><span class="aui-icon aui-icon-key"></span></li>
				<li><span class="aui-icon aui-icon-lightbulb"></span></li>
				<li><span class="aui-icon aui-icon-scissors"></span></li>
				<li><span class="aui-icon aui-icon-clipboard"></span></li>
				<li><span class="aui-icon aui-icon-copy"></span></li>
				<li><span class="aui-icon aui-icon-contact"></span></li>
				<li><span class="aui-icon aui-icon-image"></span></li>
				<li><span class="aui-icon aui-icon-video"></span></li>
				<li><span class="aui-icon aui-icon-script"></span></li>
				<li><span class="aui-icon aui-icon-alert"></span></li>
				<li><span class="aui-icon aui-icon-info"></span></li>
				<li><span class="aui-icon aui-icon-notice"></span></li>
				<li><span class="aui-icon aui-icon-help"></span></li>
				<li><span class="aui-icon aui-icon-check"></span></li>
				<li><span class="aui-icon aui-icon-bullet"></span></li>
				<li><span class="aui-icon aui-icon-radio-off"></span></li>
				<li><span class="aui-icon aui-icon-radio-on"></span></li>
				<li><span class="aui-icon aui-icon-pin-l"></span></li>
				<li><span class="aui-icon aui-icon-pin-b"></span></li>
				<li><span class="aui-icon aui-icon-play"></span></li>
				<li><span class="aui-icon aui-icon-pause"></span></li>
				<li><span class="aui-icon aui-icon-seek-next"></span></li>
				<li><span class="aui-icon aui-icon-seek-prev"></span></li>
				<li><span class="aui-icon aui-icon-seek-end"></span></li>
				<li><span class="aui-icon aui-icon-seek-first"></span></li>
				<li><span class="aui-icon aui-icon-stop"></span></li>
				<li><span class="aui-icon aui-icon-eject"></span></li>
				<li><span class="aui-icon aui-icon-volume-off"></span></li>
				<li><span class="aui-icon aui-icon-volume-on"></span></li>
				<li><span class="aui-icon aui-icon-power"></span></li>
				<li><span class="aui-icon aui-icon-signal-diag"></span></li>
				<li><span class="aui-icon aui-icon-signal"></span></li>
				<li><span class="aui-icon aui-icon-battery-0"></span></li>
				<li><span class="aui-icon aui-icon-battery-1"></span></li>
				<li><span class="aui-icon aui-icon-battery-2"></span></li>
				<li><span class="aui-icon aui-icon-battery-3"></span></li>
				<li><span class="aui-icon aui-icon-circle-plus"></span></li>
				<li><span class="aui-icon aui-icon-circle-minus"></span></li>
				<li><span class="aui-icon aui-icon-circle-close"></span></li>
				<li><span class="aui-icon aui-icon-circle-triangle-r"></span></li>
				<li><span class="aui-icon aui-icon-circle-triangle-b"></span></li>
				<li><span class="aui-icon aui-icon-circle-triangle-l"></span></li>
				<li><span class="aui-icon aui-icon-circle-triangle-t"></span></li>
				<li><span class="aui-icon aui-icon-circle-arrow-r"></span></li>
				<li><span class="aui-icon aui-icon-circle-arrow-b"></span></li>
				<li><span class="aui-icon aui-icon-circle-arrow-l"></span></li>
				<li><span class="aui-icon aui-icon-circle-arrow-t"></span></li>
				<li><span class="aui-icon aui-icon-circle-zoomin"></span></li>
				<li><span class="aui-icon aui-icon-circle-zoomout"></span></li>
				<li><span class="aui-icon aui-icon-circle-check"></span></li>
				<li><span class="aui-icon aui-icon-circlesmall-plus"></span></li>
				<li><span class="aui-icon aui-icon-circlesmall-minus"></span></li>
				<li><span class="aui-icon aui-icon-circlesmall-close"></span></li>
				<li><span class="aui-icon aui-icon-squaresmall-plus"></span></li>
				<li><span class="aui-icon aui-icon-squaresmall-minus"></span></li>
				<li><span class="aui-icon aui-icon-squaresmall-close"></span></li>
				<li><span class="aui-icon aui-icon-grip-dotted-vertical"></span></li>
				<li><span class="aui-icon aui-icon-grip-dotted-horizontal"></span></li>
				<li><span class="aui-icon aui-icon-grip-solid-vertical"></span></li>
				<li><span class="aui-icon aui-icon-grip-solid-horizontal"></span></li>
				<li><span class="aui-icon aui-icon-gripsmall-diagonal-br"></span></li>
				<li><span class="aui-icon aui-icon-grip-diagonal-br"></span></li>
				<li><span class="aui-icon aui-icon-loading"></span></li>
			</ul>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;ul class=&quot;icon-example&quot;&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-1-tr&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-1-br&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-1-bl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-1-tl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-2-t-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-carat-2-r-1&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-1-tr&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-1-br&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-1-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-1-bl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-1-tl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-2-t-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-triangle-2-r-1&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-1-tr&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-1-br&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-1-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-1-bl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-1-tl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-2-t-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-2-tr-bl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-2-r-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-2-br-tl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowstop-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowstop-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowstop-1-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowstop-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-1-tr&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-1-br&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-1-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-1-bl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-1-tl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-2-t-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-2-tr-bl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-2-r-1&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthick-2-br-tl&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthickstop-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthickstop-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthickstop-1-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowthickstop-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowreturnthick-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowreturnthick-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowreturnthick-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowreturnthick-1-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowreturn-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowreturn-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowreturn-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowreturn-1-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowrefresh-1-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowrefresh-1-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowrefresh-1-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrowrefresh-1-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-4&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-arrow-4-diag&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-extlink&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-newwin&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-refresh&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-shuffle&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-transfer-r-1&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-transferthick-r-1&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-folder-collapsed&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-folder-open&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-document&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-document-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-note&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-mail-closed&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-mail-open&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-suitcase&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-comment&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-person&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-print&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-trash&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-locked&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-unlocked&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-bookmark&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-tag&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-home&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-flag&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-calendar&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-cart&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-pencil&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-clock&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-disk&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-calculator&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-zoomin&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-zoomout&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-search&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-wrench&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-gear&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-heart&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-star&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-link&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-cancel&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-plus&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-plusthick&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-minus&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-minusthick&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-close&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-closethick&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-key&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-lightbulb&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-scissors&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-clipboard&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-copy&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-contact&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-image&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-video&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-script&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-alert&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-info&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-notice&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-help&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-check&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-bullet&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-radio-off&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-radio-on&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-pin-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-pin-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-play&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-pause&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-seek-next&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-seek-prev&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-seek-end&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-seek-first&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-stop&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-eject&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-volume-off&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-volume-on&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-power&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-signal-diag&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-signal&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-battery-0&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-battery-1&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-battery-2&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-battery-3&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-plus&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-minus&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-close&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-triangle-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-triangle-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-triangle-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-triangle-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-arrow-r&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-arrow-b&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-arrow-l&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-arrow-t&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-zoomin&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-zoomout&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circle-check&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circlesmall-plus&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circlesmall-minus&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-circlesmall-close&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-squaresmall-plus&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-squaresmall-minus&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-squaresmall-close&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-grip-dotted-vertical&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-grip-dotted-horizontal&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-grip-solid-vertical&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-grip-solid-horizontal&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-gripsmall-diagonal-br&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-grip-diagonal-br&quot;&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span class=&quot;aui-icon aui-icon-loading&quot;&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Buttons</h2>
<div class="markupTabs">
	<ul class="aui-tabview-list aui-widget-hd tab-list">
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Button Example</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Button Code</a></li>
	</ul>
	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<div class="button-example">
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-1-t"></span><span class="aui-buttonitem-label">carat-1-t</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-1-tr"></span><span class="aui-buttonitem-label">carat-1-tr</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-1-r"></span><span class="aui-buttonitem-label">carat-1-r</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-1-br"></span><span class="aui-buttonitem-label">carat-1-br</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-1-b"></span><span class="aui-buttonitem-label">carat-1-b</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-1-bl"></span><span class="aui-buttonitem-label">carat-1-bl</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-1-l"></span><span class="aui-buttonitem-label">carat-1-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-1-tl"></span><span class="aui-buttonitem-label">carat-1-tl</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-2-t-b"></span><span class="aui-buttonitem-label">carat-2-t-b</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-carat-2-r-l"></span><span class="aui-buttonitem-label">carat-2-r-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-1-t"></span><span class="aui-buttonitem-label">triangle-1-t</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-1-tr"></span><span class="aui-buttonitem-label">triangle-1-tr</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-1-r"></span><span class="aui-buttonitem-label">triangle-1-r</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-1-br"></span><span class="aui-buttonitem-label">triangle-1-br</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-1-b"></span><span class="aui-buttonitem-label">triangle-1-b</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-1-bl"></span><span class="aui-buttonitem-label">triangle-1-bl</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-1-l"></span><span class="aui-buttonitem-label">triangle-1-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-1-tl"></span><span class="aui-buttonitem-label">triangle-1-tl</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-2-t-b"></span><span class="aui-buttonitem-label">triangle-2-t-b</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-triangle-2-r-l"></span><span class="aui-buttonitem-label">triangle-2-r-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrow-1-t"></span><span class="aui-buttonitem-label">arrow-1-t</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrow-2-t-b"></span><span class="aui-buttonitem-label">arrow-2-t-b</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrowstop-1-r"></span><span class="aui-buttonitem-label">arrowstop-1-r</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrowthick-1-tl"></span><span class="aui-buttonitem-label">arrowthick-1-tl</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrowthick-2-r-l"></span><span class="aui-buttonitem-label">arrowthick-2-r-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrowthickstop-1-b"></span><span class="aui-buttonitem-label">arrowthickstop-1-b</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrowreturnthick-1-l"></span><span class="aui-buttonitem-label">arrowreturnthick-1-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrowreturn-1-r"></span><span class="aui-buttonitem-label">arrowreturn-1-r</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrow-4"></span><span class="aui-buttonitem-label">arrow-4</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-arrow-4-diag"></span><span class="aui-buttonitem-label">arrow-4-diag</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-extlink"></span><span class="aui-buttonitem-label">extlink</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-newwin"></span><span class="aui-buttonitem-label">newwin</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-refresh"></span><span class="aui-buttonitem-label">refresh</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-shuffle"></span><span class="aui-buttonitem-label">shuffle</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-transfer-r-l"></span><span class="aui-buttonitem-label">transfer-r-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-transferthick-r-l"></span><span class="aui-buttonitem-label">transferthick-r-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-folder-collapsed"></span><span class="aui-buttonitem-label">folder-collapsed</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-folder-open"></span><span class="aui-buttonitem-label">folder-open</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-document"></span><span class="aui-buttonitem-label">document</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-document-b"></span><span class="aui-buttonitem-label">document-b</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-note"></span><span class="aui-buttonitem-label">note</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-mail-closed"></span><span class="aui-buttonitem-label">mail-closed</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-mail-open"></span><span class="aui-buttonitem-label">mail-open</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-suitcase"></span><span class="aui-buttonitem-label">suitcase</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-person"></span><span class="aui-buttonitem-label">person</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-print"></span><span class="aui-buttonitem-label">print</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-trash"></span><span class="aui-buttonitem-label">trash</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-locked"></span><span class="aui-buttonitem-label">locked</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-unlocked"></span><span class="aui-buttonitem-label">unlocked</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-comment"></span><span class="aui-buttonitem-label">comment</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-bookmark"></span><span class="aui-buttonitem-label">bookmark</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-tag"></span><span class="aui-buttonitem-label">tag</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-home"></span><span class="aui-buttonitem-label">home</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-flag"></span><span class="aui-buttonitem-label">flag</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-calendar"></span><span class="aui-buttonitem-label">calendar</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-pencil"></span><span class="aui-buttonitem-label">pencil</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-cart"></span><span class="aui-buttonitem-label">cart</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-calculator"></span><span class="aui-buttonitem-label">calculator</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-disk"></span><span class="aui-buttonitem-label">disk</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-clock"></span><span class="aui-buttonitem-label">clock</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-zoomin"></span><span class="aui-buttonitem-label">zoomin</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-zoomout"></span><span class="aui-buttonitem-label">zoomout</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-search"></span><span class="aui-buttonitem-label">search</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-wrench"></span><span class="aui-buttonitem-label">wrench</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-gear"></span><span class="aui-buttonitem-label">gear</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-heart"></span><span class="aui-buttonitem-label">heart</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-star"></span><span class="aui-buttonitem-label">star</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-link"></span><span class="aui-buttonitem-label">link</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-cancel"></span><span class="aui-buttonitem-label">cancel</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-plus"></span><span class="aui-buttonitem-label">plus</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-plusthick"></span><span class="aui-buttonitem-label">plusthick</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-minus"></span><span class="aui-buttonitem-label">minus</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-minusthick"></span><span class="aui-buttonitem-label">minusthick</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-close"></span><span class="aui-buttonitem-label">close</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-closethick"></span><span class="aui-buttonitem-label">closethick</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-key"></span><span class="aui-buttonitem-label">key</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-lightbulb"></span><span class="aui-buttonitem-label">lightbulb</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-scissors"></span><span class="aui-buttonitem-label">scissors</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-clipboard"></span><span class="aui-buttonitem-label">clipboard</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-copy"></span><span class="aui-buttonitem-label">copy</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-image"></span><span class="aui-buttonitem-label">image</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-video"></span><span class="aui-buttonitem-label">video</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-script"></span><span class="aui-buttonitem-label">script</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-alert"></span><span class="aui-buttonitem-label">alert</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-info"></span><span class="aui-buttonitem-label">info</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-notice"></span><span class="aui-buttonitem-label">notice</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-help"></span><span class="aui-buttonitem-label">help</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-check"></span><span class="aui-buttonitem-label">check</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-bullet"></span><span class="aui-buttonitem-label">bullet</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-radio-off"></span><span class="aui-buttonitem-label">radio-off</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-radio-on"></span><span class="aui-buttonitem-label">radio-on</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-pin-l"></span><span class="aui-buttonitem-label">pin-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-pin-b"></span><span class="aui-buttonitem-label">pin-b</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-play"></span><span class="aui-buttonitem-label">play</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-pause"></span><span class="aui-buttonitem-label">pause</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-seek-next"></span><span class="aui-buttonitem-label">seek-next</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-seek-prev"></span><span class="aui-buttonitem-label">seek-prev</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-seek-end"></span><span class="aui-buttonitem-label">seek-end</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-seek-first"></span><span class="aui-buttonitem-label">seek-first</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-stop"></span><span class="aui-buttonitem-label">stop</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-eject"></span><span class="aui-buttonitem-label">eject</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-volume-off"></span><span class="aui-buttonitem-label">volume-off</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-volume-on"></span><span class="aui-buttonitem-label">volume-on</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-power"></span><span class="aui-buttonitem-label">power</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-signal-diag"></span><span class="aui-buttonitem-label">signal-diag</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-signal"></span><span class="aui-buttonitem-label">signal</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-battery-0"></span><span class="aui-buttonitem-label">battery-0</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-battery-1"></span><span class="aui-buttonitem-label">battery-1</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-battery-2"></span><span class="aui-buttonitem-label">battery-2</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-battery-3"></span><span class="aui-buttonitem-label">battery-3</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circle-plus"></span><span class="aui-buttonitem-label">circle-plus</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circle-minus"></span><span class="aui-buttonitem-label">circle-minus</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circle-close"></span><span class="aui-buttonitem-label">circle-close</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circle-triangle-r"></span><span class="aui-buttonitem-label">circle-triangle-r</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circle-arrow-l"></span><span class="aui-buttonitem-label">circle-arrow-l</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circle-zoomin"></span><span class="aui-buttonitem-label">circle-zoomin</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circle-check"></span><span class="aui-buttonitem-label">circle-check</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circlesmall-plus"></span><span class="aui-buttonitem-label">circlesmall-plus</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-circlesmall-minus"></span><span class="aui-buttonitem-label">circlesmall-minus</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-grip-dotted-vertical"></span><span class="aui-buttonitem-label">grip-dotted-vertical</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-grip-dotted-horizontal"></span><span class="aui-buttonitem-label">grip-dotted-horizontal</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-grip-solid-vertical"></span><span class="aui-buttonitem-label">grip-solid-vertical</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-grip-solid-horizontal"></span><span class="aui-buttonitem-label">grip-solid-horizontal</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-gripsmall-diagonal-br"></span><span class="aui-buttonitem-label">gripsmall-diagonal-br</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-grip-diagonal-br"></span><span class="aui-buttonitem-label">grip-diagonal-br</span></button>
				<button type="button" class="aui-buttonitem-content" title=""><span class="aui-buttonitem-icon aui-icon aui-icon-loading"></span><span class="aui-buttonitem-label">loading</span></button>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;div class=&quot;button-example&quot;&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-1-t&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-1-t&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-1-tr&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-1-tr&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-1-r&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-1-r&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-1-br&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-1-br&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-1-b&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-1-b&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-1-bl&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-1-bl&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-1-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-1-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-1-tl&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-1-tl&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-2-t-b&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-2-t-b&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-carat-2-r-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;carat-2-r-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-1-t&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-1-t&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-1-tr&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-1-tr&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-1-r&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-1-r&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-1-br&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-1-br&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-1-b&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-1-b&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-1-bl&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-1-bl&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-1-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-1-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-1-tl&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-1-tl&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-2-t-b&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-2-t-b&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-triangle-2-r-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;triangle-2-r-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrow-1-t&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrow-1-t&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrow-2-t-b&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrow-2-t-b&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrowstop-1-r&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrowstop-1-r&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrowthick-1-tl&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrowthick-1-tl&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrowthick-2-r-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrowthick-2-r-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrowthickstop-1-b&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrowthickstop-1-b&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrowreturnthick-1-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrowreturnthick-1-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrowreturn-1-r&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrowreturn-1-r&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrow-4&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrow-4&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-arrow-4-diag&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;arrow-4-diag&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-extlink&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;extlink&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-newwin&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;newwin&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-refresh&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;refresh&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-shuffle&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;shuffle&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-transfer-r-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;transfer-r-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-transferthick-r-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;transferthick-r-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-folder-collapsed&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;folder-collapsed&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-folder-open&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;folder-open&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-document&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;document&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-document-b&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;document-b&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-note&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;note&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-mail-closed&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;mail-closed&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-mail-open&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;mail-open&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-suitcase&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;suitcase&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-person&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;person&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-print&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;print&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-trash&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;trash&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-locked&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;locked&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-unlocked&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;unlocked&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-comment&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;comment&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-bookmark&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;bookmark&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-tag&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;tag&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-home&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;home&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-flag&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;flag&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-calendar&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;calendar&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-pencil&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;pencil&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-cart&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;cart&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-calculator&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;calculator&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-disk&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;disk&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-clock&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;clock&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-zoomin&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;zoomin&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-zoomout&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;zoomout&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-search&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;search&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-wrench&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;wrench&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-gear&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;gear&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-heart&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;heart&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-star&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;star&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-link&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;link&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-cancel&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;cancel&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-plus&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;plus&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-plusthick&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;plusthick&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-minus&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;minus&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-minusthick&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;minusthick&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-close&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;close&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-closethick&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;closethick&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-key&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;key&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-lightbulb&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;lightbulb&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-scissors&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;scissors&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-clipboard&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;clipboard&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-copy&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;copy&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-image&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;image&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-video&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;video&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-script&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;script&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-alert&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;alert&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-info&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;info&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-notice&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;notice&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-help&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;help&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-check&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;check&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-bullet&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;bullet&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-radio-off&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;radio-off&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-radio-on&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;radio-on&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-pin-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;pin-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-pin-b&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;pin-b&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-play&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;play&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-pause&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;pause&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-seek-next&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;seek-next&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-seek-prev&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;seek-prev&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-seek-end&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;seek-end&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-seek-first&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;seek-first&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-stop&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;stop&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-eject&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;eject&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-volume-off&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;volume-off&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-volume-on&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;volume-on&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-power&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;power&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-signal-diag&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;signal-diag&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-signal&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;signal&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-battery-0&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;battery-0&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-battery-1&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;battery-1&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-battery-2&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;battery-2&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-battery-3&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;battery-3&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circle-plus&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circle-plus&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circle-minus&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circle-minus&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circle-close&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circle-close&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circle-triangle-r&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circle-triangle-r&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circle-arrow-l&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circle-arrow-l&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circle-zoomin&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circle-zoomin&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circle-check&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circle-check&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circlesmall-plus&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circlesmall-plus&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-circlesmall-minus&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;circlesmall-minus&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-grip-dotted-vertical&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;grip-dotted-vertical&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-grip-dotted-horizontal&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;grip-dotted-horizontal&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-grip-solid-vertical&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;grip-solid-vertical&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-grip-solid-horizontal&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;grip-solid-horizontal&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-gripsmall-diagonal-br&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;gripsmall-diagonal-br&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-grip-diagonal-br&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;grip-diagonal-br&lt;/span&gt;&lt;/button&gt;
	&lt;button type=&quot;button&quot; class=&quot;aui-buttonitem-content&quot; title=&quot;&quot;&gt;&lt;span class=&quot;aui-buttonitem-icon aui-icon aui-icon-loading&quot;&gt;&lt;/span&gt;&lt;span class=&quot;aui-buttonitem-label&quot;&gt;loading&lt;/span&gt;&lt;/button&gt;
&lt;/div&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Tabs</h2>
<div class="markupTabs">
	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<ul class="aui-tabview-list aui-widget-hd tab-list">
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Tabs Example</a></li>
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Tabs Code</a></li>
			</ul>
			<div class="markupTabs">
				<ul class="aui-tabview-list aui-widget-hd tab-list">
					<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">First Tab</a></li>
					<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Second Tab</a></li>
					<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Third Tab</a></li>
				</ul>

				<div class="aui-tabview-content aui-widget-bd tab-content">
					<div class="aui-tabview-content-item">
						<h5>1. First Tab</h5><br />
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</div>
					<div class="aui-tabview-content-item">
						<h5>2. Second Tab</h5><br />
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</div>
					<div class="aui-tabview-content-item">
						<h5>3.Third Tab</h5><br />
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</div>
				</div>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;div class=&quot;markupTabs&quot;&gt;
	&lt;ul class=&quot;aui-tabview-list aui-widget-hd tab-list&quot;&gt;
		&lt;li class=&quot;aui-tab&quot;&gt;&lt;a class=&quot;aui-tab-label&quot; href=&quot;javascript:;&quot;&gt;Hello A&lt;/a&gt;&lt;/li&gt;
		&lt;li class=&quot;aui-tab&quot;&gt;&lt;a class=&quot;aui-tab-label&quot; href=&quot;javascript:;&quot;&gt;Hello B&lt;/a&gt;&lt;/li&gt;
		&lt;li class=&quot;aui-tab&quot;&gt;&lt;a class=&quot;aui-tab-label&quot; href=&quot;javascript:;&quot;&gt;Hello C&lt;/a&gt;&lt;/li&gt;
	&lt;/ul&gt;

	&lt;div class=&quot;aui-tabview-content aui-widget-bd tab-content&quot;&gt;
		&lt;div class=&quot;aui-tabview-content-item&quot;&gt;
			&lt;h5&gt;1. New tab content&lt;/h5&gt;&lt;br /&gt;
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		&lt;/div&gt;
		&lt;div class=&quot;aui-tabview-content-item&quot;&gt;
			&lt;h5&gt;2. New tab content&lt;/h5&gt;&lt;br /&gt;
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		&lt;/div&gt;
		&lt;div class=&quot;aui-tabview-content-item&quot;&gt;
			&lt;h5&gt;3. New tab content&lt;/h5&gt;&lt;br /&gt;
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;

&lt;script type=&quot;text/javascript&quot;&gt;
AUI().ready( 'aui-tabs', 'substitute', function(A) {
	var tabs = A.all('.markupTabs');
	tabs.each( function(item){
		var tab = new A.TabView(
			{
				boundingBox: item,
				listNode: item.one('.tab-list'),
				contentNode: item.one('.tab-content')
			}
		).render();
	});
});
&lt;/script&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Breadcrumb Portlet</h2>
<div class="markupTabs">
	<ul class="aui-tabview-list aui-widget-hd tab-list">
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Breadcrumb Example</a></li>
		<li class="aui-tab"> <a class="aui-tab-label" href="javascript:;">Breadcrumb setting</a></li>
	</ul>

	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<div class="aui-layout-content">
				<div class="aui-w33 aui-column aui-column-first">
					<div class="aui-column-content-only">
						<liferay-ui:breadcrumb
							displayStyle="horizontal"
						/>
					</div>
				</div>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;h4&gt;HR&lt;/h4&gt;
&lt;hr /&gt;

&lt;h4&gt;HR.alt1&lt;/h4&gt;
&lt;hr class=&quot;alt1&quot; /&gt;

&lt;h4&gt;HR.alt1&lt;/h4&gt;
&lt;hr class=&quot;alt1&quot; /&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Columns</h2>
<div class="markupTabs">
	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<ul class="aui-tabview-list aui-widget-hd tab-list">
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Column Example</a></li>
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Column Code</a></li>
			</ul>
			<div class="aui-layout-content">
				<div class="aui-column aui-w25 aui-column-first">
						<div class="aui-column-content aui-column-content-first">
							<h5>Column 1 (25%)</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
				</div>
				<div class="aui-column aui-w75 aui-column-last">
					<div class="aui-column-content aui-column-content-last">
						<h5>Column 2 (75%)</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						<p>
							<ul>
								<li>Item 1</li>
								<li>Item 2</li>
								<li>Item 3</li>
								<li>Item 4</li>
								<li>Item 5</li>
								<li>Item 6</li>
								<li>Item 7</li>
							</ul>
						</p>
					</div>
				</div>
			</div>

				<div class="aui-layout-content">
					<div class="aui-column aui-w25 aui-column-first">
						<div class="aui-column-content aui-column-content-first">
							<h5>Column 3 (25%)</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<p>
								<ul>
									<li>Item 1</li>
									<li>Item 2</li>
									<li>Item 3</li>
									<li>Item 4</li>
									<li>Item 5</li>
									<li>Item 6</li>
									<li>Item 7</li>
								</ul>
							</p>
						</div>
					</div>
					<div class="aui-column aui-w50 center">
						<div class="aui-column-content aui-column-content-center">
							<h5>Column 4 (50% container)</h5>
							<div class="aui-layout-content">
								<div class="aui-column aui-w60 aui-column-first">
									<div class="aui-column-content aui-column-content-first">
										<h6>Sub-Column 1 (60%)</h6>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
									</div>
								</div>
								<div class="aui-column aui-w40 aui-column-last">
									<div class="aui-column-content aui-column-content-last">
											<h6>Sub-Column 2 (40%)</h6>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="aui-column aui-w25 aui-column-last">
						<div class="aui-column-content aui-column-content-last">
							<h5>Column 5 (25%)</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

						</div>
					</div>
				</div>

				<div class="aui-layout-content">
					<div class="aui-column aui-w50 aui-column-first">
						<div class="aui-column-content aui-column-content-first">
							<h5>Column 6 (50%)</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

						</div>
					</div>

					<div class="aui-column aui-w50 aui-column-last">
						<div class="aui-column-content aui-column-content-last">
							<h5>Column 7 (50%)</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

						</div>
					</div>

					<div class="aui-column aui-w33 aui-column-first">
						<div class="aui-column-content aui-column-content-first">
							<h5>Column 8 (33%)</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
					</div>
					<div class="aui-column aui-w66 aui-column-last">
						<div class="aui-column-content aui-column-content-last">
							<h5>Column 9 (66%)</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
					</div>
				</div>
			</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;div class=&quot;aui-layout-content&quot;&gt;
	&lt;div class=&quot;aui-column aui-w25 aui-column-first&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-first&quot;&gt;
			&lt;h5&gt;Column 1 (25%)&lt;/h5&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;
		&lt;/div&gt;
	&lt;/div&gt;
	&lt;div class=&quot;aui-column aui-w75 aui-column-last&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-last&quot;&gt;
			&lt;h5&gt;Column 2 (75%)&lt;/h5&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;
			&lt;p&gt;
				&lt;ul&gt;
					&lt;li&gt;Item 1&lt;/li&gt;
					&lt;li&gt;Item 2&lt;/li&gt;
					&lt;li&gt;Item 3&lt;/li&gt;
					&lt;li&gt;Item 4&lt;/li&gt;
					&lt;li&gt;Item 5&lt;/li&gt;
					&lt;li&gt;Item 6&lt;/li&gt;
					&lt;li&gt;Item 7&lt;/li&gt;
				&lt;/ul&gt;
			&lt;/p&gt;
		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;

&lt;div class=&quot;aui-layout-content&quot;&gt;
	&lt;div class=&quot;aui-column aui-w25 aui-column-first&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-first&quot;&gt;
			&lt;h5&gt;Column 3 (25%)&lt;/h5&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;
			&lt;p&gt;
				&lt;ul&gt;
					&lt;li&gt;Item 1&lt;/li&gt;
					&lt;li&gt;Item 2&lt;/li&gt;
					&lt;li&gt;Item 3&lt;/li&gt;
					&lt;li&gt;Item 4&lt;/li&gt;
					&lt;li&gt;Item 5&lt;/li&gt;
					&lt;li&gt;Item 6&lt;/li&gt;
					&lt;li&gt;Item 7&lt;/li&gt;
				&lt;/ul&gt;
			&lt;/p&gt;
		&lt;/div&gt;
	&lt;/div&gt;
	&lt;div class=&quot;aui-column aui-w50 center&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-center&quot;&gt;
			&lt;h5&gt;Column 4 (50% container)&lt;/h5&gt;
			&lt;div class=&quot;aui-layout-content&quot;&gt;
				&lt;div class=&quot;aui-column aui-w60 aui-column-first&quot;&gt;
					&lt;div class=&quot;aui-column-content aui-column-content-first&quot;&gt;
						&lt;h6&gt;Sub-Column 1 (60%)&lt;/h6&gt;
						&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;
					&lt;/div&gt;
				&lt;/div&gt;
				&lt;div class=&quot;aui-column aui-w40 aui-column-last&quot;&gt;
					&lt;div class=&quot;aui-column-content aui-column-content-last&quot;&gt;
							&lt;h6&gt;Sub-Column 2 (40%)&lt;/h6&gt;
						&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;

					&lt;/div&gt;
				&lt;/div&gt;
			&lt;/div&gt;
		&lt;/div&gt;
	&lt;/div&gt;
	&lt;div class=&quot;aui-column aui-w25 aui-column-last&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-last&quot;&gt;
			&lt;h5&gt;Column 5 (25%)&lt;/h5&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;

		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;

&lt;div class=&quot;aui-layout-content&quot;&gt;
	&lt;div class=&quot;aui-column aui-w50 aui-column-first&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-first&quot;&gt;
			&lt;h5&gt;Column 6 (50%)&lt;/h5&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;

		&lt;/div&gt;
	&lt;/div&gt;

	&lt;div class=&quot;aui-column aui-w50 aui-column-last&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-last&quot;&gt;
			&lt;h5&gt;Column 7 (50%)&lt;/h5&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;

		&lt;/div&gt;
	&lt;/div&gt;

	&lt;div class=&quot;aui-column aui-w33 aui-column-first&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-first&quot;&gt;
			&lt;h5&gt;Column 8 (33%)&lt;/h5&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;
		&lt;/div&gt;
	&lt;/div&gt;
	&lt;div class=&quot;aui-column aui-w66 aui-column-last&quot;&gt;
		&lt;div class=&quot;aui-column-content aui-column-content-last&quot;&gt;
			&lt;h5&gt;Column 9 (66%)&lt;/h5&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;
			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;
		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;
			</pre>
		</div>
	</div>
</div>


<h2>Images</h2>
<div class="markupTabs">
	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<ul class="aui-tabview-list aui-widget-hd tab-list">
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Image Viewer Example</a></li>
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Image Viewer Code</a></li>
			</ul>
			<div id="gallery1" class="gallery">
				<a href="http://placehold.it/640x420/789723/ffffff/&text=Image+1" title="Image 1">
					<img class="picture" src="http://placehold.it/240x120/789723/ffffff/&text=Image+1" />
				</a>
				<a href="http://placehold.it/640x420/E8117F/ffffff/&text=Image+2" title="Image 2">
					<img class="picture" src="http://placehold.it/240x120/E8117F/ffffff/&text=Image+2" />
				</a>
				<a href="http://placehold.it/640x420/6BB2FB/ffffff/&text=Image+3" title="Image 3">
					<img class="picture" src="http://placehold.it/240x120/6BB2FB/ffffff/&text=Image+3" />
				</a>
				<a href="http://placehold.it/640x420/FFA142/ffffff/&text=Image+4" title="Image 4">
					<img class="picture" src="http://placehold.it/240x120/FFA142/ffffff/&text=Image+4" />
				</a>
				<a href="http://placehold.it/640x420/86BC00/ffffff/&text=Image+5" title="Image 5">
					<img class="picture" src="http://placehold.it/240x120/86BC00/ffffff/&text=Image+5" />
				</a>
				<a href="http://placehold.it/640x420/DC250F/ffffff/&text=Image+6" title="Image 6">
					<img class="picture" src="http://placehold.it/240x120/DC250F/ffffff/&text=Image+6" />
				</a>
				<a href="http://placehold.it/640x420/E4DB0F/ffffff/&text=Image+7" title="Image 7">
					<img class="picture" src="http://placehold.it/240x120/E4DB0F/ffffff/&text=Image+7" />
				</a>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;div id=&quot;gallery1&quot; class=&quot;gallery&quot;&gt;
	&lt;a href=&quot;http://placehold.it/640x420/789723/ffffff/&amp;text=Image+1&quot; title=&quot;Image 1&quot;&gt; &lt;img class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/789723/ffffff/&amp;text=Image+1&quot; /&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/E8117F/ffffff/&amp;text=Image+2&quot; title=&quot;Image 2&quot;&gt;
		&lt;img class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/E8117F/ffffff/&amp;text=Image+2&quot; /&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/6BB2FB/ffffff/&amp;text=Image+3&quot; title=&quot;Image 3&quot;&gt;
		&lt;img class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/6BB2FB/ffffff/&amp;text=Image+3&quot; /&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/FFA142/ffffff/&amp;text=Image+4&quot; title=&quot;Image 4&quot;&gt;
		&lt;img class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/FFA142/ffffff/&amp;text=Image+4&quot; /&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/86BC00/ffffff/&amp;text=Image+5&quot; title=&quot;Image 5&quot;&gt;
		&lt;img class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/86BC00/ffffff/&amp;text=Image+5&quot; /&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/DC250F/ffffff/&amp;text=Image+6&quot; title=&quot;Image 6&quot;&gt;
		&lt;img class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/DC250F/ffffff/&amp;text=Image+6&quot; /&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/E4DB0F/ffffff/&amp;text=Image+7&quot; title=&quot;Image 7&quot;&gt;
		&lt;img class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/E4DB0F/ffffff/&amp;text=Image+7&quot; /&gt;
	&lt;/a&gt;
&lt;/div&gt;

&lt;script type=&quot;text/javascript&quot;&gt;

	AUI().ready('aui-image-viewer-base', function(A) {

	var imageViewer1 = new A.ImageViewer({
		links: '#gallery1 a',
		captionFromTitle: true,
		preloadAllImages: true,
		showInfo: true,
		after: {
			anim: function(event) {
			},
			request: function(event) {
			},
			load: function(event) {
			}
		}
	})
	.render();
	});

&lt;/script&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Image Carousel</h2>
<div class="markupTabs">
	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<ul class="aui-tabview-list aui-widget-hd tab-list">
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Image Carousel Example</a></li>
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Image Carousel Code</a></li>
			</ul>
			<div id="demo">
				<div style="background: url(http://placehold.it/940x260/789723/ffffff/&text=Image+1); width: 940px; height: 260px;" class="aui-carousel-item">Image1</div>
				<div style="background: url(http://placehold.it/940x260/E8117F/ffffff/&text=Image+2); width: 940px; height: 260px;" class="aui-carousel-item">Image2</div>
				<div style="background: url(http://placehold.it/940x260/6BB2FB/ffffff/&text=Image+3); width: 940px; height: 260px;" class="aui-carousel-item">Image3</div>
				<div style="background: url(http://placehold.it/940x260/FFA142/ffffff/&text=Image+4); width: 940px; height: 260px;" class="aui-carousel-item">Image4</div>
				<div style="background: url(http://placehold.it/940x260/86BC00/ffffff/&text=Image+5); width: 940px; height: 260px;" class="aui-carousel-item">Image5</div>
				<div style="background: url(http://placehold.it/940x260/DC250F/ffffff/&text=Image+6); width: 940px; height: 260px;" class="aui-carousel-item">Image6</div>
				<div style="background: url(http://placehold.it/940x260/E4DB0F/ffffff/&text=Image+7); width: 940px; height: 260px;" class="aui-carousel-item">Image7</div>
				<div style="background: url(http://placehold.it/940x260/7400E4/ffffff/&text=Image+8); width: 940px; height: 260px;" class="aui-carousel-item">Image8</div>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;div id=&quot;demo&quot;&gt;
	&lt;div style=&quot;background: url(http://placehold.it/940x260/789723/ffffff/&amp;text=Image+1); width: 940px; height: 260px;&quot; class=&quot;aui-carousel-item&quot;&gt;Image1&lt;/div&gt;
	&lt;div style=&quot;background: url(http://placehold.it/940x260/E8117F/ffffff/&amp;text=Image+2); width: 940px; height: 260px;&quot; class=&quot;aui-carousel-item&quot;&gt;Image2&lt;/div&gt;
	&lt;div style=&quot;background: url(http://placehold.it/940x260/6BB2FB/ffffff/&amp;text=Image+3); width: 940px; height: 260px;&quot; class=&quot;aui-carousel-item&quot;&gt;Image3&lt;/div&gt;
	&lt;div style=&quot;background: url(http://placehold.it/940x260/FFA142/ffffff/&amp;text=Image+4); width: 940px; height: 260px;&quot; class=&quot;aui-carousel-item&quot;&gt;Image4&lt;/div&gt;
	&lt;div style=&quot;background: url(http://placehold.it/940x260/86BC00/ffffff/&amp;text=Image+5); width: 940px; height: 260px;&quot; class=&quot;aui-carousel-item&quot;&gt;Image5&lt;/div&gt;
	&lt;div style=&quot;background: url(http://placehold.it/940x260/DC250F/ffffff/&amp;text=Image+6); width: 940px; height: 260px;&quot; class=&quot;aui-carousel-item&quot;&gt;Image6&lt;/div&gt;
	&lt;div style=&quot;background: url(http://placehold.it/940x260/E4DB0F/ffffff/&amp;text=Image+7); width: 940px; height: 260px;&quot; class=&quot;aui-carousel-item&quot;&gt;Image7&lt;/div&gt;
	&lt;div style=&quot;background: url(http://placehold.it/940x260/7400E4/ffffff/&amp;text=Image+8); width: 940px; height: 260px;&quot; class=&quot;aui-carousel-item&quot;&gt;Image8&lt;/div&gt;
&lt;/div&gt;

&lt;script type=&quot;text/javascript&quot; charset=&quot;utf-8&quot;&gt;

AUI().ready('aui-carousel', function(A) {

	var component = new A.Carousel(
		{
			intervalTime: 1,
			contentBox: '#demo',
			activeIndex: 0,
			height: 260,
			width: 940
		}
	).render();
});

&lt;/script&gt;
</pre>
		</div>
	</div>
</div>

<h2>Media Gallery</h2>
<div class="markupTabs">
	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<ul class="aui-tabview-list aui-widget-hd tab-list">
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Media Gallery Example</a></li>
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Media Gallery Code</a></li>
			</ul>
			<div id="gallery" class="gallery">
				<a href="http://www.youtube.com/watch?v=z-mPuFs4Gls&width=560&height=349" title="Liferay Retreat 2010">
					<img alt="Liferay Retreat 2010 (YouTube movie)" class="picture" src="http://placehold.it/240x120/C8322C/ffffff/&text=YouTube+Video">
				</a>
				<a data-options="width=400&height=300" href="http://vimeo.com/18225907" title="Institucional SEA Liferay Roadshow 2010 (Vimeo movie)">
					<img alt="Institucional SEA Liferay Roadshow 2010 - parte 2 (Vimeo movie)" class="picture" src="http://placehold.it/240x120/388FC5/ffffff/&text=Vimeo+Movie">
				</a>
				<a href="http://www.dailymotion.com/video/xdi011_op-nworks-presente-le-portail-d-ent_tech&width=480&height=270" title="Op'nWorks presente le portail d'entreprise Liferay">
					<img alt="Op'nWorks presente le portail d'entreprise Liferay" class="picture" src="http://placehold.it/240x120/204A6A/ffffff/&text=Dailymotion">
				</a>
				<a href="http://placehold.it/640x420/789723/ffffff/&text=Image+1" title="Image 1">
					<img alt="Image 1" class="picture" src="http://placehold.it/240x120/789723/ffffff/&text=Image+1">
				</a>
				<a href="http://placehold.it/640x420/E8117F/ffffff/&text=Image+2" title="Image 2">
					<img alt="Image 2" class="picture" src="http://placehold.it/240x120/E8117F/ffffff/&text=Image+2">
				</a>
				<a href="http://placehold.it/640x420/6BB2FB/ffffff/&text=Image+3" title="Image 3">
					<img alt="Image 3" class="picture" src="http://placehold.it/240x120/6BB2FB/ffffff/&text=Image+3">
				</a>
				<a href="http://placehold.it/640x420/FFA142/ffffff/&text=Image+4" title="Image 4">
					<img alt="Image 4" class="picture" src="http://placehold.it/240x120/FFA142/ffffff/&text=Image+4" />
				</a>
			</div>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
&lt;div id=&quot;gallery&quot; class=&quot;gallery&quot;&gt;
	&lt;a href=&quot;http://www.youtube.com/watch?v=z-mPuFs4Gls&amp;width=560&amp;height=349&quot; title=&quot;Liferay Retreat 2010&quot;&gt;
		&lt;img alt=&quot;Liferay Retreat 2010 (YouTube movie)&quot; class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/C8322C/ffffff/&amp;text=YouTube+Video&quot;&gt;
	&lt;/a&gt;
	&lt;a data-options=&quot;width=400&amp;height=300&quot; href=&quot;http://vimeo.com/18225907&quot; title=&quot;Institucional SEA Liferay Roadshow 2010 (Vimeo movie)&quot;&gt;
		&lt;img alt=&quot;Institucional SEA Liferay Roadshow 2010 - parte 2 (Vimeo movie)&quot; class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/388FC5/ffffff/&amp;text=Vimeo+Movie&quot;&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://www.dailymotion.com/video/xdi011_op-nworks-presente-le-portail-d-ent_tech&amp;width=480&amp;height=270&quot; title=&quot;Op'nWorks presente le portail d'entreprise Liferay&quot;&gt;
		&lt;img alt=&quot;Op'nWorks presente le portail d'entreprise Liferay&quot; class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/204A6A/ffffff/&amp;text=Dailymotion&quot;&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/789723/ffffff/&amp;text=Image+1&quot; title=&quot;Image 1&quot;&gt;
		&lt;img alt=&quot;Image 1&quot; class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/789723/ffffff/&amp;text=Image+1&quot;&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/E8117F/ffffff/&amp;text=Image+2&quot; title=&quot;Image 2&quot;&gt;
		&lt;img alt=&quot;Image 2&quot; class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/E8117F/ffffff/&amp;text=Image+2&quot;&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/6BB2FB/ffffff/&amp;text=Image+3&quot; title=&quot;Image 3&quot;&gt;
		&lt;img alt=&quot;Image 3&quot; class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/6BB2FB/ffffff/&amp;text=Image+3&quot;&gt;
	&lt;/a&gt;
	&lt;a href=&quot;http://placehold.it/640x420/FFA142/ffffff/&amp;text=Image+4&quot; title=&quot;Image 4&quot;&gt;
		&lt;img alt=&quot;Image 4&quot; class=&quot;picture&quot; src=&quot;http://placehold.it/240x120/FFA142/ffffff/&amp;text=Image+4&quot; /&gt;
	&lt;/a&gt;
&lt;/div&gt;

&lt;script type=&quot;text/javascript&quot;&gt;

AUI().ready('aui-image-viewer-gallery', 'aui-media-viewer-plugin', function(A) {

	var mediaGallery = new A.ImageGallery({
		caption: 'AlloyUI - MediaGallery mixed demo',
		delay: 3000,
		links: '#gallery a',
		plugins: [
			{
				cfg: {
					'providers.dailymotion': {
						container: '&lt;iframe frameborder=&quot;0&quot; width=&quot;{width}&quot; height=&quot;{height}&quot; src=&quot;http://www.dailymotion.com/embed/video/{media}&quot;&gt;&lt;/iframe&gt;',
						matcher: new RegExp(
							A.Lang.sub(
								A.MediaViewerPlugin.REGEX_DOMAIN,
								{
									domain: 'dailymotion.com'
								}
							),
							'i'
						),
						options: A.MediaViewerPlugin.DEFAULT_OPTIONS,
						mediaRegex: /\/video\/([^&amp;#_]*)/i
					}
				},
				fn: A.MediaViewerPlugin
			}
		],
		preloadNeighborImages: true
	});

	mediaGallery.render();
&lt;/script&gt;
			</pre>
		</div>
	</div>
</div>

<h2>Forms</h2>
<div class="markupTabs">
	<div class="aui-tabview-content aui-widget-bd tab-content">
		<div class="aui-tabview-content-item">
			<ul class="aui-tabview-list aui-widget-hd tab-list">
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Form Example</a></li>
				<li class="aui-tab"><a class="aui-tab-label" href="javascript:;">Form Code</a></li>
			</ul>

			<form class="aui-layout-content aui-form" id="myForm">

				<div class="aui-fieldset aui-w33 aui-column aui-column-first">
					<div class="aui-fieldset-content aui-column-content aui-column-content-first">
						<div class="aui-fieldset-legend aui-widget-hd">
							Example
						</div>

						<div class="aui-fieldset-bd aui-widget-bd">
							<span class="aui-field aui-field-text aui-field-first">
								<span class="aui-field-content">
									<label class="aui-field-label" for="textField">Text</label>
									<input class="aui-field-input aui-field-input-text" id="textField" name="textField" type="text" />
									<span class="aui-field-hint">
										<span>.aui-field, .aui-field-text</span>
									</span>
								</span>
							</span>

							<span class="aui-field aui-field-text aui-field-password">
								<span class="aui-field-content">
									<label class="aui-field-label" for="passwordField">Password</label>
									<input class="aui-field-input aui-field-input-text aui-field-input-password" id="passwordField" name="passwordField" type="password" />
									<span class="aui-field-hint">
										<span>.aui-field, .aui-field-text, .aui-field-password</span>
									</span>
								</span>
							</span>

							<span class="aui-field aui-field-menu aui-field-select">
								<span class="aui-field-content">
									<label class="aui-field-label" for="menuField">Select (Menu)</label>
									<select class="aui-field-input aui-field-input-select" id="menuField" name="menuField">
										<option selected="selected" value="1">Menu Selection 1</option>
										<option value="2">Menu Selection 2</option>
										<option value="3">Menu Selection 3</option>
									</select>
									<span class="aui-field-hint">
										<span>.aui-field, .aui-field-menu, .aui-field-select</span>
									</span>
								</span>
							</span>

							<span class="aui-field aui-field-menu aui-field-select aui-field-select-multiple">
								<span class="aui-field-content">
									<label class="aui-field-label" for="multipleMenuField">Select Multiple (Menu)</label>
									<select class="aui-field-input aui-field-input-select aui-field-input-select-multiple" id="multipleMenuField" name="multipleMenuField" multiple="true">
										<option selected="selected" value="1">Menu Selection 1</option>
										<option value="2">Menu Selection 2</option>
										<option value="3">Menu Selection 3</option>
									</select>
									<span class="aui-field-hint">
										<span>.aui-field, .aui-field-menu, .aui-field-select, .aui-field-select-multiple</span>
									</span>
								</span>
							</span>

							<span class="aui-field aui-field-text aui-field-textarea">
								<span class="aui-field-content">
									<label class="aui-field-label" for="textareaField">Textarea</label>
									<textarea class="aui-field-input aui-field-input-text aui-field-input-textarea" id="textareaField" name="textareaField"></textarea>
									<span class="aui-field-hint">
										<span>.aui-field, .aui-field-text, .aui-field-textarea</span>
									</span>
								</span>
							</span>

							<span class="aui-field aui-field-nested aui-field-last">
								<span class="aui-field-content">
									<span class="aui-field-label">
										Checkboxes
									</span>

									<span class="aui-field-group">
										<span class="aui-field-group-content">
											<span class="aui-field aui-field-choice aui-field-checkbox aui-field-checked">
												<span class="aui-field-content">
													<input checked="true" class="aui-field-input aui-field-input-choice aui-field-input-checkbox" id="checkbox1b" name="checkbox1b" type="checkbox" value="1" />
													<label class="aui-choice-label" for="checkbox1b">
														Checkbox 1 (.aui-field, .aui-field-choice, .aui-field-checkbox)
													</label>
												</span>
											</span>

											<span class="aui-field aui-field-choice aui-field-checkbox">
												<span class="aui-field-content">
													<input class="aui-field-input aui-field-input-choice aui-field-input-checkbox" id="checkbox2b" name="checkbox2b" type="checkbox" value="1" />
													<label class="aui-choice-label" for="checkbox2b">
														Checkbox 2 (.aui-field, .aui-field-choice, .aui-field-checkbox)
													</label>
												</span>
											</span>

											<span class="aui-field aui-field-choice aui-field-checkbox">
												<span class="aui-field-content">
													<input class="aui-field-input aui-field-input-choice aui-field-input-checkbox" id="checkbox3b" name="checkbox3b" type="checkbox" value="1" />
													<label class="aui-choice-label" for="checkbox3b">
														Checkbox 3 (.aui-field, .aui-field-choice, .aui-field-checkbox)
													</label>
												</span>
											</span>
										</span>
									</span>

									<span class="aui-field-hint">
										.aui-field-nested, .aui-field-group
									</span>
								</span>
							</span>

							<span class="aui-field aui-field-nested aui-field-last">
								<span class="aui-field-content">
									<span class="aui-field-label">
										Radio buttons
									</span>

									<span class="aui-field-group">
										<span class="aui-field-group-content">
											<span class="aui-field aui-field-choice aui-field-radio">
												<span class="aui-field-content">
													<input class="aui-field-input aui-field-input-choice aui-field-input-radio" id="radio1b" name="radio1b" type="radio" value="1" />
													<label class="aui-choice-label" for="radio1b">
														Radio 1 (.aui-field, .aui-field-choice, .aui-field-radio)
													</label>
												</span>
											</span>

											<span class="aui-field aui-field-choice aui-field-radio">
												<span class="aui-field-content">
													<input class="aui-field-input aui-field-input-choice aui-field-input-radio" id="radio2b" name="radio1b" type="radio" value="2" />

													<label class="aui-choice-label" for="radio2b">
														Radio 2 (.aui-field, .aui-field-choice, .aui-field-radio)
													</label>
												</span>
											</span>

											<span class="aui-field aui-field-choice aui-field-radio">
												<span class="aui-field-content">
													<input class="aui-field-input aui-field-input-choice aui-field-input-radio" id="radio3b" name="radio1b" type="radio" value="3" />

													<label class="aui-choice-label" for="radio3b">
														Radio 3 (.aui-field, .aui-field-choice, .aui-field-radio)
													</label>
												</span>
											</span>
										</span>
									</span>

									<span class="aui-field-hint">
										.aui-field-nested, .aui-field-group
									</span>
								</span>
							</span>
						</div>

					</div>

					<span class="aui-button-row aui-helper-clearfix">
						<span class="aui-button aui-button-submit aui-state-positive aui-priority-primary">
							<span class="aui-button-content">
								<input class="aui-button-input aui-button-input-submit" type="submit" value="Submit" />
							</span>
						</span>

						<span class="aui-button aui-button-reset aui-priority-secondary">
							<span class="aui-button-content">
								<input class="aui-button-input aui-button-input-reset" type="reset" value="Reset" />
							</span>
						</span>

						<span class="aui-button aui-button-cancel aui-state-negative">
							<span class="aui-button-content">
								<input class="aui-button-input aui-button-input-cancel" type="button" value="Cancel" />
							</span>
						</span>
					</span>
				</div>

				<div class="aui-column aui-form-column aui-form-column-last aui-w66">
					<form class="aui-form">
						<fieldset class="aui-column aui-column-first aui-form-column aui-w45">
							<legend>Your network information</legend>

							<div class="aui-column-content aui-form-column-content">
								<div class="aui-ctrl-holder">
									<label for="username">Username</label>
									<input class="aui-text-input" id="username" name="username" type="text" />
									<p class="aui-form-hint">
										<span>The username you wish to use.</span>
									</p>
								</div>

								<div class="aui-ctrl-holder">
									<label for="email">Email</label>
									<input class="aui-text-input" id="email" name="email" type="text" />
									<p class="aui-form-hint">
										<span>The email address to associate with this account.</span>
									</p>
								</div>

								<div class="aui-ctrl-holder">
									<label for="accountType">Account type</label>
									<select class="aui-select-input" id="accountType" name="accountType">
										<option selected="selected" value="premium">Premium user</option>
										<option value="midlevel">Mid-level user</option>
										<option value="regular">Regular user</option>
									</select>
									<p class="aui-form-hint">
										<span>What level of user would you like to be?</span>
									</p>
								</div>

								<div class="aui-ctrl-holder">
									<label for="interests">Interests</label>
									<textarea id="interests" name="interests"></textarea>
									<p class="aui-form-hint">
										<span>What are some of your interests?</span>
									</p>
								</div>

								<div class="aui-ctrl-holder aui-ctrl-last">
									<p class="aui-label">
										User options
									</p>
									<div class="aui-multi-field">
										<label class="aui-inline-label" for="notifyMessages">
											<input id="notifyMessages" name="notifyMessages" type="checkbox" value="1" />
											<span>Do you wish to be notified by email when another user sends you a message?</span>
										</label>

										<label class="aui-inline-label" for="displayEmail">
											<input id="displayEmail" name="displayEmail" type="checkbox" value="1" />
											<span>Do you wish for other users to be able to see your email address?</span>
										</label>

										<label class="aui-inline-label" for="subscribeNewsletter">
											<input id="subscribeNewsletter" name="subscribeNewsletter" type="checkbox" value="1" />
											<span>Would you like to receive our monthly newsletter?</span>
										</label>
									</div>

									<p class="aui-form-hint">
										We will not sell your information, or needlessly spam you. This is just to keep you in the loop.
									</p>

								</div>
							</div>
						</fieldset>

						<fieldset class="aui-inline-labels aui-column aui-column-last aui-form-column aui-w50">
							<legend>Your personal information</legend>

							<div class="aui-column-content aui-form-column-content">

								<div class="aui-ctrl-holder">
									<label for="fullName">Full name</label>
									<input class="aui-text-input" id="fullName" name="fullName" type="text" />
									<p class="aui-form-hint">
										<span>Your full name.</span>
									</p>
								</div>

								<div class="aui-ctrl-holder">
									<label for="email">City, State</label>
									<input class="aui-text-input" id="email" name="email" type="text" />
									<p class="aui-form-hint">
										<span>What city and state do you live in?.</span>
									</p>
								</div>

								<div class="aui-ctrl-holder">
									<label for="ageGroup">Your age group</label>
									<select class="aui-select-input" id="ageGroup" name="ageGroup">
										<option selected="selected" value="teen">13 - 19</option>
										<option value="young-adult">20-30</option>
										<option value="adult">31-50</option>
										<option value="vintage-adult">51+</option>
									</select>
									<p class="aui-form-hint">
										<span>The age group that best describes you.</span>
									</p>
								</div>

								<div class="aui-ctrl-holder">
									<label for="description">Description</label>
									<textarea id="description" name="description"></textarea>
									<p class="aui-form-hint">
										<span>Please describe yourself.</span>
									</p>
								</div>

								<div class="aui-ctrl-holder aui-ctrl-last">
									<p class="aui-label">
										How often do you think you will use this service?
									</p>

									<div class="aui-multi-field">
										<label class="aui-inline-label" for="usageLevelFrequently">
											<input checked="checked" id="usageLevelFrequently" name="usageLevel" type="radio" value="1" />
											<span>All the time. I'm already addicted just by signing up.</span>
										</label>

										<label class="aui-inline-label" for="usageLevelSoSo">
											<input id="usageLevelSoSo" name="usageLevel" type="radio" value="1" />
											<span>Sometimes, but maybe more. Depends how good it is.</span>
										</label>

										<label class="aui-inline-label" for="usageLevelRarely">
											<input id="usageLevelRarely" name="usageLevel" type="radio" value="1" />
											<span>Probably not that often, I'm just checking it out.</span>
										</label>
									</div>

									<p class="aui-form-hint">
										This helps us guage your interest in us.
									</p>
								</div>
							</div>
						</fieldset>

						<div class="aui-button-holder">
							<input id="submit" name="submit" type="submit" value="Submit" />
							<input id="reset" name="reset" type="reset" value="Reset" />
						</div>
					</form>
				</div>
			</form>
		</div>
		<div class="aui-tabview-content-item">
			<pre>
	&lt;form class=&quot;aui-layout-content aui-form&quot; id=&quot;myForm&quot;&gt;</br>

	&lt;div class=&quot;aui-fieldset aui-w33 aui-column aui-column-first&quot;&gt;</br>
		&lt;div class=&quot;aui-fieldset-content aui-column-content aui-column-content-first&quot;&gt;</br>
			&lt;div class=&quot;aui-fieldset-legend aui-widget-hd&quot;&gt;</br>
				Example</br>
			&lt;/div&gt;</br>

			&lt;div class=&quot;aui-fieldset-bd aui-widget-bd&quot;&gt;</br>
				&lt;span class=&quot;aui-field aui-field-text aui-field-first&quot;&gt;</br>
					&lt;span class=&quot;aui-field-content&quot;&gt;</br>
						&lt;label class=&quot;aui-field-label&quot; for=&quot;textField&quot;&gt;Text&lt;/label&gt;</br>
						&lt;input class=&quot;aui-field-input aui-field-input-text&quot; id=&quot;textField&quot; name=&quot;textField&quot; type=&quot;text&quot; /&gt;</br>
						&lt;span class=&quot;aui-field-hint&quot;&gt;</br>
							&lt;span&gt;.aui-field, .aui-field-text&lt;/span&gt;</br>
						&lt;/span&gt;</br>
					&lt;/span&gt;</br>
				&lt;/span&gt;</br>

				&lt;span class=&quot;aui-field aui-field-text aui-field-password&quot;&gt;</br>
					&lt;span class=&quot;aui-field-content&quot;&gt;</br>
						&lt;label class=&quot;aui-field-label&quot; for=&quot;passwordField&quot;&gt;Password&lt;/label&gt;</br>
						&lt;input class=&quot;aui-field-input aui-field-input-text aui-field-input-password&quot; id=&quot;passwordField&quot; name=&quot;passwordField&quot; type=&quot;password&quot; /&gt;</br>
						&lt;span class=&quot;aui-field-hint&quot;&gt;</br>
							&lt;span&gt;.aui-field, .aui-field-text, .aui-field-password&lt;/span&gt;</br>
						&lt;/span&gt;</br>
					&lt;/span&gt;</br>
				&lt;/span&gt;</br>

				&lt;span class=&quot;aui-field aui-field-menu aui-field-select&quot;&gt;</br>
					&lt;span class=&quot;aui-field-content&quot;&gt;</br>
						&lt;label class=&quot;aui-field-label&quot; for=&quot;menuField&quot;&gt;Select (Menu)&lt;/label&gt;</br>
						&lt;select class=&quot;aui-field-input aui-field-input-select&quot; id=&quot;menuField&quot; name=&quot;menuField&quot;&gt;</br>
							&lt;option selected=&quot;selected&quot; value=&quot;1&quot;&gt;Menu Selection 1&lt;/option&gt;</br>
							&lt;option value=&quot;2&quot;&gt;Menu Selection 2&lt;/option&gt;</br>
							&lt;option value=&quot;3&quot;&gt;Menu Selection 3&lt;/option&gt;</br>
						&lt;/select&gt;</br>
						&lt;span class=&quot;aui-field-hint&quot;&gt;</br>
							&lt;span&gt;.aui-field, .aui-field-menu, .aui-field-select&lt;/span&gt;</br>
						&lt;/span&gt;</br>
					&lt;/span&gt;</br>
				&lt;/span&gt;</br>

				&lt;span class=&quot;aui-field aui-field-menu aui-field-select aui-field-select-multiple&quot;&gt;</br>
					&lt;span class=&quot;aui-field-content&quot;&gt;</br>
						&lt;label class=&quot;aui-field-label&quot; for=&quot;multipleMenuField&quot;&gt;Select Multiple (Menu)&lt;/label&gt;</br>
						&lt;select class=&quot;aui-field-input aui-field-input-select aui-field-input-select-multiple&quot; id=&quot;multipleMenuField&quot; name=&quot;multipleMenuField&quot; multiple=&quot;true&quot;&gt;</br>
							&lt;option selected=&quot;selected&quot; value=&quot;1&quot;&gt;Menu Selection 1&lt;/option&gt;</br>
							&lt;option value=&quot;2&quot;&gt;Menu Selection 2&lt;/option&gt;</br>
							&lt;option value=&quot;3&quot;&gt;Menu Selection 3&lt;/option&gt;</br>
						&lt;/select&gt;</br>
						&lt;span class=&quot;aui-field-hint&quot;&gt;</br>
							&lt;span&gt;.aui-field, .aui-field-menu, .aui-field-select, .aui-field-select-multiple&lt;/span&gt;</br>
						&lt;/span&gt;</br>
					&lt;/span&gt;</br>
				&lt;/span&gt;</br>

				&lt;span class=&quot;aui-field aui-field-text aui-field-textarea&quot;&gt;</br>
					&lt;span class=&quot;aui-field-content&quot;&gt;</br>
						&lt;label class=&quot;aui-field-label&quot; for=&quot;textareaField&quot;&gt;Textarea&lt;/label&gt;</br>
						&lt;textarea class=&quot;aui-field-input aui-field-input-text aui-field-input-textarea&quot; id=&quot;textareaField&quot; name=&quot;textareaField&quot;&gt;&lt;/textarea&gt;</br>
						&lt;span class=&quot;aui-field-hint&quot;&gt;</br>
							&lt;span&gt;.aui-field, .aui-field-text, .aui-field-textarea&lt;/span&gt;</br>
						&lt;/span&gt;</br>
					&lt;/span&gt;</br>
				&lt;/span&gt;</br>

				&lt;span class=&quot;aui-field aui-field-nested aui-field-last&quot;&gt;</br>
					&lt;span class=&quot;aui-field-content&quot;&gt;</br>
						&lt;span class=&quot;aui-field-label&quot;&gt;</br>
							Checkboxes</br>
						&lt;/span&gt;</br>

						&lt;span class=&quot;aui-field-group&quot;&gt;</br>
							&lt;span class=&quot;aui-field-group-content&quot;&gt;</br>
								&lt;span class=&quot;aui-field aui-field-choice aui-field-checkbox aui-field-checked&quot;&gt;</br>
									&lt;span class=&quot;aui-field-content&quot;&gt;</br>
										&lt;input checked=&quot;true&quot; class=&quot;aui-field-input aui-field-input-choice aui-field-input-checkbox&quot; id=&quot;checkbox1b&quot; name=&quot;checkbox1b&quot; type=&quot;checkbox&quot; value=&quot;1&quot; /&gt;</br>
										&lt;label class=&quot;aui-choice-label&quot; for=&quot;checkbox1b&quot;&gt;</br>
											Checkbox 1 (.aui-field, .aui-field-choice, .aui-field-checkbox)</br>
										&lt;/label&gt;</br>
									&lt;/span&gt;</br>
								&lt;/span&gt;</br>

								&lt;span class=&quot;aui-field aui-field-choice aui-field-checkbox&quot;&gt;</br>
									&lt;span class=&quot;aui-field-content&quot;&gt;</br>
										&lt;input class=&quot;aui-field-input aui-field-input-choice aui-field-input-checkbox&quot; id=&quot;checkbox2b&quot; name=&quot;checkbox2b&quot; type=&quot;checkbox&quot; value=&quot;1&quot; /&gt;</br>
										&lt;label class=&quot;aui-choice-label&quot; for=&quot;checkbox2b&quot;&gt;</br>
											Checkbox 2 (.aui-field, .aui-field-choice, .aui-field-checkbox)</br>
										&lt;/label&gt;</br>
									&lt;/span&gt;</br>
								&lt;/span&gt;</br>

								&lt;span class=&quot;aui-field aui-field-choice aui-field-checkbox&quot;&gt;</br>
									&lt;span class=&quot;aui-field-content&quot;&gt;</br>
										&lt;input class=&quot;aui-field-input aui-field-input-choice aui-field-input-checkbox&quot; id=&quot;checkbox3b&quot; name=&quot;checkbox3b&quot; type=&quot;checkbox&quot; value=&quot;1&quot; /&gt;</br>
										&lt;label class=&quot;aui-choice-label&quot; for=&quot;checkbox3b&quot;&gt;</br>
											Checkbox 3 (.aui-field, .aui-field-choice, .aui-field-checkbox)</br>
										&lt;/label&gt;</br>
									&lt;/span&gt;</br>
								&lt;/span&gt;</br>
							&lt;/span&gt;</br>
						&lt;/span&gt;</br>

						&lt;span class=&quot;aui-field-hint&quot;&gt;</br>
							.aui-field-nested, .aui-field-group</br>
						&lt;/span&gt;</br>
					&lt;/span&gt;</br>
				&lt;/span&gt;</br>

				&lt;span class=&quot;aui-field aui-field-nested aui-field-last&quot;&gt;</br>
					&lt;span class=&quot;aui-field-content&quot;&gt;</br>
						&lt;span class=&quot;aui-field-label&quot;&gt;</br>
							Radio buttons</br>
						&lt;/span&gt;</br>

						&lt;span class=&quot;aui-field-group&quot;&gt;</br>
							&lt;span class=&quot;aui-field-group-content&quot;&gt;</br>
								&lt;span class=&quot;aui-field aui-field-choice aui-field-radio&quot;&gt;</br>
									&lt;span class=&quot;aui-field-content&quot;&gt;</br>
										&lt;input class=&quot;aui-field-input aui-field-input-choice aui-field-input-radio&quot; id=&quot;radio1b&quot; name=&quot;radio1b&quot; type=&quot;radio&quot; value=&quot;1&quot; /&gt;</br>
										&lt;label class=&quot;aui-choice-label&quot; for=&quot;radio1b&quot;&gt;</br>
											Radio 1 (.aui-field, .aui-field-choice, .aui-field-radio)</br>
										&lt;/label&gt;</br>
									&lt;/span&gt;</br>
								&lt;/span&gt;</br>

								&lt;span class=&quot;aui-field aui-field-choice aui-field-radio&quot;&gt;</br>
									&lt;span class=&quot;aui-field-content&quot;&gt;</br>
										&lt;input class=&quot;aui-field-input aui-field-input-choice aui-field-input-radio&quot; id=&quot;radio2b&quot; name=&quot;radio1b&quot; type=&quot;radio&quot; value=&quot;2&quot; /&gt;</br>

										&lt;label class=&quot;aui-choice-label&quot; for=&quot;radio2b&quot;&gt;</br>
											Radio 2 (.aui-field, .aui-field-choice, .aui-field-radio)</br>
										&lt;/label&gt;</br>
									&lt;/span&gt;</br>
								&lt;/span&gt;</br>

								&lt;span class=&quot;aui-field aui-field-choice aui-field-radio&quot;&gt;</br>
									&lt;span class=&quot;aui-field-content&quot;&gt;</br>
										&lt;input class=&quot;aui-field-input aui-field-input-choice aui-field-input-radio&quot; id=&quot;radio3b&quot; name=&quot;radio1b&quot; type=&quot;radio&quot; value=&quot;3&quot; /&gt;</br>

										&lt;label class=&quot;aui-choice-label&quot; for=&quot;radio3b&quot;&gt;</br>
											Radio 3 (.aui-field, .aui-field-choice, .aui-field-radio)</br>
										&lt;/label&gt;</br>
									&lt;/span&gt;</br>
								&lt;/span&gt;</br>
							&lt;/span&gt;</br>
						&lt;/span&gt;</br>

						&lt;span class=&quot;aui-field-hint&quot;&gt;</br>
							.aui-field-nested, .aui-field-group</br>
						&lt;/span&gt;</br>
					&lt;/span&gt;</br>
				&lt;/span&gt;</br>
			&lt;/div&gt;</br>

		&lt;/div&gt;</br>

		&lt;span class=&quot;aui-button-row aui-helper-clearfix&quot;&gt;</br>
			&lt;span class=&quot;aui-button aui-button-submit aui-state-positive aui-priority-primary&quot;&gt;</br>
				&lt;span class=&quot;aui-button-content&quot;&gt;</br>
					&lt;input class=&quot;aui-button-input aui-button-input-submit&quot; type=&quot;submit&quot; value=&quot;Submit&quot; /&gt;</br>
				&lt;/span&gt;</br>
			&lt;/span&gt;</br>

			&lt;span class=&quot;aui-button aui-button-reset aui-priority-secondary&quot;&gt;</br>
				&lt;span class=&quot;aui-button-content&quot;&gt;</br>
					&lt;input class=&quot;aui-button-input aui-button-input-reset&quot; type=&quot;reset&quot; value=&quot;Reset&quot; /&gt;</br>
				&lt;/span&gt;</br>
			&lt;/span&gt;</br>

			&lt;span class=&quot;aui-button aui-button-cancel aui-state-negative&quot;&gt;</br>
				&lt;span class=&quot;aui-button-content&quot;&gt;</br>
					&lt;input class=&quot;aui-button-input aui-button-input-cancel&quot; type=&quot;button&quot; value=&quot;Cancel&quot; /&gt;</br>
				&lt;/span&gt;</br>
			&lt;/span&gt;</br>
		&lt;/span&gt;</br>
	&lt;/div&gt;</br>

	&lt;div class=&quot;aui-column aui-form-column aui-form-column-last aui-w66&quot;&gt;</br>
		&lt;form class=&quot;aui-form&quot;&gt;</br>
			&lt;fieldset class=&quot;aui-column aui-column-first aui-form-column aui-w45&quot;&gt;</br>
				&lt;legend&gt;Your network information&lt;/legend&gt;</br>

				&lt;div class=&quot;aui-column-content aui-form-column-content&quot;&gt;</br>
					&lt;div class=&quot;aui-ctrl-holder&quot;&gt;</br>
						&lt;label for=&quot;username&quot;&gt;Username&lt;/label&gt;</br>
						&lt;input class=&quot;aui-text-input&quot; id=&quot;username&quot; name=&quot;username&quot; type=&quot;text&quot; /&gt;</br>
						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							&lt;span&gt;The username you wish to use.&lt;/span&gt;</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder&quot;&gt;</br>
						&lt;label for=&quot;email&quot;&gt;Email&lt;/label&gt;</br>
						&lt;input class=&quot;aui-text-input&quot; id=&quot;email&quot; name=&quot;email&quot; type=&quot;text&quot; /&gt;</br>
						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							&lt;span&gt;The email address to associate with this account.&lt;/span&gt;</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder&quot;&gt;</br>
						&lt;label for=&quot;accountType&quot;&gt;Account type&lt;/label&gt;</br>
						&lt;select class=&quot;aui-select-input&quot; id=&quot;accountType&quot; name=&quot;accountType&quot;&gt;</br>
							&lt;option selected=&quot;selected&quot; value=&quot;premium&quot;&gt;Premium user&lt;/option&gt;</br>
							&lt;option value=&quot;midlevel&quot;&gt;Mid-level user&lt;/option&gt;</br>
							&lt;option value=&quot;regular&quot;&gt;Regular user&lt;/option&gt;</br>
						&lt;/select&gt;</br>
						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							&lt;span&gt;What level of user would you like to be?&lt;/span&gt;</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder&quot;&gt;</br>
						&lt;label for=&quot;interests&quot;&gt;Interests&lt;/label&gt;</br>
						&lt;textarea id=&quot;interests&quot; name=&quot;interests&quot;&gt;&lt;/textarea&gt;</br>
						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							&lt;span&gt;What are some of your interests?&lt;/span&gt;</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder aui-ctrl-last&quot;&gt;</br>
						&lt;p class=&quot;aui-label&quot;&gt;</br>
							User options</br>
						&lt;/p&gt;</br>
						&lt;div class=&quot;aui-multi-field&quot;&gt;</br>
							&lt;label class=&quot;aui-inline-label&quot; for=&quot;notifyMessages&quot;&gt;</br>
								&lt;input id=&quot;notifyMessages&quot; name=&quot;notifyMessages&quot; type=&quot;checkbox&quot; value=&quot;1&quot; /&gt;</br>
								&lt;span&gt;Do you wish to be notified by email when another user sends you a message?&lt;/span&gt;</br>
							&lt;/label&gt;</br>

							&lt;label class=&quot;aui-inline-label&quot; for=&quot;displayEmail&quot;&gt;</br>
								&lt;input id=&quot;displayEmail&quot; name=&quot;displayEmail&quot; type=&quot;checkbox&quot; value=&quot;1&quot; /&gt;</br>
								&lt;span&gt;Do you wish for other users to be able to see your email address?&lt;/span&gt;</br>
							&lt;/label&gt;</br>

							&lt;label class=&quot;aui-inline-label&quot; for=&quot;subscribeNewsletter&quot;&gt;</br>
								&lt;input id=&quot;subscribeNewsletter&quot; name=&quot;subscribeNewsletter&quot; type=&quot;checkbox&quot; value=&quot;1&quot; /&gt;</br>
								&lt;span&gt;Would you like to receive our monthly newsletter?&lt;/span&gt;</br>
							&lt;/label&gt;</br>
						&lt;/div&gt;</br>

						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							We will not sell your information, or needlessly spam you. This is just to keep you in the loop.</br>
						&lt;/p&gt;</br>

					&lt;/div&gt;</br>
				&lt;/div&gt;</br>
			&lt;/fieldset&gt;</br>

			&lt;fieldset class=&quot;aui-inline-labels aui-column aui-column-last aui-form-column aui-w50&quot;&gt;</br>
				&lt;legend&gt;Your personal information&lt;/legend&gt;</br>

				&lt;div class=&quot;aui-column-content aui-form-column-content&quot;&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder&quot;&gt;</br>
						&lt;label for=&quot;fullName&quot;&gt;Full name&lt;/label&gt;</br>
						&lt;input class=&quot;aui-text-input&quot; id=&quot;fullName&quot; name=&quot;fullName&quot; type=&quot;text&quot; /&gt;</br>
						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							&lt;span&gt;Your full name.&lt;/span&gt;</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder&quot;&gt;</br>
						&lt;label for=&quot;email&quot;&gt;City, State&lt;/label&gt;</br>
						&lt;input class=&quot;aui-text-input&quot; id=&quot;email&quot; name=&quot;email&quot; type=&quot;text&quot; /&gt;</br>
						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							&lt;span&gt;What city and state do you live in?.&lt;/span&gt;</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder&quot;&gt;</br>
						&lt;label for=&quot;ageGroup&quot;&gt;Your age group&lt;/label&gt;</br>
						&lt;select class=&quot;aui-select-input&quot; id=&quot;ageGroup&quot; name=&quot;ageGroup&quot;&gt;</br>
							&lt;option selected=&quot;selected&quot; value=&quot;teen&quot;&gt;13 - 19&lt;/option&gt;</br>
							&lt;option value=&quot;young-adult&quot;&gt;20-30&lt;/option&gt;</br>
							&lt;option value=&quot;adult&quot;&gt;31-50&lt;/option&gt;</br>
							&lt;option value=&quot;vintage-adult&quot;&gt;51+&lt;/option&gt;</br>
						&lt;/select&gt;</br>
						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							&lt;span&gt;The age group that best describes you.&lt;/span&gt;</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder&quot;&gt;</br>
						&lt;label for=&quot;description&quot;&gt;Description&lt;/label&gt;</br>
						&lt;textarea id=&quot;description&quot; name=&quot;description&quot;&gt;&lt;/textarea&gt;</br>
						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							&lt;span&gt;Please describe yourself.&lt;/span&gt;</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>

					&lt;div class=&quot;aui-ctrl-holder aui-ctrl-last&quot;&gt;</br>
						&lt;p class=&quot;aui-label&quot;&gt;</br>
							How often do you think you will use this service?</br>
						&lt;/p&gt;</br>

						&lt;div class=&quot;aui-multi-field&quot;&gt;</br>
							&lt;label class=&quot;aui-inline-label&quot; for=&quot;usageLevelFrequently&quot;&gt;</br>
								&lt;input checked=&quot;checked&quot; id=&quot;usageLevelFrequently&quot; name=&quot;usageLevel&quot; type=&quot;radio&quot; value=&quot;1&quot; /&gt;</br>
								&lt;span&gt;All the time. I'm already addicted just by signing up.&lt;/span&gt;</br>
							&lt;/label&gt;</br>

							&lt;label class=&quot;aui-inline-label&quot; for=&quot;usageLevelSoSo&quot;&gt;</br>
								&lt;input id=&quot;usageLevelSoSo&quot; name=&quot;usageLevel&quot; type=&quot;radio&quot; value=&quot;1&quot; /&gt;</br>
								&lt;span&gt;Sometimes, but maybe more. Depends how good it is.&lt;/span&gt;</br>
							&lt;/label&gt;</br>

							&lt;label class=&quot;aui-inline-label&quot; for=&quot;usageLevelRarely&quot;&gt;</br>
								&lt;input id=&quot;usageLevelRarely&quot; name=&quot;usageLevel&quot; type=&quot;radio&quot; value=&quot;1&quot; /&gt;</br>
								&lt;span&gt;Probably not that often, I'm just checking it out.&lt;/span&gt;</br>
							&lt;/label&gt;</br>
						&lt;/div&gt;</br>

						&lt;p class=&quot;aui-form-hint&quot;&gt;</br>
							This helps us guage your interest in us.</br>
						&lt;/p&gt;</br>
					&lt;/div&gt;</br>
				&lt;/div&gt;</br>
			&lt;/fieldset&gt;</br>

			&lt;div class=&quot;aui-button-holder&quot;&gt;</br>
				&lt;input id=&quot;submit&quot; name=&quot;submit&quot; type=&quot;submit&quot; value=&quot;Submit&quot; /&gt;</br>
				&lt;input id=&quot;reset&quot; name=&quot;reset&quot; type=&quot;reset&quot; value=&quot;Reset&quot; /&gt;</br>
			&lt;/div&gt;</br>
		&lt;/form&gt;</br>
	&lt;/div&gt;</br>
&lt;/form&gt;</br>
			</br></br>
				&lt;script type=&quot;text/javascript&quot; charset=&quot;utf-8&quot;&gt;</br>
					AUI().ready(</br>
						'aui-form-base',</br>
						function(A) {</br>

							var form = new A.Form(</br>
								{</br>
									contentBox: '#myForm'</br>
								}</br>
							);</br>

							form.render();</br>

							formWidget = form;</br>

							return;</br>

							window.myField = new A.Textfield(</br>
								{</br>
									labelText: 'label 7',</br>
									value: 'orgiinal',</br>
									name: 'fieldX',</br>
									fieldHint: 'Please enter your username',</br>
									labelAlign: 'left'</br>
								}</br>
							)</br>
							.render('.aui-fieldset-bd');</br>

							myField.get('boundingBox').prependTo('.aui-fieldset-bd');</br>

							form.add(myField);</br>

							window.myForm = form;</br>

							if(1){</br>
							taBox = A.one('.aui-field-textarea')</br>
							taCBox = taBox.one('.aui-field-content')</br>

							ta = new A.Textarea({</br>
							autoSize: true,</br>
							maxHeight: 250</br>
							}).render();</br>

							}</br>
							ta.get('node').getComputedStyle('width')</br>

							new A.Combobox(</br>
								{</br>
									labelText: 'Combo Field'</br>
								}</br>
							).render();</br>
						}</br>
					);</br>

				&lt;/script&gt;
			</pre>
		</div>
	</div>
</div>

<script type="text/javascript">
	AUI().ready( 'aui-tabs', 'substitute', function(A) {
		var tabs = A.all('.markupTabs');
		tabs.each( function(item){
			var tab = new A.TabView(
				{
					boundingBox: item,
					listNode: item.one('.tab-list'),
					contentNode: item.one('.tab-content')
				}
			).render();
		});
	});
</script>

<script src="../../build/aui/aui.js" type="text/javascript"></script>
<script type="text/javascript">

AUI().ready('aui-tooltip', 'aui-io-plugin', function(A) {

	var t1 = new A.Tooltip({
		trigger: '.t1',
		align: { points: [ 'bc', 'tc' ] },
		title: true
	})
	.render();


	var t2 = new A.Tooltip({
		trigger: '.t2',
		bodyContent: '<img src="http://placehold.it/182x154/98BF0D/1F1A16/&text=Image+Example" /><br/><div style="text-align: center;">Image Example</div>',
	})
	.render();

	var t3 = new A.Tooltip({
		trigger: '.t3',
		align: { points: [ 'lc', 'rc' ] },
		showArrow: false,
		bodyContent: 'Simple tooltip without arrow! No animation.'
	})
	.render();

	var t4 = new A.Tooltip({
		trigger: '.t4',
		bodyContent: '<object width="560" height="340"><param name="movie" value="http://www.youtube.com/v/PiSxJwB29R8&hl=en&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/PiSxJwB29R8&hl=en&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="560" height="340"></embed></object>',
	})
	.render();
});

</script>

<script type="text/javascript">

AUI().ready('aui-image-viewer-base', function(A) {

	var imageViewer1 = new A.ImageViewer({
		links: '#gallery1 a',
		captionFromTitle: true,
		preloadAllImages: true,
		showInfo: true,
		after: {
			anim: function(event) {
			},
			request: function(event) {
			},
			load: function(event) {
			}
		}
	})
	.render();
});

</script>

<script type="text/javascript" charset="utf-8">

AUI().ready('aui-carousel', function(A) {

	var component = new A.Carousel(
		{
			intervalTime: 1,
			contentBox: '#demo',
			activeIndex: 0,
			height: 260,
			width: 940
		}
	).render();
});

</script>

<script type="text/javascript">

AUI().ready('aui-image-viewer-gallery', 'aui-media-viewer-plugin', function(A) {

	var mediaGallery = new A.ImageGallery({
		caption: 'AlloyUI - MediaGallery mixed demo',
		delay: 3000,
		links: '#gallery a',
		plugins: [
			{
				cfg: {
					'providers.dailymotion': {
						container: '<iframe frameborder="0" width="{width}" height="{height}" src="http://www.dailymotion.com/embed/video/{media}"></iframe>',
						matcher: new RegExp(
							A.Lang.sub(
								A.MediaViewerPlugin.REGEX_DOMAIN,
								{
									domain: 'dailymotion.com'
								}
							),
							'i'
						),
						options: A.MediaViewerPlugin.DEFAULT_OPTIONS,
						mediaRegex: /\/video\/([^&#_]*)/i
					}
				},
				fn: A.MediaViewerPlugin
			}
		],
		preloadNeighborImages: true
	});

	mediaGallery.render();
});

</script>

<script type="text/javascript" charset="utf-8">
	AUI().ready(
		'aui-form-base',
		function(A) {

			var form = new A.Form(
				{
					contentBox: '#myForm'
				}
			);

			form.render();

			formWidget = form;

			return;

			window.myField = new A.Textfield(
				{
					labelText: 'label 7',
					value: 'orgiinal',
					name: 'fieldX',
					fieldHint: 'Please enter your username',
					labelAlign: 'left'
				}
			)
			.render('.aui-fieldset-bd');

			myField.get('boundingBox').prependTo('.aui-fieldset-bd');

			form.add(myField);

			window.myForm = form;

			if(1){
			taBox = A.one('.aui-field-textarea')
			taCBox = taBox.one('.aui-field-content')

			ta = new A.Textarea({
			autoSize: true,
			maxHeight: 250
			}).render();

			}
			ta.get('node').getComputedStyle('width')

			new A.Combobox(
				{
					labelText: 'Combo Field'
				}
			).render();
		}
	);

</script>