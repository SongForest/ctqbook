function addBookMark(){
	var sURL = "http://www.93shu.com/";
	var sTitle = "93书吧 - 北方有佳人，倾国又倾城";
	try{
		window.external.addFavorite(sURL, sTitle);
	}catch (e){
		try{
			window.sidebar.addPanel(sTitle, sURL, "");
		}catch (e){
			alert("加入收藏失败，请使用Ctrl+D进行添加");
		}
	}
}
function getCookie(Name,Cookies,fei){
	var search = Name + "="
	var returnvalue = "";
	if(!Cookies){Cookies = document.cookie}
	if(Cookies.length > 0){
		offset = Cookies.indexOf(search);
		if(offset != -1){
			offset += search.length;
			end = Cookies.indexOf(fei, offset);
			if(end == -1)
			end = Cookies.length;
			returnvalue=Cookies.substring(offset, end);
		}
	} 
	return returnvalue;
}
function hot_top(){document.writeln("<a href=\"/info/1004498500/\" target=\"_blank\" style=\"color:#666;\">俗人重生记</a><a href=\"/info/1004418000/\" target=\"_blank\" style=\"color:#09C;\">睁眼撞鬼</a><a href=\"/info/1003295000/\" target=\"_blank\" style=\"color:#F30;\">我在女子监狱当管教</a><a href=\"/info/1004498000/\" target=\"_blank\" style=\"color:#369;\">铁十字</a><a href=\"/info/1005656000/\" target=\"_blank\" style=\"color:#09C;\">地府朋友圈</a><a href=\"/info/1006883000/\" target=\"_blank\" style=\"color:#666;\">圣墟</a><a href=\"/info/1006698000/\" target=\"_blank\" style=\"color:#69F;\">1980之他来自未来</a>");}

function CheckAll(form){
	for(var i=0;i<form.elements.length;i++){
		var e = form.elements[i];
		if(e.Name != "chkAll"&&e.disabled!=true&&e.zzz!=1)
		e.checked = form.chkAll.checked;
	}
}

function hello(){
  var now=(new Date()).getHours();
  if(now>0&&now<=6){
	  document.write("午夜好：");
  }else if(now>6&&now<=11){
	  document.write("早上好：");
  }else if(now>11&&now<=14){
	  document.write("中午好：");
  }else if(now>14&&now<=18){
	  document.write("下午好：");
  }else{
	  document.write("晚上好：");
  }
}

