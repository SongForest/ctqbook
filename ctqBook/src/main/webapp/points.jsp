<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0035)http://www.93shu.com/user/integral/ -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>积分中心 - 书吧</title>
<link type="text/css" href="css/93shu_jifen.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/1.js"></script>
</head>

<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="body">
		<div class="main mainT">
			<div id="menu">
				<ul>
					<li><a href="center.jsp">个人中心 &gt;&gt;</a></li>
					<li><a href="#">我的书架 &gt;&gt;</a></li>
					<li><a href="#">消息中心 &gt;&gt;</a></li>
					<li><a href="#">个人设置 &gt;&gt;</a></li>
					<li class="current"><a href="${pageContext.request.contextPath}/CountPoints_1">积分消费 &gt;&gt;</a></li>
				</ul>
			</div>
			<div class="content">
				<div class="info">
					<!-- <div class="tabMenu">
						<ul>
							<li class="current"><a href="#">积分消费</a></li>
							<li class="em">积分： <font class="c_blue" id="JiFei">22</font>
								点 经验： <font class="c_blue" id="JiYan">0</font> 点 金币： <font
								color="#ff6600" id="JinBi">0</font> 点 下线： <font class="c_blue">0</font>
								人
							</li>
						</ul>
					</div> -->
					<div class="message_box">
						<div class="mes_rulbox">
							<li class="one">领取名称</li>
							<li class="two">积分</li>
							<li class="three">邮箱</li>
							<li class="four">领取时间</li>
						</div>
						<div class="mes_rullist"><%-- 
						<c:forEach items="${CountPoint}" var="a"> --%>
							<ul>
								<li class="one" style="text-align: center;">${CountPoint.userName }</li>
								<li class="two" style="padding-left: 15px; width: 75px">${CountPoint.points }</li>
								<li class="three" ><span class="readold">${CountPoint.email}</span></li>
								<li class="four">${CountPoint.create_date }</li>
							</ul><%-- 
						</c:forEach> --%>
							<!-- <ul>
								<li class="one">[ <font class="c_red">投推荐票</font>] <span>每张推荐票赠送
										<font class="c_red">2</font> 积分！
								</span></li>
								<li class="two" style="padding-left: 15px; width: 75px"></li>
								<li class="three"></li>
								<li class="four">系统管理</li>
							</ul> -->
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div id="global-zeroclipboard-html-bridge"
			class="global-zeroclipboard-container" data-clipboard-ready="true"
			style="position: absolute; left: -9999px; top: -9999px; width: 15px; height: 15px; z-index: 9999;">
			<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
				id="global-zeroclipboard-flash-bridge" width="100%" height="100%">
				<param name="movie"
					value="/images/js/ZeroClipboard.swf?nocache=1536656558397">
				<param name="allowScriptAccess" value="sameDomain">
				<param name="scale" value="exactfit">
				<param name="loop" value="false">
				<param name="menu" value="false">
				<param name="quality" value="best">
				<param name="bgcolor" value="#ffffff">
				<param name="wmode" value="transparent">
				<param name="flashvars" value="">
				<embed src="/images/js/ZeroClipboard.swf?nocache=1536656558397"
					loop="false" menu="false" quality="best" bgcolor="#ffffff"
					width="100%" height="100%" name="global-zeroclipboard-flash-bridge"
					allowscriptaccess="always" allowfullscreen="false"
					type="application/x-shockwave-flash" wmode="transparent"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					flashvars="" scale="exactfit">
			</object>
		</div>
		<div id="footer">
			<p class="copyright">
				本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。<br>Copyright 2015
				93书吧 All Rights Reserved
			</p>
		</div>
		</div>
</body>

</html>