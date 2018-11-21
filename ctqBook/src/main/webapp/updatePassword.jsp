<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link type="text/css"
	href="${pageContext.request.contextPath }/css/93shuUser.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/93shu.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心-修改密码</title>
<script type="text/javascript">
	//验证输入不为空的脚本代码
	function checkForm(form) {
		if (form.newpassword.value == "") {
			alert("新密码不能为空!");
			return false;
		}
		if (form.password.value == "") {
			alert("确认密码不能为空!");
			return false;
		}
		if (form.password.value != form.newpassword.value) {
			alert("两次密码不一致!");
			return false;
		}
		alert("密码修改成功! 即将跳转至首页！");
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
					<li><a href="${pageContext.request.contextPath }/selectlevel">个人中心
							&gt;&gt;</a></li>
					<li><a href="shelf.jsp">我的书架 &gt;&gt;</a></li>
					<li><a href="${pageContext.request.contextPath}/outboxAdd">消息中心 &gt;&gt;</a></li>
					<li class="current"><a href="updateHead.jsp">个人设置 &gt;&gt;</a></li>
					
				</ul>
			</div>
			<div class="content">
				<div class="info">
					<div class="tabMenu mb_20">
						<ul>
							<li><a href="updateHead.jsp">修改头像</a></li>
							<li><a href="updateInfo.jsp">资料修改</a></li>
							<li class="current"><a href="updatePassword.jsp">修改密码</a></li>
						</ul>
					</div>
					<div class="conBox">
						<form name="updateinfo"
							action="${pageContext.request.contextPath }/updatePwd"
							method="post" onsubmit="return checkForm(this);">
							<dl>
								<dt>新密码</dt>
								<dd>
									<input type="password" name="newpassword" id="newpassword"
										size="20">
								</dd>
								<dt>确认密码</dt>
								<dd>
									<input type="password" name="password" id="password" size="20">
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