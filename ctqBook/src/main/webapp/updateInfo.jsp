<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link type="text/css" href="css/93shuUser.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/93shu.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心-资料修改</title>
<script type="text/javascript">
	//验证输入不为空的脚本代码
	function checkForm(form) {
		if (form.Nickname.value == "") {
			alert("昵称不能为空!");
			return false;
		}
		if (form.Emal.value == "") {
			alert("邮箱不能为空!");
			return false;
		}
		alert("个人信息保存成功！");
		return true;
	}
</script>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="body">
		<div class="main mainT">
			<div id="menu">
				<ul>
					<li><a href="${pageContext.request.contextPath }/selectlevel">个人中心 &gt;&gt;</a></li>
					<li><a href="shelf.jsp">我的书架 &gt;&gt;</a></li>
					<li><a href="#">消息中心 &gt;&gt;</a></li>
					<li class="current"><a href="updateHead.jsp">个人设置 &gt;&gt;</a></li>
					
				</ul>
			</div>
			<div class="content">
				<div class="info">
					<div class="tabMenu mb_20">
						<ul>
							<li><a href="updateHead.jsp">修改头像</a></li>
							<li class="current"><a href="updateHead.jsp">资料修改</a></li>
							<li><a href="updatePassword.jsp">修改密码</a></li>
						</ul>
					</div>
					<div class="conBox">
						<form name="updateinfo" id="form" action="${pageContext.request.contextPath }/updateinfo" method="post" onsubmit="return checkForm(this);">
							<input type="hidden" name="UserFace" value="0">
							<dl>
								<dt>用 户</dt>
								<dd>
									<input type="text" value="${muser.userName}" maxlength="10"	disabled="disabled">
								</dd>
								<dt>昵 称</dt>
								<dd>
									<input type="text" value="${muser.nickname}" name="Nickname" id="Nickname" maxlength="10"><span id="NicknameMsg">请输入纯中文会员昵称</span>
								</dd>
								<dt>邮 箱</dt>
								<dd>
									<input type="text" value="${muser.email}" name="Emal" id="Emal"><span id="EmalMsg">常用邮箱方便找回密码</span>
								</dd>
								<dt>性 别</dt>
								<dd>
								<c:if test="${muser.userSex eq '男'}" >
								<label><input type="radio" name="Gender" value="男" checked="checked" class="gender">男</label>&nbsp;&nbsp;
								<label><input type="radio" name="Gender" value="女" class="gender"> 女</label>
								</c:if>
								<c:if test="${muser.userSex eq '女'}" >
								<label><input type="radio" name="Gender" value="男" class="gender">男</label>&nbsp;&nbsp; 
								<label><input type="radio" name="Gender" value="女" checked="checked" class="gender">女</label>
								</c:if>
								<c:if test="${muser.userSex eq ''}" >
								<label><input type="radio" name="Gender" value="男" checked="checked" class="gender">男</label>&nbsp;&nbsp; 
								<label><input type="radio" name="Gender" value="女" class="gender">女</label>
								</c:if>
								
								</dd>						
								<dt>签 名</dt>
								<dd>
									<input type="text" class="sign" name="Sign" value="${muser.userSign}" maxlength="150">
								</dd>
							</dl>
							<div class="leftBtn">
								<input type="submit" class="greenBtn" value="保 存">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<jsp:include page="foot.jsp" flush="true" />
</body>
</html>