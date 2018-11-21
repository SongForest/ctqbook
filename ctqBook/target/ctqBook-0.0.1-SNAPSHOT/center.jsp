<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员中心 - 朝天曲书吧</title>
<link type="text/css" href="css/user.css" rel="stylesheet" />
<script type="text/javascript" src="js/grzx.js"></script>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="body">
		<div class="main">
			<div id="menu">
				<ul>
					<li class="current"><a href="center.jsp">个人中心 &gt;&gt;</a></li>
					<li><a href="${pageContext.request.contextPath}/shelf">我的书架 &gt;&gt;</a></li>
					<li><a href="${pageContext.request.contextPath}/outboxAdd">消息中心 &gt;&gt;</a></li>
					<li><a href="updateHead.jsp">个人设置 &gt;&gt;</a></li>
					
				</ul>
			</div>
			<div class="content">
				<div class="info infoT">
					<div class="infoBox">
						<div class="infoBoxLeft">
							<img src="${muser.head_thumb}" border="0 " />
							<div class="btn ">
								<a class="b_mr " href="updateHead.jsp">修改头像</a> <a
									href="updateInfo.jsp">修改资料</a>
							</div>
						</div>
						<div class="infoBoxRight ">
							<div class="infoRightTop ">
								<p class="userName ">
									晚上好： <span>${muser.nickname}</span>
								</p>
								<div class="userMeg ">
									<a target="_blank " href="# ">收信箱 ( <span>1</span> )
									</a>
								</div>
							</div>
							<ul class="recharge ">
								<li><label>用户等级：</label><em>Lv${muser.level.level_name}</em></li>
								<li><label>拥有积分：</label><font class="c_blue ">${muser.points}</font>点
									&nbsp;&nbsp;&nbsp; 经验值：<font class="c_blue ">${muser.experience}</font>点
									&nbsp;&nbsp;&nbsp;<a href="# ">积分消费/兑换</a></li>
								<li><label>书籍收藏：</label><font class="c_blue ">1</font>/200</li>
								<li><span class="c9 ">短信权限：</span>20人,20条储存</li>
								<li><span class="c9 ">推 荐 票：</span>5张/天 剩余：
								<font class="c_blue ">${muser.ticket}</font> 张</li>
								<li><span class="c9 ">个人签名：</span>${muser.userSign} </li>
								<li><span class="c9 ">最后登录：</span><font class="c_red ">${muser.last_date}</font> </li>
							
							</ul>
						</div>
						<div class="clearfix "></div>
					</div>
					<div class="newBox ">
					
						<ul>
							<li><span>您当前等级为：<font class="c_red ">Lv${muser.level.level_name}</font></span><span>经验：<font class="c_red ">${muser.experience}</font>点</span><span>下载：<font class="c_red ">${muser.level.amount_downloads}</font>/天
							</span><span>推荐票：<font class="c_red ">${muser.ticket}</font>/天
							</span><span>短信权限：<font class="c_red ">20</font>人
							</span><span>*</span></li>
							<li>----------------------------------------------------------等级详情-----------------------------------------------------------</li>
							<c:forEach items="${lev}" var="lv">
							<li><span>等级：Lv${lv.level_name}</span><span>经验：${lv.experience}</span><span>下载：${lv.amount_downloads}/天</span>
							<span>推荐票：${lv.ticket}/天</span><span>短信权限：20人</span><span>*</span></li>
							</c:forEach>
						</ul>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="copyright">
			<br />
			<p>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。</p>
			<p>Copyright 2017 93书吧 All Rights Reserved</p>
			<br />
		</div>
	</div>
</body>
</html>