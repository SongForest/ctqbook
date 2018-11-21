<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/93shuUser.css" rel="stylesheet">
<script type="text/javascript" src="js/93shu.js"></script>
<title>消息中心-已发送</title>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="body">
		<div class="main mainT">
			<div id="menu">
				<ul>
					<li><a href="${pageContext.request.contextPath }/selectlevel">个人中心 &gt;&gt;</a></li>
					<li><a href="${pageContext.request.contextPath}/findByNovelId_1">我的书架 &gt;&gt;</a></li>
					<li class="current"><a href="inboxList">消息中心 &gt;&gt;</a></li>
					<li><a href="updateHead.jsp">个人设置 &gt;&gt;</a></li>
					
				</ul>
			</div>
			<div class="content">
				<div class="info">
					<div class="tabMenu">
						<ul>
							<li><a href="write.jsp">写短信</a></li>
							<li><a href="incomingEmail.jsp">收件箱</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/outboxList">已发送</a></li>
							<li class="em">已使用 <font class="c_blue">1</font> 条短信,还剩 <font
								class="c_blue">19</font> 条！
							</li>
						</ul>
					</div>
					<div class="message_box">
						<div class="mes_rulbox">
							<li class="one">主题</li>
							<li class="two">内容</li> 
							<li class="three">日期</li> 
							<!-- <li class="four">大小</li> -->
						</div>
						<form action="#" method="post" name="inbox">
							<div class="mes_rullist">
							<c:forEach items="${outbox}" var="a">
								<ul class="last">
									<li class="one"><input name="ID" type="checkbox" id="ID"
										value="1155670"><a
										href="#">${a.outbox_title }</a></li>
									<li class="two">${a.outbox_content }</li>
									  <li class="three">${a.last_date }</li> 
									<%-- <li class="four">${a.manstatus }</li> --%>
								</ul>
								</c:forEach>
							</div>
							<div class="clearfix"></div> 
						</form>
					</div>
					 
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<jsp:include page="foot.jsp" flush="true" />
</body>
</html>