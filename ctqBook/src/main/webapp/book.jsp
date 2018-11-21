<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="dateValue" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>朝天曲书吧 - 欢迎来see see~</title>
<link type="text/css" href="css/93shu.css" rel="stylesheet" />
<script src="js/push.js"></script>
<script src="js/hm.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/1.js"></script>
<script type="text/javascript" src="js/93shu.js"></script>
<link href="css/bdsstyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/emoji.c4e81.css" type="text/css" />
<link rel="stylesheet" href="../css/module.429f5.css" type="text/css" />
<link rel="stylesheet" href="../css/layout.5de0f.css" type="text/css" />
<link rel="stylesheet" href="../css/book_details.1ccd3.css"
	type="text/css" />
<script src="js/logger.js"></script>
</head>
<body style="zoom: 1;">
	<iframe frameborder="0" style="display: none;"></iframe>
	<div id="bdshare_s" style="display: block;">
		<iframe id="bdsIfr"
			style="position: absolute; display: none; z-index: 9999;"></iframe>
	</div>
	<jsp:include page="head.jsp" flush="true" />
	<div id="main">
		<div id="maininfo">
			<div class="coverecom w_730 left">
				<div class="tabstit">
					<span class="label"></span> <a href="index.jsp">首页</a>&gt; <a
						href="#">${novelInfo.novelclasses.classesname }</a>&gt;<em>${novelInfo.novelname }</em>
				</div>
				<div id="bookinfo">
					<div class="bookleft">
						<div id="bookimg">
							<img src="${novelInfo.novelimg}" alt="${novelInfo.novelname }" width="160" height="206">
						</div>
					</div>
					<div class="bookright">
						<div class="booktitle">
							<h1>${novelInfo.novelname }</h1>
							<span id="author">作者：<a href="findByNovelIda_${novelInfo.author.authorid}" target="_blank" rel="nofollow">${novelInfo.author.authorname }</a></span>
						</div>
						<div class="count">
							<ul>
								<li>小&nbsp;&nbsp;类：<span>${novelInfo.novelclasses.classesname }</span></li>
								<li>总点击：<span id="Hits">${novelInfo.clickcount }</span></li>
								<li>状&nbsp;&nbsp;态：<span> <c:if
											test="${novelInfo.novelstatus eq 0 }">
											<span>连载中</span>
										</c:if> <c:if test="${novelInfo.novelstatus eq 1 }">
											<span>已完结</span>
										</c:if>
								</span></li>
								<li>总推荐：<span>${novelInfo.votingcount}</span></li>
								<li>总收藏：<span>${novelInfo.collect }</span></li>
								<li>总字数：<span>${novelInfo.sectionid.numbercount }</span></li>
							</ul>
						</div>
						<div id="bookintro">
							<p>${novelInfo.novelsynopsis }</p>
						</div>
						<div class="new">
							<span class="keywords"></span> <span class="uptime"> 最后更新：<span>${novelInfo.last_date }</span></span>
						</div>
					</div>
					<div class="motion">
					
						<a rel="nofollow"
							 href="javascript:showTip(&#39;&#39;,&#39;award_add&#39;,&#39;&#39;);"
							class="tgcjb" title="如果您觉得作者写的好投一张推荐票吧！"><span>投推荐票</span></a> <a
							rel="nofollow" href="javascript:addFavorite(${novelInfo.novelid});" class="tgcjb"
							title="把小说加入您的书架收藏，方便下次直接在书架打开小说。"><span>加入书架</span></a> <a
							href="${pageContext.request.contextPath }/chapter_${novelInfo.novelid}" title="开始阅读" class="tgcj"><span>开始阅读</span></a> <a
							rel="nofollow"

							href="javascript:showTip(&#39;&#39;,&#39;intro_win&#39;,&#39;&#39;);"
							class="tgcj" title="小说简介详细介绍"><span>详细介绍</span></a> <a
							rel="nofollow"  href="javascript:downBook(${novelInfo.novelid});" title="圣墟TXT下载"><span>TXT下载</span></a>
						
					</div>
				</div>
			</div>
			<div class="list_center w_240 right">
				<div class="update_title">
					<span class="update_icon">热门收藏</span>
				</div>
				<div class="hotlist">
					<ul>
						<c:forEach items="${collect }" var="c">
							<li><strong>${c.collect }</strong><span class="genre">[${c.novelclasses.classesname }]</span>
								<a href="Novel_${c.novelid }">${c.novelname }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div id="newlist">
			<div class="newrap">
				<h2>《${novelInfo.novelname }》最新章节</h2>
				<strong><a href="chapter_${novelInfo.novelid}">打开完整目录列表</a></strong>
			</div>
			<ul>
				<c:forEach items="${sectionInfo }" var="s">
					<li><a href="${pageContext.request.contextPath }/secion_0_${s.volume_class.novel.novelid}_${s.sectionid}" target="_self" title="">${s.sectionname }.
							于${s.create_date }更新 </a></li>
				</c:forEach>
			</ul>
		</div>
		<div id="product">
			<h2>精彩推荐</h2>
			<ul>

			<c:forEach items="${novellist }" var="list" >
					<li><a href="Novel_${list.novelid }"><img class="lazyload" src="${list.novelimg}"
						alt="武极巅峰" width="128" height="162">
				</c:forEach>
			</ul>
		</div>

		<!-- 书友评论  -->
	
	</div>

	<div id="award_add" class="dialog hidden">
			<h3>提交推荐票</h3>
			<div class="wrapper">
				<form id="award_a" name="award_a"
					onsubmit="addGroom(this,${novelInfo.novelid});return false;">
					<ul>
						<li><input type="radio" name="num" value="1">1张 <input
							type="radio" name="num" value="2" checked="checked">2张 <input
							type="radio" name="num" value="5">5张 <input type="radio"
							name="num" value="8">8张 <input type="radio" name="num"
							value="10">10张 <input type="radio" name="num" value="15">15张
						</li>
					</ul>
					<div class="input_el">
						<button type="submit" class="btn_small" value="submit">提
							交</button>
						<a href="javascript:closeWin(&#39;award_add&#39;);"
							class="btn_small">关 闭</a>
					</div>
				</form>
			</div>
		</div>
		<div id="message_tip" class="dialog hidden">
			<h3>提示信息</h3>
			<div class="wrapper">
				<div class="msgtip"></div>
			</div>
			<div class="input_el">
				<a href="javascript:closeWin(&#39;message_tip&#39;);"
					class="btn_small">关 闭</a>
			</div>
			<div class="clearfix"></div>
		</div>
	<div id="footer">
	
		<div class="copyright">
			<p>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。</p>
			<p>Copyright 2017 93书吧 All Rights Reserved</p>
		</div>
	</div>

</body>
</html>