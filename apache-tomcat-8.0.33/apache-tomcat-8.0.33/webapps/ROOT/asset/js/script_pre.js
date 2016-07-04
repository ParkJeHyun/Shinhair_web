(function() {

	window.ASSERT = true;
	window.LOG = true;

	window._initWidget = [];

	window.assertTrue = function(condition, message) {
		if (condition)
			return;

		console.assert(condition, message);

		window.alert('ASSERT: ' + message);
	};

	window.assertFunction = function(func, message) {
		assertTrue($.isFunction(func), message);
	};

	window.assertFail = function(message) {
		assertTrue(false, message);
	};

})();