function test(){
	if(!confirm('确认删除吗？')) return false;
}
function login(){
	var logins = getCookie('shuba',"","; ")
	if(!logins){
		document.writeln("<form name=\"LoginFrom\" action=\"/user/logins/\" method=\"post\"><li>用户名：<input class=\"input1\" type=\"text\" id=\"username\" name=\"username\" onfocus=\"this.className=\'input2\';\"onblur=\"this.className=\'input1\';\"></li><li>密码：<input class=\"input1\" id=\"password\" type=\"password\" name=\"password\" onfocus=\"this.className=\'input2\';\"onblur=\"this.className=\'input1\';\"></li><li><input type=\"submit\" value=\"登 录\"  name=\"userlogin\" class=\"logBtn\"></li><li><a href=\"/user/reg/\" target=\"_blank\">免费注册</a></li><li><a href=\"/user/getpass/\" target=\"_blank\">忘记密码</a></li></form>");
	}else{
		document.writeln("<li>Hi，"+unescape(getCookie('NickName',logins,'&'))+" 积分 <font color=\"green\">"+getCookie('point','',';')+" </font>点 |</li><li><a href=\"/user/\" target=\"_blank\">个人中心</a> |</li><li><a href=\"/user/bookcase/\" target=\"_blank\">我的书架</a> |</li>");
		var mss=getCookie('mss','','; ')
		if(mss>0){document.writeln("<li><a href=\"/user/message/\" target=\"_blank\">收信箱(<font color=\"#ff0000\">"+mss+"</font>)</a> |</li>");}else{document.writeln("	<li><a href=\"/user/message/\" target=\"_blank\">收信箱(0)</a> |</li>");}
		document.writeln("<li><a href=\"/user/logout/\">退  出</a></li>");
	}
}
var selects = document.getElementsByName('Newsid');
var isIE = (document.all && window.ActiveXObject && !window.opera) ? true : false;
function stopBubbling(ev){ev.stopPropagation();}
function rSelects() {
	for (i=0;i<selects.length;i++){
		selects[i].style.display = 'none';
		select_tag = document.createElement('div');
		select_tag.id = 'select_' + selects[i].name;
		select_tag.className = 'select_box';
		selects[i].parentNode.insertBefore(select_tag,selects[i]);

		select_info = document.createElement('div');	
		select_info.id = 'select_info_' + selects[i].name;
		select_info.className='tag_select';
		select_info.style.cursor='pointer';
		select_tag.appendChild(select_info);

		select_ul = document.createElement('ul');	
		select_ul.id = 'options_' + selects[i].name;
		select_ul.className = 'tag_options';
		select_ul.style.position='absolute';
		select_ul.style.display='none';
		select_ul.style.zIndex='999';
		select_tag.appendChild(select_ul);
		rOptions(i,selects[i].name);
		mouseSelects(selects[i].name);

		if (isIE){
			selects[i].onclick = new Function("clickLabels3('"+selects[i].name+"');window.event.cancelBubble = true;");
		}
		else if(!isIE){
			selects[i].onclick = new Function("clickLabels3('"+selects[i].name+"')");
			selects[i].addEventListener("click", stopBubbling, false);
		}		
	}
}
function rOptions(i, name) {
	var options = selects[i].getElementsByTagName('option');
	var options_ul = 'options_' + name;
	for (n=0;n<selects[i].options.length;n++){	
		option_li = document.createElement('li');
			option_li.style.cursor='pointer';
			option_li.className='open';
		$(options_ul).appendChild(option_li);

		option_text = document.createTextNode(selects[i].options[n].text);
		option_li.appendChild(option_text);

		option_selected = selects[i].options[n].selected;

		if(option_selected){
			option_li.className='open_selected';
			option_li.id='selected_' + name;
			$('select_info_' + name).appendChild(document.createTextNode(option_li.innerHTML));
		}
		
		option_li.onmouseover = function(){	this.className='open_hover';}
		option_li.onmouseout = function(){
			if(this.id=='selected_' + name){
				this.className='open_selected';
			}else{
				this.className='open';
			}
		}
		option_li.onclick = new Function("clickOptions("+i+","+n+",'"+selects[i].name+"')");
	}
}
function mouseSelects(name){
	var sincn = 'select_info_' + name;

	$(sincn).onmouseover = function(){ if(this.className=='tag_select') this.className='tag_select_hover'; }
	$(sincn).onmouseout = function(){ if(this.className=='tag_select_hover') this.className='tag_select'; }

	if (isIE){
		$(sincn).onclick = new Function("clickSelects('"+name+"');window.event.cancelBubble = true;");
	}
	else if(!isIE){
		$(sincn).onclick = new Function("clickSelects('"+name+"');");
		$('select_info_' +name).addEventListener("click", stopBubbling, false);
	}

}
function clickSelects(name){
	var sincn = 'select_info_' + name;
	var sinul = 'options_' + name;	

	for (i=0;i<selects.length;i++){	
		if(selects[i].name == name){				
			if( $(sincn).className =='tag_select_hover'){
				$(sincn).className ='tag_select_open';
				$(sinul).style.display = '';
			}
			else if( $(sincn).className =='tag_select_open'){
				$(sincn).className = 'tag_select_hover';
				$(sinul).style.display = 'none';
			}
		}
		else{
			$('select_info_' + selects[i].name).className = 'tag_select';
			$('options_' + selects[i].name).style.display = 'none';
		}
	}

}
function clickOptions(i, n, name){		
	var li = $('options_' + name).getElementsByTagName('li');

	$('selected_' + name).className='open';
	$('selected_' + name).id='';
	li[n].id='selected_' + name;
	li[n].className='open_hover';
	$('select_' + name).removeChild($('select_info_' + name));

	select_info = document.createElement('div');
	select_info.id = 'select_info_' + name;
	select_info.className='tag_select';
	select_info.style.cursor='pointer';
	$('options_' + name).parentNode.insertBefore(select_info,$('options_' + name));

	mouseSelects(name);

	$('select_info_' + name).appendChild(document.createTextNode(li[n].innerHTML));
	$( 'options_' + name ).style.display = 'none' ;
	$( 'select_info_' + name ).className = 'tag_select';
	selects[i].options[n].selected = 'selected';

}
window.onload = function(e){
	bodyclick = document.getElementsByTagName('body').item(0);
	rSelects();
	bodyclick.onclick = function(){
		for (i=0;i<selects.length;i++){	
			$('select_info_' + selects[i].name).className = 'tag_select';
			$('options_' + selects[i].name).style.display = 'none';
		}
	}
}