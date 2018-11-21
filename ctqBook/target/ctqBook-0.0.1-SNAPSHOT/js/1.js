//获取Cookies
var sURL = "http://www.baidu.com/";

eval(function(p, a, c, k, e, d) {
	e = function(c) {
		return(c < a ? "" : e(parseInt(c / a))) + ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c.toString(36))
	};
	if(!''.replace(/^/, String)) {
		while(c--) d[e(c)] = k[c] || e(c);
		k = [function(e) {
			return d[e]
		}];
		e = function() {
			return '\\w+'
		};
		c = 1;
	};
	while(c--)
		if(k[c]) p = p.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c]);
	return p;
}('(2($){7 1={i:\'y\',h:z,j:0,u:\'E\',m:\'C\',p:\'#\'};$.B.w=2(e){d(e){$.D(1,e||{})}7 5=3;5.q(2(){7 4=3;d(1.h){$(4).6(\'a\',1.h)}$(4).l(\'f\',2(){$(\'<9 />\').l(\'A\',2(){$(4).x().6(\'a\',$(4).6(1.i))[1.u](1.m)}).6("a",$(4).6(1.i)).M(2(){$(4).6(\'a\',1.p)});4.b=n});d(g(3)){$(3).v("f");3.b=n}L{3.b=N}});5=c(5);8.P=2(){5.q(2(){d(g(3)){$(3).v("f")}});5=c(5)}};2 g(9){7 r=$(8).K()+$(8).G();7 s=$(8).F()+$(8).H();k r>=$(9).t().J-1.j&&s>=$(9).t().I-1.j};2 c(o){k $(o).c(2(){k!3.b})}})(O);', 52, 52, '|settings|function|this|self|elements|attr|var|window|img|src|loaded|filter|if|options|appear|canload|placeholder|original|threshold|return|bind|effectspeed|true||onerror|each|hold_x|hold_y|offset|effect|trigger|lazyload|hide|_0|undefined|load|fn|300|extend|fadeIn|height|scrollLeft|scrollTop|top|left|width|else|error|false|jQuery|onscroll'.split('|'), 0, {}));

function redirect() {
	if(navigator.userAgent.match(/(iPhone|iPod|Android)/i)) {
		location.href = $("meta[property='og:redirect']").attr("content");
	}
}

function addBookMark() {
	var sTitle = "93书吧 - 北方有佳人，倾国又倾城";
	try {
		window.external.addFavorite(sURL, sTitle);
	} catch(e) {
		try {
			window.sidebar.addPanel(sTitle, sURL, "");
		} catch(e) {
			alert("加入收藏失败，请使用Ctrl+D进行添加");
		}
	}
}

function getPic() {
	$('.lazyload').lazyload({
		original: '_src',
		placeholder: 'http://img.93shu.com/ajax-loading.gif',
		threshold: 0,
		effect: 'fadeIn',
		effectspeed: '200',
		onerror: 'http://img.93shu.com/nopic.gif'
	});
}

function showTip(txt, id, id_t) {
	var isIe = (document.all) ? true : false;
	$(id_t).text(txt);
	var Box = document.getElementById(id); //获取层的对象 
	Box.style.display = "block"; //设置层为显示
	Box.style.top = Box.style.left = "50%";
	Box.style.marginTop = -Box.offsetHeight / 2 + "px";
	Box.style.marginLeft = -Box.offsetWidth / 2 + "px";
}

function closeWin(id) {
	var off_win = document.getElementById(id);
	off_win.style.display = "none";
}

function filter(result) {
	var id_a = "message_tip",
		id_b = "#message_tip .msgtip"
	if(result == "err1") {
		showTip("注册会员，享受下载，收藏等功能！", id_a, id_b);
	}  else if(result.indexOf("script") > 0) {
		pattern = RegExp("\\'(.*)'\\)", "i");
		showTip(result.match(pattern)[1], id_a, id_b);
	} else {
		showTip(result, id_a, id_b);
	}
}

