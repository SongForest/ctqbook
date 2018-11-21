var minlen = 4, maxlen = 16, chk = true;
var msg = new Array("请输入" + minlen + "-" + maxlen + "位字符，英文、数字、下划线组合。",
		"请输入<font class=c_blue>纯中文</font>会员昵称，注册后不可修改。", "请输入6-" + maxlen
				+ "位字符，不允许空格。", "请重复输入上面的密码。", "请输入您常用的电子邮箱地址。", "请输入验证码。")

function out_account() {
	var obj = document.getElementById("username_Emsg");
	var str = sl($('#Account').val());
	if (str < minlen || str > maxlen) {
		obj.className = "d_err";
		obj.innerHTML = msg[0];
		return;
	}

	$.ajax({
		type : "post",
		url : "pdregis",
		contentType : 'application/json',
		data : JSON.stringify({
			"userName" : $('#Account').val()
		}),
		success : function(data) {
			if (data == 'ok') {
				obj.className = "d_ok";
				obj.innerHTML = "恭喜,该会员名可以正常注册！";
			} else {
				obj.className = "d_err";
				obj.innerHTML = "此用户被占用";
			}
		},
		async : true,
		timeout : 2000,
		error : function() {
			console.log("出错了");
		}
	});

}

function out_username() {
	var obj = document.getElementById("usernamemsg");
	var str = sl($('#NickName').val());
	if (str < minlen || str > maxlen) {
		obj.className = "d_err";
		obj.innerHTML = msg[1];
		return;
	}
	$.ajax({
		type : "post",
		url : "pdregis",
		contentType : 'application/json',
		data : JSON.stringify({
			"nickname" : $('#NickName').val()
		}),

		success : function(data) {
			if (data == 'ok') {
				obj.className = "d_ok";
				obj.innerHTML = "恭喜,该会昵称名可以正常注册！";
			} else {
				obj.className = "d_err";
				obj.innerHTML = "此昵称被占用";
			}
		},
		async : true,
		timeout : 2000,
		error : function() {
			console.log("出错了");
		}
	});
}
function out_password1() {
	var obj = document.getElementById("passwordmsg1");
	var str = $('#PassWord').val();
	if (str == '' || str.length < 6 || str.length > 16) {
		obj.className = "d_err";
		obj.innerHTML = msg[2];
	} else {
		obj.className = "d_ok";
		obj.innerHTML = '密码输入正确';
	}
	return chk;
}
function out_password2() {
	var obj = document.getElementById("passwordmsg2");
	var str = $('#RePassWord').val();
	if (str != $('#PassWord').val() || str == '') {
		obj.className = "d_err";
		obj.innerHTML = msg[3];
	} else {
		obj.className = "d_ok";
		obj.innerHTML = '重复密码输入正确';
	}
	return chk;
}
function out_email() {
	var obj = document.getElementById("emailmsg");
	var str = $('#Email').val();
	if (str == '' || !str.match(/^[\w\.\-]+@([\w\-]+\.)+[a-z]{2,4}$/ig)) {
		obj.className = "d_err";
		obj.innerHTML = msg[4];
		return;
	}
	$.ajax({
		type : "post",
		url : "pdregis",
		contentType : 'application/json',
		data : JSON.stringify({
			"email" : $('#Email').val()
		}),

		success : function(data) {
			if (data == 'ok') {
				obj.className = "d_ok";
				obj.innerHTML = "该邮箱可以正常注册!";
			} else {
				obj.className = "d_err";
				obj.innerHTML = "邮箱注册超过3个";
			}
		},
		async : true,
		timeout : 2000,
		error : function() {
			console.log("出错了");
		}
	});

}
function sl(st) {
	sl1 = st.length, strLen = 0;
	for (i = 0; i < sl1; i++) {
		if (st.charCodeAt(i) > 255)
			strLen += 2;
		else
			strLen++;
	}
	return strLen;
}

if (top.location !== self.location) {
	top.location.href = self.location.href;
}

function readysend() {
	document.getElementById("divBg").style.visibility = "visible";
	document.getElementById("divPop").style.visibility = "visible";
	document.body.style.overflow = "hidden";
	var obj = document.getElementById("username_Emsg");
	var str = sl($('#Account').val());
	if (str < minlen || str > maxlen) {
		obj.className = "d_err";
		obj.innerHTML = msg[0];
		closeSend();
		return;
	}
	var obj = document.getElementById("usernamemsg");
	var str = sl($('#NickName').val());
	if (str < minlen || str > maxlen) {
		obj.className = "d_err";
		obj.innerHTML = msg[1];
		closeSend();
		return;
	}
	var obj = document.getElementById("passwordmsg1");
	var str = $('#PassWord').val();
	if (str == '' || str.length < 6 || str.length > 16) {
		obj.className = "d_err";
		obj.innerHTML = msg[2];
		closeSend();
		return;
	} else {
		obj.className = "d_ok";
		obj.innerHTML = '密码输入正确';
	}
	var obj = document.getElementById("emailmsg");
	var str = $('#Email').val();
	if (str == '' || !str.match(/^[\w\.\-]+@([\w\-]+\.)+[a-z]{2,4}$/ig)) {
		obj.className = "d_err";
		obj.innerHTML = msg[4];
		closeSend();
		return;
	}
	websco();
}

function closeSend() {
	document.getElementById("divBg").style.visibility = "hidden";
	document.getElementById("divPop").style.visibility = "hidden";
	document.body.style.overflow = "visible";
	closeWebSocket();
}

var websocket = null;
// 判断当前浏览器是否支持WebSocket
function websco() {
	if ('WebSocket' in window) {
		websocket = new WebSocket("ws://localhost:8080/ctqBook/websocket");
		setMessageInnerHTML("确认是否向" + $("#Email").val() + "发送链接邮件");
	} else {
		alert('当前浏览器 Not support websocket')
	}

	// 连接发生错误的回调方法
	websocket.onerror = function() {
		setMessageInnerHTML("WebSocket连接发生错误");
	};

	// 连接成功建立的回调方法
	websocket.onopen = function() {
		setMessageInnerHTML("正在向" + $("#Email").val() + "发送链家邮件");
	}

	// 接收到消息的回调方法
	websocket.onmessage = function(event) {
		setMessageInnerHTML(event.data);
		if (event.data.indexOf("成功") > 0) {
			setTimeout("oks()", "2000");
		}
	}

	// 连接关闭的回调方法
	websocket.onclose = function() {
		setMessageInnerHTML("WebSocket连接关闭");
	}

	// 监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
	window.onbeforeunload = function() {
		closeWebSocket();
	}
}

// 将消息显示在网页上
function setMessageInnerHTML(innerHTML) {
	$("#content").html(innerHTML);
}

// 关闭WebSocket连接
function closeWebSocket() {
	websocket.close();
}

// 发送消息
function send() {
	var message = {
		"userName" : $('#Account').val(),
		"password" : $('#PassWord').val(),
		"nickname" : $('#NickName').val(),
		"email" : $("#Email").val()
	};
	console.log(message);
	websocket.send(JSON.stringify(message));
}

function oks() {
	window.location.href = "myindex";
}
