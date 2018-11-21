<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link type="text/css" href="css/93shuUser.css" rel="stylesheet">
<script type="text/javascript" src="js/93shu.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心-修改头像</title>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="body">
		<div class="main mainT">
			<div id="menu">
				<ul>
					<li><a href="${pageContext.request.contextPath }/selectlevel">个人中心 &gt;&gt;</a></li>
					<li><a href="shelf.jsp">我的书架 &gt;&gt;</a></li>
					<li><a href="write.jsp">消息中心 &gt;&gt;</a></li>
					<li class="current"><a href="updateHead.jsp">个人设置 &gt;&gt;</a></li>
					
				</ul>
			</div>
			<div class="content">
				<div class="info">
					<div class="tabMenu mb_20">
						<ul>
							<li class="current"><a
								href="updateHead.jsp">修改头像</a></li>
							<li><a href="updateInfo.jsp">资料修改</a></li>
							<li><a href="updatePassword.jsp">修改密码</a></li>
						</ul>
					</div>
					<div class="conBox">
						<form action="${pageContext.request.contextPath }/updateHead" method="post">
							<ul class="headList">
								<li><img src="img/1.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/1.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/2.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/2.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/3.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/3.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/4.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/4.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/5.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/5.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/6.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/6.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/7.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/7.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/8.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/8.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/9.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/9.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/10.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/10.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/11.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/11.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/12.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/12.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/13.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/13.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/14.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/14.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/15.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/15.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/16.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/16.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/17.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/17.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/18.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/18.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/19.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/19.jpg" name="photo"></label>
									</div></li>
								<li><img src="img/20.jpg" width="90"
									height="90">
									<div class="headName">
										<label><input type="radio" value="img/20.jpg" name="photo"></label>
									</div></li>
							</ul>
							<div class="centerBtn">
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