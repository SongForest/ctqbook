<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>书库-朝天曲书吧</title>
<meta name="keywords" content="小说排行榜,小说排行榜2015前50名">
<meta name="description" content="93书吧提供小说排行榜,小说排行榜2015前50名。">
<link type="text/css" href="css/93shu.css" rel="stylesheet">
<script src="js/push.js"></script>
<script src="js/hm.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/93shu.js"></script>
<script src="js/logger.js"></script>
<link href="css/bgstyle.css" rel="stylesheet" type="text/css">

</head>

<body>
	<iframe frameborder="0" style="display: none;"
		src="./书库_files/saved_resource.jsp"></iframe>
	<jsp:include page="head.jsp" flush="true" />
	<div id="main">
		<div class="bookstore">
			<h2 class="title">
				书库
			</h2>
			<div class="tag-group">
				<dl class="pilltags">
					<dt>作品频道：</dt>
					<dd>

						<a <c:if test="${typeid==0 }"> class="cur"</c:if>
							href="shuku_0_0_${nstatus }_${cdate }_${ord }_1">全部</a>

						<c:forEach items="${list1 }" var="lis">
							<a <c:if test="${typeid==lis.type_id }"> class="cur"</c:if>
								href="shuku_${lis.type_id }_${classid }_${nstatus }_${cdate }_${ord }_1">${lis.type_name }</a>
						</c:forEach>
					</dd>
				</dl>
				<dl class="pilltags">
					<dt>作品小类：</dt>
					<dd>
						<c:if test="${classid==0 }">
							<a class="cur"
								href="shuku_${typeid }_0_${nstatus }_${cdate }_${ord }_1">全部</a>
						</c:if>
						<c:if test="${classid!=0 }">
							<a href="shuku_${typeid }_0_${nstatus }_${cdate }_${ord }_1">全部</a>
						</c:if>

						<c:forEach items="${list2 }" var="lis">
							<c:if test="${classid==lis.classesid }">
								<a class="cur"
									href="shuku_${lis.type_id.type_id }_${lis.classesid }_${nstatus }_${cdate }_${ord }_1">${lis.classesname }</a>

							</c:if>
							<c:if test="${classid!=lis.classesid }">
								<a
									href="shuku_${lis.type_id.type_id }_${lis.classesid }_${nstatus }_${cdate }_${ord }_1">${lis.classesname }</a>

							</c:if>
						</c:forEach>
					</dd>
				</dl>
				<dl class="pilltags">
					<dt>是否完结：</dt>
					<dd>

						<a <c:if test="${nstatus==0 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_0_${cdate }_${ord }_1">不限</a>
						<a <c:if test="${nstatus==1 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_1_${cdate }_${ord }_1">连载中</a>
						<a <c:if test="${nstatus==2 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_2_${cdate }_${ord }_1">已完结</a>
					</dd>
				</dl>
				<dl class="pilltags clearfix">
					<dt>更新时间：</dt>
					<dd>
						<a <c:if test="${cdate==0 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_0_${ord }_1">不限</a>
						<a <c:if test="${cdate==1 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_1_${ord }_1">三日内</a>
						<a <c:if test="${cdate==2 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_2_${ord }_1">七日内</a>
						<a <c:if test="${cdate==3 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_3_${ord }_1">半月内</a>
						<a <c:if test="${cdate==4 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_4_${ord }_1">一月内</a>
					</dd>
				</dl>
				<dl class="pilltags">
					<dt>排序方式：</dt>
					<dd>
						<a <c:if test="${ord==0 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_0_1">默认</a>
						<a <c:if test="${ord==1 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_1_1">添加时间</a>
						<a <c:if test="${ord==2 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_2_1">总点击</a>
						<a <c:if test="${ord==6 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_6_1">月点击</a>
						<a <c:if test="${ord==7 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_7_1">周点击</a>
						<a <c:if test="${ord==3 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_3_1">总推荐</a>
						<a <c:if test="${ord==8 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_8_1">月推荐</a>
						<a <c:if test="${ord==9 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_9_1">周推荐</a>
						<a <c:if test="${ord==4 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_4_1">总收藏</a>
						<a <c:if test="${ord==5 }">class="cur"</c:if>
							href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_5_1">总字数</a>
					</dd>
				</dl>
			</div>

		</div>
		<table class="booklists">
			<thead>
				<tr>
					<th width="55">序号</th>
					<th width="520">书名</th>
					<th width="120">作者</th>
					<th width="80">收藏数</th>
					<th width="80">点击</th>
					<th>更新时间</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${novels.list}" var="novel" varStatus="sta">
					<tr>
						<td>${sta.count }</td>
						<td>[${novel.novelclasses.type_id.type_name }]&nbsp;&nbsp; <a
							href="Novel_${novel.novelid }" target="_blank">${novel.novelname }</a>
							<span><a
								href="secion_0_${novel.novelid}_${novel.sectionid.sectionid}"
								target="_blank">${novel.sectionid.sectionname }</a></span>
						</td>
						<td><a
							href="findByNovelIda_${novel.author.authorid}"
							target="_blank" rel="nofollow">${novel.author.authorname }</a></td>
						<td>${novel.numcount }</td>
						<td>${novel.clickcount }</td>
						<td class="nowrap">${novel.sectionid.create_date }</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<div class="pages">
			第 ${novels.pageIndex} / ${novels.pageNumber } 页 共有${novels.count }条记录
			<a href="findNovel?bookname=${book_name }">首页</a>
			<c:if test="${novels.pageIndex>1 }">
				<a
					href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_${ord }_${novels.pageIndex>1?novels.pageIndex-1:1}">上一页</a>
			</c:if>

			<c:choose>
				<%--总页数小于5 --%>
				<c:when test="${novels.pageNumber<5 }">
					<c:forEach begin="1" end="${novels.pageNumber }" var="i">
						<c:if test="${novels.pageIndex == i}">
							<strong> ${i } </strong>
						</c:if>
						<c:if test="${novels.pageIndex != i}">
							<a
								href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_${ord }_${i }">${i }</a>
						</c:if>
					</c:forEach>
				</c:when>
				<%--总页数大于5，且需显示的页数标签不大于5 --%>
				<c:when
					test="${novels.pageNumber>=5 && novels.pageIndex>=1 && novels.pageIndex<=3 }">
					<c:forEach begin="1" end="5" var="i">
						<c:if test="${novels.pageIndex == i}">
							<strong> ${i } </strong>
						</c:if>
						<c:if test="${novels.pageIndex != i}">
							<a
								href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_${ord }_${i }">${i }</a>
						</c:if>
					</c:forEach>
				</c:when>
				<%--总页数大于5，需显示的标签大于5且接近末页 --%>
				<c:when
					test="${novels.pageNumber>5 && novels.pageIndex>3 && novels.pageIndex+2<novels.pageNumber}">
					<c:forEach begin="${novels.pageIndex-2 }"
						end="${novels.pageIndex+2 }" var="i">
						<c:if test="${novels.pageIndex == i}">
							<strong> ${i } </strong>
						</c:if>
						<c:if test="${novels.pageIndex != i}">
							<a
								href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_${ord }_${i }">${i }</a>
						</c:if>
					</c:forEach>
				</c:when>
				<%--末5页 --%>
				<c:when
					test="${novels.pageNumber>5 && novels.pageIndex+2>=novels.pageNumber }">
					<c:forEach begin="${novels.pageNumber-4 }"
						end="${novels.pageNumber }" var="i">
						<c:if test="${novels.pageIndex == i}">
							<strong> ${i } </strong>
						</c:if>
						<c:if test="${novels.pageIndex != i}">
							<a
								href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_${ord }_${i }">${i }</a>
						</c:if>
					</c:forEach>
				</c:when>
			</c:choose>

			<c:if test="${novels.pageIndex<novels.pageNumber }">
				<a
					href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_${ord }_${novels.pageIndex<novels.pageNumber?novels.pageIndex+1:novels.pageNumber}">下一页</a>
			</c:if>
			<a
				href="shuku_${typeid }_${classid }_${nstatus }_${cdate }_${ord }_${novels.pageNumber }">尾页</a>
		</div>
	</div>
	<script>
		bdshare();
		layout();
	</script>
	<script type="text/javascript" id="bdshare_js"
		data="type=tools&amp;uid=89860593" src="./书库_files/bds_s_v2.js"></script>
	<script type="text/javascript">
		document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion="
				+ new Date().getHours();
	</script>

	<div id="footer">
		<div class="copyright">
			<p>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。</p>
			<p>Copyright 2017 93书吧 All Rights Reserved</p>
		</div>
	</div>

</body>

</html>