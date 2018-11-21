
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小说列表</title>
<link type="text/css" href="css/93shu.css" rel="stylesheet">
<script src="js/push.js"></script>
<script src="js/hm.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/1.js"></script>
<link href="css/bgstyle.css" rel="stylesheet" type="text/css">
<script src="js/logger.js"></script>
</head>
<body>
	<div id="bdshare_s" style="display: block;">
		<iframe id="bdsIfr"
			style="position: absolute; display: none; z-index: 9999;"
			frameborder="0"></iframe>
	</div>
	<jsp:include page="head.jsp" flush="true" />
	<div id="main">
		<div id="listtop">
			<div class="list">
				<h2>热力推荐</h2>
				<div class="recombook">
					<c:forEach items="${booktype.type1 }" var="type">
						<dl>
							<dt>
								<a href="Novel_${type.novelid}"><img src="${type.novelimg }"
									alt="#" height="158" width="128"></a>
							</dt>
							<dd>
								<a href="Novel_${type.novelid}">
									<h3>${type.novelname }</h3>
								</a>
							</dd>
							<dd class="tit">作者：${type.author.authorname }</dd>
							<dd class="name">${type.novelsynopsis }</dd>
							<dd class="contents">
								<a href="Novel_${type.novelid}" target="_blank">[开始阅读]</a>
							</dd>
						</dl>
					</c:forEach>
				</div>
			</div>
			<div class="listbox">
				<h2>本周强推</h2>
				<div class="recombook">
					<c:forEach items="${booktype.type2}" varStatus="sta1" var="type">
						<c:if test="${sta1.count==1 }">
							<dl>
								<dt>
									<a href="Novel_${type.novelid}" target="_blank"><img
										src="${type.novelimg }" alt="${type.novelname }" width="112"
										height="140"></a>
								</dt>
								<dd>
									<a href="Novel_${type.novelid}" target="_blank">
										<h3>${type.novelname }</h3>
									</a>
								</dd>
								<dd class="name">${type.novelsynopsis }</dd>
							</dl>
						</c:if>
						<c:if test="${sta1.count!=1 }">
							<li>
								<h3>
									[${type.novelclasses.classesname }] <a
										href="Novel_${type.novelid}" title="${type.novelname }"
										target="_blank">${type.novelname }</a>
								</h3>
							</li>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div id="ad_980">
			<script>
				ad_970_2();
			</script>
		</div>
		<div class="list_center">

			<div class="update_title">
				<span class="update_icon">${type.novelclasses.type_id.type_name }
					小说列表</span>
			</div>
			<div id="sitebox">
				<c:forEach items="${booktype.type3}" var="type">
					<dl>
						<dt>
							<a href="Novel_${type.novelid}"><img src="${type.novelimg }"
								alt="${type.novelname }" height="155" width="120"></a>
						</dt>
						<dd>
							<h3>
								<span class="uptime">${type.last_date }</span><a
									href="Novel_${type.novelid}">${type.novelname }</a>
							</h3>
						</dd>
						<dd class="book_other">
							作者：<span><a href="Novel_${type.novelid}" target="_blank"
								rel="nofollow">${type.author.authorname }</a></span>状态：<span>连载中</span>
						</dd>
						<dd class="book_des">${type.novelsynopsis }</dd>
						<dd class="book_other">
							最新章节： <a href="Novel_${type.novelid}">${type.sectionid.sectionname }</a>
						</dd>
						<dd class="book_other"></dd>
					</dl>
				</c:forEach>
				<div class="clearfix"></div>
			</div>


		</div>

		<div class="all_ad mtop" id="ad_980_2">
			<script>
				getPic();
				ad_970_1();
				layout();
			</script>
		</div>
		<div class="pages"></div>
	</div>
	<jsp:include page="foot.jsp" />

</body>

</html>