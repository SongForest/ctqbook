<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头部</title>
<link type="text/css"
	href="${pageContext.request.contextPath }/css/93shu.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/93shu.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/JsonpAjax.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery_search.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/1.js"></script>
</head>
<body>
	<div id="header">
		<div class="top">
			<span class="loginSide"><a href="#">收藏本站</a> | <a href="#">手机版</a></span>
			<c:if test="${muser == null}">
				<ul>
					<!--登录-->
					<form name="LoginFrom" action="${pageContext.request.contextPath }/login" method="post">
						<li>用户名：<input class="input1" type="text" name="userName"
							onfocus="this.className=&#39;input2&#39;;"
							onblur="this.className=&#39;input1&#39;;"></li>
						<li>密码：<input class="input1" type="password" name="password"
							onfocus="this.className=&#39;input2&#39;;"
							onblur="this.className=&#39;input1&#39;;"></li>
						<li><input type="submit" value="登 录" name="userlogin"
							class="logBtn"></li>
						<li><a href="regist.jsp" target="_self">免费注册</a></li>
					</form>
				</ul>
			</c:if>
			<c:if test="${muser != null}">
				<ul>
					<li>Hi，${muser.userName} <font color="green">${muser.getPoints()}
					</font>点 |
					</li>
					<li><a href="${pageContext.request.contextPath }/selectlevel"
						target="_self">个人中心</a> |</li>
					<li><a href="${pageContext.request.contextPath}/shelf" target="_self">我的书架</a> |</li>
					<li><a href="${pageContext.request.contextPath}/outboxAdd" target="_self">收信箱 </a> |</li>
					<li><a href="${pageContext.request.contextPath }/exit">退 出</a></li>
				</ul>
			</c:if>
		</div>
		<div class="wrap980">
			<div class="logo">
				<a href="index.jsp">书吧</a>
			</div>
			<div class="search">

				<form id="search" name="search" method="post"
					action="${pageContext.request.contextPath }/findNovel"
					target="_self">


					<span class="searchBox"> <input id="text" type="text"
					name="bookname"	placeholder="请您少字也别输错字">
					
					</span> 
					<button type="submit" class="serBtn" >搜索</button> 
					
				</form>
			</div>
			<div class="bdshares">
				<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
					<a class="bds_qzone"></a> <a class="bds_tsina"></a> <a
						class="bds_tqq"></a><span class="bds_more"></span> <a
						class="shareCount"></a>
				</div>
			</div>
			<div class="hot">
				<a href="#" target="_blank" style="color: #666;">斗破苍穹</a> <a
					href="#" target="_blank" style="color: #09C;">斗罗大陆-绝世唐门</a> <a href="#"
					target="_blank" style="color: #F30;">大龟甲师</a> <a href="#"
					target="_blank" style="color: #369;">铁十字</a> <a href="#"
					target="_blank" style="color: #09C;">地府朋友圈</a> <a href="#"
					target="_blank" style="color: #666;">圣墟</a>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="nav">
			<ul>
				<li><a class="current" href="myindex" id="1">
						<h2>首页</h2>
				</a></li>
				<li><a href="${pageContext.request.contextPath }/booktype_1" target="_self" id="2">
						<h2>玄幻·奇幻</h2>
				</a></li>
				<li><a href="${pageContext.request.contextPath }/booktype_2" target="_self" id="3">
						<h2>武侠·仙侠</h2>
				</a></li>
				<li><a href="${pageContext.request.contextPath }/booktype_3" target="_self" id="4">
						<h2>都市·青春</h2>
				</a></li>
				<li><a href="${pageContext.request.contextPath }/booktype_4" target="_self" id="5">
						<h2>历史·军事</h2>
				</a></li>
				<li><a href="${pageContext.request.contextPath }/booktype_5" target="_self" id="6">
						<h2>游戏·竞技</h2>
				</a></li>
				<li><a href="${pageContext.request.contextPath }/booktype_6" target="_self" id="7">
						<h2>科幻·灵异</h2>
				</a></li>
				<li><a href="${pageContext.request.contextPath }/booktype_7" target="_self" id="8">
						<h2>言情·女生</h2>
				</a></li>
				<li><a href="${pageContext.request.contextPath }/list" target="_self" id="9">
						<h2>排行榜</h2>
				</a></li>
				<li><a href="shuku_0_0_0_0_0_1" target="_self" id="0">
						<h2>书库</h2>
				</a></li>
			</ul>
		</div>
	</div>
</body>
</html>