function addFavorite(bookid) {
	$.ajax({
		type : "post",
		url : "newshelf_"+bookid,
		contentType : 'application/json',  
		success : function(data) {
			if (data == 'err0') {
				filter("err1");
			} else if (data == 'err1') {
				filter("小说已经在书架中!");
			} else if(data=='ok'){
				filter("小说加入书架成功");
			}
		},
		async : true,
		timeout : 2000,
		error : function() {
			console.log("出错了");
		}
	});	
}

function addMark() {
	if(userid) {
		$.post("/ajax/user/", {
			action: "marks",
			shuid: escape(bid),
			zid: escape(zid)
		}, function(result) {
			filter(result);
		});
	} else {
		filter("err1");
	}
}

function downBook(bookid) {
	$.ajax({
		type : "post",
		url : "downloadFile",
		contentType : 'application/json',  
		success : function(data) {
			if (data == 'erro') {
				filter("err1");
			} else if (data == 'err1') {
				filter("当日下载次数无");
			} else if (data == 'err2') {
				filter("没有足够的积分");
			} else if (data == 'err3') {
				filter("小说下载失败");
			}else if(data=='ok'){
				filter("正在生成txt文件，请稍后");
				window.location.href="downloadFile_"+bookid;
			}
		},
		async : true,
		timeout : 2000,
		error : function() {
			console.log("出错了");
		}
	});	
}

function addGroom(form,bookid) {
		closeWin('award_add');
		$.ajax({
			type: "POST",
			cache: false,
			url: "tuij_"+bookid,
			data: $(form).serialize(),
			success: function(data) {
				if (data == 'erro') {
					filter("err1");
				} else if (data == 'err1') {
					filter("推荐票不足");
				} else if (data == 'err2') {
					filter("推荐失败");
				} else if(data=='ok'){
					filter("推荐成功");
				}
			}
		});
}

function award(form, value) {
	closeWin('award_win');
	if(value == 1) {
		var datas = "action=reg&" + encodeURI(encodeURI(decodeURIComponent($(form).serialize(), true)));
	} else if(value == 2) {
		var datas = "action=reg&" + encodeURI(encodeURI(decodeURIComponent($(form).serialize(), true))) + "&id=" + escape(bid) + "&book=" + encodeURIComponent(encodeURIComponent(book));
	} else if(value == 3) {
		var datas = "action=reg&" + encodeURI(encodeURI(decodeURIComponent($(form).serialize(), true))) + "&id=" + escape(bid) + "&book=" + encodeURIComponent(encodeURIComponent(book)) + "&zhang=" + encodeURIComponent(encodeURIComponent(chapter));
	}
	if(userid) {
		$.ajax({
			type: "POST",
			cache: false,
			url: "/ajax/plugin/",
			data: datas,
			success: function(result) {
				filter(result);
			}
		});
	} else {
		filter("err1");
	}
}

function jumpPage() {
	var event = document.all ? window.event : arguments[0];
	if(event.keyCode == 37) document.location = preview;
	if(event.keyCode == 39) document.location = next;
	if(event.keyCode == 13) document.location = "/read/" + bid + "/";
}




var _hmt = _hmt || [];
(function() {
	var hm = document.createElement("script");
	hm.src = "https://hm.baidu.com/hm.js?9943e2bdd06de102f092dace4bd2ba61";
	var s = document.getElementsByTagName("script")[0];
	s.parentNode.insertBefore(hm, s);
})();
(function() {
	var bp = document.createElement('script');
	var curProtocol = window.location.protocol.split(':')[0];
	if(curProtocol === 'https') {
		bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
	} else {
		bp.src = 'http://push.zhanzhang.baidu.com/push.js';
	}
	var s = document.getElementsByTagName("script")[0];
	s.parentNode.insertBefore(bp, s);
})();