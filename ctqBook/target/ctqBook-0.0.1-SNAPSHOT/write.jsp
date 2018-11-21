<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/93shuUser.css" rel="stylesheet">
<script type="text/javascript" src="js/93shu.js"></script>
<title>消息中心</title>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="body">
		<div class="main mainT">
			<div id="menu">
				<ul>
					<li><a href="${pageContext.request.contextPath}/selectlevel">个人中心 &gt;&gt;</a></li>
					<li><a href="${pageContext.request.contextPath}/findByNovelId_1">我的书架 &gt;&gt;</a></li>
					<li class="current"><a href="${pageContext.request.contextPath}/outboxAdd">消息中心 &gt;&gt;</a></li>
					<li><a href="updateHead.jsp">个人设置 &gt;&gt;</a></li>
					
				</ul>
			</div>
			<div class="content">
				<div class="info">
					<div class="tabMenu">
						<ul>
							<li class="current"><a href="write.jsp">写短信</a></li>
							<li><a href="incomingEmail.jsp">收件箱</a></li>
							<li><a href="sendEmail.jsp">已发送</a></li>
							<li class="em">已使用 <font class="c_blue">1</font> 条短信,还剩 <font
								class="c_blue">19</font> 条！
							</li>
						</ul>
					</div>
					<div class="message_box">
						<div class="mes_send">
							<li>发送短消息</li>
						</div>
						<form action="outboxAdd" name="myform" method="post" id="myform"
							onsubmit="return CheckForm();">
							<div class="mes_sendlist">
								<ul>
									<li><b>发件人：</b> <input class="textbox" type="text"
										name="outbox_sender.userID" value="" size="40"> <select
										class="textbox" name="font"
										onchange="DoTitle(this.options[this.selectedIndex].value)">
											<option value="系统管理" selected="">好友选择</option>
											<option value="系统管理">系统管理</option>
									</select></li>
									<li><b>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</b> <input class="biaot textbox"
										type="text" name="outbox_title" size="80" maxlength="100" value=""></li>
									<li><b>发送日期</b> <input class="biaot textbox"
										type="text" name="Last_date" size="80" maxlength="100" value=""></li>
									<li class="substance"><b>内 容：</b>&nbsp;<textarea
											name="outbox_content" cols="80" id="content" rows="10"></textarea></li>
								</ul>
							</div>
							<div class="clearfix"></div>
							<div class="select_all">
								<input name="action" type="hidden" id="action" value="">
								<input type="Submit" name="Submit" value="发 送" class="deleteBtn"
									 >
								<input type="reSet" name="Clear" value="取 消" class="deleteBtn"
									 >
							</div>
						</form>
					</div>
					<script type="text/javascript">
                document.onkeydown=function(){
                    if(event.ctrlKey&&event.keyCode==13){
                        document.form1.submit();
                    }
                }
                function CheckForm(){
                    if(document.myform.Touser.value==''){
                        alert('请输入收信人!')
                        document.myform.Touser.focus();
                        return false;
                    }
                    if(document.myform.title.value==''){
                        alert('请输入信件主题!')
                        document.myform.title.focus();
                        return false;
                    }
                }
                function DoTitle(addTitle){
                    var revisedTitle;  
                    var currenttitle = document.myform.Touser.value; 
                    if(currenttitle=="") revisedTitle = addTitle;
                    else{
                        var arr = currenttitle.split(","); 
                        for (var i=0; i < arr.length; i++){
                            if( addTitle.indexOf(arr[i]) >=0 && arr[i].length==addTitle.length ) return; 
                        }
                        revisedTitle = currenttitle+","+addTitle; 
                    }
                    document.myform.Touser.value=revisedTitle;  
                    document.myform.Touser.focus();
                    return; 
                }
                document.onkeydown=function(){
                    if(event.ctrlKey && window.event.keyCode==13){CheckForm();}
                }
                </script>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<jsp:include page="foot.jsp" flush="true" />
</body>
</html>