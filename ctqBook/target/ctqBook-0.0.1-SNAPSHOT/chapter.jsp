<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<link type="text/css" href="css/93shu.css" rel="stylesheet">
<link type="text/css" href="css/bdsstyle.css" rel="stylesheet">
<link type="text/css" href="css/skin.css" rel="stylesheet">
<script type="text/javascript" src="js/93shu.js"></script>
<script type="text/javascript" src="js/bds_s_v2.js"></script>
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/logger.js"></script>
<script type="text/javascript" src="js/push.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>章节</title>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="main">
		<c:forEach items="${chapterlist }" var="vo">
			<div class="coverecom">

				<div class="tabstit">
					<span class="label"></span><a href="myindex">首页</a>&gt;<a
						href="booktype_${vo.novel.novelclasses.type_id.type_id }">${vo.novel.novelclasses.type_id.type_name }</a>&gt;<a
						href="#">${vo.novel.novelname }</a>&gt;<em>章节列表</em>
				</div>
				<div id="smallcons">
					<h1>${vo.novel.novelname }</h1>
					分类：<span>${vo.novel.novelclasses.classesname }</span> 作者：<span><a
						href="findByNovelIda_${vo.novel.author.authorid}" target="_blank" rel="nofollow">${vo.novel.author.authorname }</a></span>
					字数：<span>${vo.novel.numcount }</span> 人气：<span id="Hits">${vo.novel.clickcount }</span>
					更新时间：<span> ${vo.novel.last_date } </span>
				</div>
			
			</div>
			<div id="readerlists">

				<ul>
					<h3>${vo.volume_classname }</h3>
					<div class="border-line"></div>
					<c:forEach var="sec" items="${vo.seclist }">
						<li><a
							href="${pageContext.request.contextPath }/secion_0_${sec.volume_class.novel.novelid}_${sec.sectionid}"
							target="_self">${sec.sectionname}</a></li>
					</c:forEach>
				</ul>

				<div class="all_ad clearfix mtop" id="ad_980_2">
					<script>
						ad_970_1();
						layout();
					</script>
				</div>
				
			</div>
		</c:forEach>
		<div class="clearfix"></div>
	</div>
	<div class="readerts">
		<h4>阅读提示：</h4>
		本站提供的小说版权属于作者。本站所有的作品，图书，资料均为网友更新上传，如果无意中侵犯了您的权利，请与我们联系，本站将在第一时间作出删除，谢谢！
	</div>
	<jsp:include page="foot.jsp" flush="true" />
</body>
</html>
</body>
</html>