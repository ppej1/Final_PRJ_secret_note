function updateUserInfo() {
	var url = "modifyUserInfo";
	var name = "popup test";
	var option = "width = 500, height = 500, top = 100, left = 200, location = no"

	var openDialog = function(uri, name, options, closeCallback) {
		var win = window.open(uri, name, options);

		var interval = window.setInterval(function() {
			try {
				if (win == null || win.closed) {
					window.clearInterval(interval);
					closeCallback(win);
				}
			} catch (e) {
			}
		}, 1000);
		return win;
	};
	var modifyUserInfo = openDialog(url, name, option, function(win) {
		// 팝업창이 닫히게 될 때 실행 된 내용
	});
}


