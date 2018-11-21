//获取Cookies
var userid = false,loginCookie = getCookie('shuba','',';'),Buyad =0,sURL = "http://www.93shu.com/",userid=getCookie('UserId',loginCookie,'&');
if(userid){if(!getCookie('buy','','; ')){$.post("/ajax/plugin/",{action:"buy"},function(data){Buyad = data});}else{Buyad = getCookie('buy','','; ')}}
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)d[e(c)]=k[c]||e(c);k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1;};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p;}('(2($){7 1={i:\'y\',h:z,j:0,u:\'E\',m:\'C\',p:\'#\'};$.B.w=2(e){d(e){$.D(1,e||{})}7 5=3;5.q(2(){7 4=3;d(1.h){$(4).6(\'a\',1.h)}$(4).l(\'f\',2(){$(\'<9 />\').l(\'A\',2(){$(4).x().6(\'a\',$(4).6(1.i))[1.u](1.m)}).6("a",$(4).6(1.i)).M(2(){$(4).6(\'a\',1.p)});4.b=n});d(g(3)){$(3).v("f");3.b=n}L{3.b=N}});5=c(5);8.P=2(){5.q(2(){d(g(3)){$(3).v("f")}});5=c(5)}};2 g(9){7 r=$(8).K()+$(8).G();7 s=$(8).F()+$(8).H();k r>=$(9).t().J-1.j&&s>=$(9).t().I-1.j};2 c(o){k $(o).c(2(){k!3.b})}})(O);',52,52,'|settings|function|this|self|elements|attr|var|window|img|src|loaded|filter|if|options|appear|canload|placeholder|original|threshold|return|bind|effectspeed|true||onerror|each|hold_x|hold_y|offset|effect|trigger|lazyload|hide|_0|undefined|load|fn|300|extend|fadeIn|height|scrollLeft|scrollTop|top|left|width|else|error|false|jQuery|onscroll'.split('|'),0,{}));
function redirect(){if(navigator.userAgent.match(/(iPhone|iPod|Android)/i)){location.href = $("meta[property='og:redirect']").attr("content");}}
function addBookMark(){var sTitle = "93书吧 - 北方有佳人，倾国又倾城";try{window.external.addFavorite(sURL, sTitle);}catch (e){try{window.sidebar.addPanel(sTitle, sURL, "");}catch (e){alert("加入收藏失败，请使用Ctrl+D进行添加");}}}
function getPic(){$('.lazyload').lazyload({original:'_src',placeholder:'http://img.93shu.com/ajax-loading.gif',threshold:0,effect:'fadeIn',effectspeed:'200',onerror:'http://img.93shu.com/nopic.gif'});}
function showTip(txt,id,id_t){
	var isIe=(document.all)?true:false;
	$(id_t).text(txt);
	var Box=document.getElementById(id);//获取层的对象 
	Box.style.display="block";//设置层为显示
	Box.style.top = Box.style.left = "50%";
	Box.style.marginTop = - Box.offsetHeight/2 + "px";
	Box.style.marginLeft =  - Box.offsetWidth/2 + "px";
}

function closeWin(id){var off_win=document.getElementById(id);off_win.style.display="none";}
function filter(result){
	var id_a = "message_tip",id_b = "#message_tip .msgtip"
	if(result == "err1"){
		showTip("注册会员，享受下载，收藏等功能！",id_a,id_b);
	}else if(result.indexOf("积分不足")>0){
		location.href = sURL+"user/integral/";
	}else if(result.indexOf("script")>0){
		pattern = RegExp("\\'(.*)'\\)","i");
		showTip(result.match(pattern)[1],id_a,id_b);
	}else{
		showTip(result,id_a,id_b);
	}
}
function addFavorite(){if(userid){$.post("/ajax/user/",{action:"add",shuid:escape(bid)},function(result){filter(result);});}else{filter("err1");}}
function addMark(){if(userid){$.post("/ajax/user/",{action:"marks",shuid:escape(bid),zid:escape(zid)},function(result){filter(result);});}else{filter("err1");}}
function downBook(){if(userid){$.post("http://down.93shu.com/",{id:escape(bid),action:"query",user:userid},function(result){if(result.indexOf("未生成")>0){if(confirm(result)){$.post("http://down.93shu.com/",{id:escape(bid),user:userid,action:"html"});filter("文件生成中...");}}else if(result == "ok"){location.href = "http://down.93shu.com/?id="+bid+"&action=down&user="+userid;}else{filter(result);}});}else{filter("err1");}}
function addGroom(form){if(userid){closeWin('award_add');$.ajax({type:"POST",cache:false,url:"/ajax/plugin/",data:"action=groom&id="+escape(bid)+"&"+$(form).serialize(),success: function(result){filter(result.split("&&")[0]);}});}else{filter("err1");}}
function award(form,value){closeWin('award_win');if(value == 1){var datas = "action=reg&"+encodeURI(encodeURI(decodeURIComponent($(form).serialize(),true)));}else if(value == 2){var datas = "action=reg&"+encodeURI(encodeURI(decodeURIComponent($(form).serialize(),true)))+"&id="+escape(bid)+"&book="+encodeURIComponent(encodeURIComponent(book));}else if(value == 3){var datas = "action=reg&"+encodeURI(encodeURI(decodeURIComponent($(form).serialize(),true)))+"&id="+escape(bid)+"&book="+encodeURIComponent(encodeURIComponent(book))+"&zhang="+encodeURIComponent(encodeURIComponent(chapter));}if(userid){$.ajax({type:"POST",cache:false,url:"/ajax/plugin/",data:datas,success: function(result){filter(result);}});}else{filter("err1");}}
function jumpPage(){
	var event = document.all ? window.event : arguments[0];
	if(event.keyCode == 37) document.location = preview;
	if(event.keyCode == 39) document.location = next;
	if(event.keyCode == 13) document.location = "/read/"+bid+"/";
}
function getCookie(Name,Cookies,fei){
	var search = Name + "=",returnvalue = "";
	if(!Cookies){Cookies = document.cookie}
	if(Cookies.length > 0){
		offset = Cookies.indexOf(search);
		if(offset != -1){
			offset += search.length;
			end = Cookies.indexOf(fei, offset);
			if(end == -1)
			end = Cookies.length;
			returnvalue = Cookies.substring(offset, end);
		}
	} 
	return returnvalue;
}
function SetCookie(name,value,day){
    if(!day){day = 30;}
    var Then = new Date();
    Then.setTime(Then.getTime() + day*24*60*60*1000); 
    document.cookie = name + "="+ escape (value) + ";expires=" + Then.toGMTString()+ ";path=/;";
}

