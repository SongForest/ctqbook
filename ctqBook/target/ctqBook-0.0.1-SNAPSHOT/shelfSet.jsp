<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/93shuUser.css" rel="stylesheet">
<script type="text/javascript" src="js/93shu.js"></script>
<title>我的书架-设置</title>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="body">
		<div class="main mainT">
			<div id="menu">
				<ul>
					<li><a href="${pageContext.request.contextPath }/selectlevel">个人中心 &gt;&gt;</a></li>
					<li class="current"><a
						href="${pageContext.request.contextPath}/findByNovelId_1">我的书架 &gt;&gt;</a></li>
					<li><a href="${pageContext.request.contextPath}/outboxAdd">消息中心
							&gt;&gt;</a></li>
					<li><a href="updateHead.jsp">个人设置
							&gt;&gt;</a></li>
				</ul>
			</div>
			<div class="content">
				<div class="info">
					<div class="tabMenu">
						<ul>
							<li><a href="shelf.jsp">书架</a></li>
							<li class="current"><a
								href="shelfSet.jsp">设置</a></li>
							<li class="em">共 <font class="c_blue">0</font> 本书
							</li>
						</ul>
					</div>

					<div class="conBox">
						<form method="post"
							action="#" name="myform">
							<dl>
								<dt>排 序</dt>
								<dd>
									<label><input type="radio" name="BCpx" value="1"
										class="gender"> 关</label>&nbsp;&nbsp; <label><input
										type="radio" name="BCpx" value="0" checked="checked"
										class="gender"> 开</label> <span>看完最新章节<font
										color="#6ebdf2"><b>移动到书架最下方</b></font></span>
								</dd>
								<dt>书 架</dt>
								<dd>
									<label><input type="radio" name="BCase" value="0"
										checked="checked" class="gender"> 关</label>&nbsp;&nbsp; <label><input
										type="radio" name="BCase" value="1" class="gender"> 开</label>
									<span>手机版使用<font color="#6ebdf2"><b>电脑版</b>书架</font></span>
								</dd>
								<dt>书架</dt>
								<dd>
									<input type="text" value="书架" name="BC1" maxlength="5"><span>自定义书架名称，<font
										class="c_red">最多<font class="a_red"><b>5</b></font>个字
									</font></span>
								</dd>												
							</dl>
							<div class="leftBtn">
								<input type="submit" class="greenBtn" value="保 存">
							</div>
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