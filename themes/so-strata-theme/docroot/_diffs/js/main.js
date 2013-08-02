AUI().ready(
	'aui-base',
	'aui-io-request',
	'event',
	function(A) {
		var messageBoard = A.one('.portlet-message-boards');

		if (messageBoard) {
			messageBoard.delegate(
				['mouseenter', 'mouseleave'],
				function(event) {
					var target = event.currentTarget;

					if (event.type == 'mouseenter') {
						target.addClass('controls-visible');
					}
					else if (event.type == 'mouseleave') {
						target.removeClass('controls-visible');
					}
				},
				'.message-container'
			);
		}

		var memberButton = A.one('#memberButton');

		if (memberButton) {
			memberButton.on(
				'click',
				function(event) {
					event.preventDefault();

					A.io.request(
						event.currentTarget.attr('href'),
						{
							on: {
								success: function(event, id, obj) {
									window.location.reload();
								}
							}
						}
					);
				}
			);
		}
	}
);