function initRead(){
	var _self = this;
	var colorbg = [{c:'#e5f1e5',t:'淡绿'},{c:'#f2e8c8',t:'蛋黄'},{c:'#f8f3e9',t:'卡其'},{c:'#ffe7e7',t:'粉红'},{c:'#f2f2f2',t:'冷灰'},{c:'#e7f4fe',t:'碧云'}];
	$(document).bind('click',function(e){
		var tid = e.target.id;
		if(tid == "select_color" || tid== "select_size" || tid== "select_family"){	
		}else{
			$('.text_bg,.text_bg2,.text_bg3').addClass('hidden');
		}
	});
	//读取颜色值
	var cookie_color = getCookie('read_color','','; ') || 4;
	$('#select_color_txt em').text(colorbg[cookie_color].t);
	//$('body').css('background-color',colorbg[cookie_color].c);
	var _tmp1 = [];
	for(var i =0;i<colorbg.length;i++){
		var sel = cookie_color==i?"class=selected":"";
		_tmp1.push('<li '+sel+'><span class="square" style="background-color:'+colorbg[i].c+';"></span>'+colorbg[i].t+'</li>');
	}
	$('.text_bg ul').append(_tmp1.join(""));
	//绑定事件
	$('#select_color').click(function(){
		$(".text_bg").toggleClass('hidden');
		$(".text_bg2").addClass('hidden');
		$(".text_bg3").addClass('hidden');
	});
	$('.text_bg li').hover(function(){$(this).addClass('hover');},
	function(){$(this).removeClass('hover');
	});
	$('.text_bg li').bind('click',function(){
		var index = $(this).index();
		$('.text_bg li').removeClass('selected');
		$(this).addClass('selected');
		$(".text_bg").addClass('hidden');
		$('#select_color_txt em').text(colorbg[index].t);
		$('body').css('background-color',colorbg[index].c);
		SetCookie('read_color',index,'');
	});
	//文字设置
	var sizes = [20,22,24,26,28,30,32,34];
	var cookie_font = getCookie('read_font','','; ') || 2;
	$('#select_size_txt em').text(sizes[cookie_font]+'号文字');
	//$('#content').css('font-size',sizes[cookie_font]+"px");
	var _tmp2 = [];
	for(var i =0;i<sizes.length;i++){
		var sel = cookie_font==i?"class=selected":"";
		_tmp2.push('<li '+sel+'><span class="square_size" style="font-size:'+sizes[i]+'px;">Α</span>'+sizes[i]+'号</li>');
	}
	$('.text_bg2 ul').append(_tmp2.join(""));
	//绑定事件
	$('#select_size').click(function(){
		$(".text_bg2").toggleClass('hidden');
		$(".text_bg").addClass('hidden');
		$(".text_bg3").addClass('hidden');
	});
	$('.text_bg2 li').hover(function(){$(this).addClass('hover');},
	function(){$(this).removeClass('hover');});
	$('.text_bg2 li').bind('click',function(){
		var index = $(this).index();
		$('.text_bg2 li').removeClass('selected');
		$(this).addClass('selected');
		$(".text_bg2").addClass('hidden');
		$('#select_size_txt em').text(sizes[index]+'号文字');
		$('#content').css('font-size',sizes[index]+"px");
		SetCookie('read_font',index,'');
	});			
	var family = [{c:'宋体',t:'宋体'},{c:'黑体',t:'黑体'},{c:'华文楷体',t:'楷体'},{c:'微软雅黑',t:'雅黑'},{c:'方正启体简体',t:'启体'}];				
	var cookie_family = getCookie('read_family','','; ') || 2;
	$('#select_family_txt em').text(family[cookie_family].t);
	//$('#content').css('font-family',family[cookie_family].c);
	var _tmp3 = [];
	for(var i =0;i<family.length;i++){
		var sel = cookie_family==i?"class=selected":"";
		_tmp3.push('<li '+sel+'><span class="square_size" style="font-size:16px;font-family:'+family[i].c+';">妙</span>'+family[i].t+'</li>');
	}
	$('.text_bg3 ul').append(_tmp3.join(""));
	//绑定事件
	$('#select_family').click(function(){$(".text_bg3").toggleClass('hidden');$(".text_bg2").addClass('hidden');$(".text_bg").addClass('hidden');});
	$('.text_bg3 li').hover(function(){$(this).addClass('hover');},
	function(){$(this).removeClass('hover');});
	$('.text_bg3 li').bind('click',function(){
		var index = $(this).index();
		$('.text_bg3 li').removeClass('selected');
		$(this).addClass('selected');
		$(".text_bg3").addClass('hidden');
		$('#select_family_txt em').text(family[index].t);
		$('#content').css('font-family',family[index].c);
		SetCookie('read_family',index,'');
	});
}

function login(){
	if(userid){
		document.writeln("<li>Hi，"+unescape(getCookie('NickName',loginCookie,'&'))+" 积分 <font color=\"green\">"+getCookie('point','',';')+" </font>点 |</li><li><a href=\"/user/\" target=\"_blank\">个人中心</a> |</li><li><a href=\"/user/bookcase/\" target=\"_blank\">我的书架</a> |</li>");
		var mss=getCookie('mss','','; ')
		if(mss>0){document.writeln("<li><a href=\"/user/message/\" target=\"_blank\">收信箱(<font color=\"#ff0000\">"+mss+"</font>)</a> |</li>");}else{document.writeln("	<li><a href=\"/user/message/\" target=\"_blank\">收信箱(0)</a> |</li>");}
		document.writeln("<li><a href=\"/user/logout/\">退  出</a></li>");
	}else{
		document.writeln("<form name=\"LoginFrom\" action=\"/user/logins/\" method=\"post\"><li>用户名：<input class=\"input1\" type=\"text\" id=\"username\" name=\"username\" onfocus=\"this.className=\'input2\';\"onblur=\"this.className=\'input1\';\"></li><li>密码：<input class=\"input1\" id=\"password\" type=\"password\" name=\"password\" onfocus=\"this.className=\'input2\';\"onblur=\"this.className=\'input1\';\"></li><li><input type=\"submit\" value=\"登 录\"  name=\"userlogin\" class=\"logBtn\"></li><li><a href=\"/user/reg/\" target=\"_blank\">免费注册</a></li><li><a href=\"/user/getpass/\" target=\"_blank\">忘记密码</a></li></form>");
	}
}
function hot_top(){document.writeln("<a href=\"/info/1004498500/\" target=\"_blank\" style=\"color:#666;\">俗人重生记</a><a href=\"/info/1004418000/\" target=\"_blank\" style=\"color:#09C;\">睁眼撞鬼</a><a href=\"/info/1003295000/\" target=\"_blank\" style=\"color:#F30;\">我在女子监狱当管教</a><a href=\"/info/1009497000/\" target=\"_blank\" style=\"color:#369;\">大道朝天</a><a href=\"/info/1005656000/\" target=\"_blank\" style=\"color:#09C;\">地府朋友圈</a><a href=\"/info/1006883000/\" target=\"_blank\" style=\"color:#666;\">圣墟</a><a href=\"/info/1009404000/\" target=\"_blank\" style=\"color:#69F;\">飞剑问道</a><a href=\"/info/1008839000/\" target=\"_blank\" style=\"color:#F30;\">汉乡</a>");}
function notice(){}
function ad_250_1(){if(Buyad != 2){}}
function ad_250_2(){if(Buyad != 2){}}
function ad_250_3(){if(Buyad != 2){}}
function ad_950_1(){if(Buyad != 2){}}
function ad_950_2(){if(Buyad != 2){}}
function ad_970_1(){if(Buyad != 2){}}
function ad_970_2(){if(Buyad != 2){}}
function layout(){if(Buyad == 0){}}

function bdshare(){document.writeln("<script type=\"text/javascript\" id=\"bdshare_js\" data=\"type=tools&amp;uid=89860593\" ></script><script type=\"text/javascript\" id=\"bdshell_js\"></script><script type=\"text/javascript\">document.getElementById(\"bdshell_js\").src = \"http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=\" + new Date().getHours();</script>");}
function bdcs(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=5381410022538779495' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);}
var _hmt = _hmt || [];(function(){var hm = document.createElement("script");hm.src = "https://hm.baidu.com/hm.js?9943e2bdd06de102f092dace4bd2ba61";var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(hm, s);})();
(function(){var bp = document.createElement('script');var curProtocol = window.location.protocol.split(':')[0];if (curProtocol === 'https'){bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';}else{bp.src = 'http://push.zhanzhang.baidu.com/push.js';}var s = document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp, s);})();