<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>朝天曲书吧 - 北方有佳人，倾国又倾城</title>
<meta name="keywords" content="铁十字,狼性总裁要够了没,不眠之夜,灭世武修,地府朋友圈" />
<meta name="description"
	content="朝天曲书吧提供最新最热的首发言情小说,有豪门总裁,穿越架空,种田重生,宫廷争斗,青春校园,都市高干,仙侠幻情,悬疑灵异等一系列的作品,做最好的小说阅读网。" />
<link type="text/css" href="css/93shu.css" rel="stylesheet" />

<link href="css/bdsstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<iframe frameborder="0" style="display: none;"></iframe>
	<div id="bdshare_s" style="display: block;">
		<iframe id="bdsIfr"
			style="position: absolute; display: none; z-index: 9999;"></iframe>
	</div>
	<jsp:include page="head.jsp" flush="true" />
	</div>
	<div id="main">
		<div class="coverecom mbottom">
			<div class="tabstit">
				<span class="label"></span><em>本周强推</em>
			</div>
			<div class="recombook">
				<c:forEach items="${indexs.list1 }" var="novelResult">
					<dl>
						<dt>
							<a href="Novel_${novelResult.novelid }"><img class="lazyload"
								src="${novelResult.novelimg }" alt="${novelResult.novelname }"
								height="158" width="128" style="display: inline;"></a>
						</dt>
						<dd>
							<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
						</dd>
						<dd>${novelResult.novelname }</dd>
						<dd class="tit">作者：${novelResult.author.authorname }</dd>
						<dd class="name">${novelResult.novelsynopsis }</dd>
					</dl>
				</c:forEach>
			</div>
		</div>

		<div class="coverecom w_440 left mbottom">
			<div class="tabstit">
				<span class="label"></span><em>玄幻奇幻</em>
			</div>
			<div class="recomclass">
				<c:forEach items="${indexs.list2 }" var="novelResult"
					varStatus="sta">
					<c:if test="${sta.count<=2 }">
						<dl>
							<dt>
								<a href="Novel_${novelResult.novelid }"><img
									class="lazyload" src="${pageContext.request.contextPath }/${novelResult.novelimg}"
									alt="${novelResult.novelname }" height="158" width="128"
									style="display: inline;"></a>
							</dt>
							<dd>
								<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
							</dd>
							<dd>${novelResult.novelname }</dd>
							<dd class="tit">作者：${novelResult.author.authorname }</dd>
							<dd class="name">${novelResult.novelsynopsis }</dd>
						</dl>
					</c:if>
				</c:forEach>
				<ul>
					<c:forEach items="${indexs.list2 }" var="novelResult"
						varStatus="sta">
						<c:if test="${sta.count>2 }">
							<li><em>${novelResult.novelname }</em> <a
								href="Novel_${novelResult.novelid }">${novelResult.novelname }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="coverecom w_440 right mbottom">
			<div class="tabstit">
				<span class="label"></span><em>武侠仙侠</em>
			</div>
			<div class="recomclass">
				<c:forEach items="${indexs.list3 }" var="novelResult"
					varStatus="sta">
					<c:if test="${sta.count<=2 }">
						<dl>
							<dt>
								<a href="Novel_${novelResult.novelid }"><img
									class="lazyload" src="${pageContext.request.contextPath }/${novelResult.novelimg}"
									alt="${novelResult.novelname }" height="158" width="128"
									style="display: inline;"></a>
							</dt>
							<dd>
								<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
							</dd>
							<dd>${novelResult.novelname }</dd>
							<dd class="tit">作者：${novelResult.author.authorname }</dd>
							<dd class="name">${novelResult.novelsynopsis }</dd>
						</dl>
					</c:if>
				</c:forEach>
				<ul>
					<c:forEach items="${indexs.list3 }" var="novelResult"
						varStatus="sta">
						<c:if test="${sta.count>2 }">
							<li><em>${novelResult.novelname }</em> <a
								href="Novel_${novelResult.novelid }">${novelResult.novelname }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="coverecom w_440 left">
			<div class="tabstit">
				<span class="label"></span><em>都市青春 — 历史军事</em>
			</div>
			<div class="recomclass">
				<c:forEach items="${indexs.list4 }" var="novelResult"
					varStatus="sta">
					<c:if test="${sta.count==1 }">
						<dl>
							<dt>
								<a href="Novel_${novelResult.novelid }"><img
									class="lazyload" src="${pageContext.request.contextPath }/${novelResult.novelimg}"
									alt="${novelResult.novelname }" height="158" width="128"
									style="display: inline;"></a>
							</dt>
							<dd>
								<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
							</dd>
							<dd>${novelResult.novelname }</dd>
							<dd class="tit">作者：${novelResult.author.authorname }</dd>
							<dd class="name">${novelResult.novelsynopsis }</dd>
						</dl>
					</c:if>
				</c:forEach>
				<c:forEach items="${indexs.list5 }" var="novelResult"
					varStatus="sta">
					<c:if test="${sta.count==1 }">
						<dl>
							<dt>
								<a href="Novel_${novelResult.novelid }"><img
									class="lazyload" src="${pageContext.request.contextPath }/${novelResult.novelimg}"
									alt="${novelResult.novelname }" height="158" width="128"
									style="display: inline;"></a>
							</dt>
							<dd>
								<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
							</dd>
							<dd>${novelResult.novelname }</dd>
							<dd class="tit">作者：${novelResult.author.authorname }</dd>
							<dd class="name">${novelResult.novelsynopsis }</dd>
						</dl>
					</c:if>
				</c:forEach>
				<ul>
					<c:forEach items="${indexs.list4 }" var="novelResult"
						varStatus="sta">
						<c:if test="${sta.count>1 }">
							<li><em>${novelResult.novelname }</em> <a
								href="Novel_${novelResult.novelid }">${novelResult.novelname }</a></li>
						</c:if>
					</c:forEach>
				</ul>
				<ul>
					<c:forEach items="${indexs.list5 }" var="novelResult"
						varStatus="sta">
						<c:if test="${sta.count>1 }">
							<li><em>${novelResult.novelname }</em> <a
								href="Novel_${novelResult.novelid }">${novelResult.novelname }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="coverecom w_440 right">
			<div class="tabstit">
				<span class="label"></span><em>科幻灵异 — 游戏竞技</em>
			</div>
			<div class="recomclass">
				<c:forEach items="${indexs.list6 }" var="novelResult"
					varStatus="sta">
					<c:if test="${sta.count==1 }">
						<dl>
							<dt>
								<a href="Novel_${novelResult.novelid }"><img
									class="lazyload" src="${pageContext.request.contextPath }/${novelResult.novelimg}"
									alt="${novelResult.novelname }" height="158" width="128"
									style="display: inline;"></a>
							</dt>
							<dd>
								<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
							</dd>
							<dd>${novelResult.novelname }</dd>
							<dd class="tit">作者：${novelResult.author.authorname }</dd>
							<dd class="name">${novelResult.novelsynopsis }</dd>
						</dl>
					</c:if>
				</c:forEach>
				<c:forEach items="${indexs.list7 }" var="novelResult"
					varStatus="sta">
					<c:if test="${sta.count==1 }">
						<dl>
							<dt>
								<a href="Novel_${novelResult.novelid }"><img
									class="lazyload" src="${pageContext.request.contextPath }/${novelResult.novelimg}"
									alt="${novelResult.novelname }" height="158" width="128"
									style="display: inline;"></a>
							</dt>
							<dd>
								<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
							</dd>
							<dd>${novelResult.novelname }</dd>
							<dd class="tit">作者：${novelResult.author.authorname }</dd>
							<dd class="name">${novelResult.novelsynopsis }</dd>
						</dl>
					</c:if>
				</c:forEach>
				<ul>
					<c:forEach items="${indexs.list6 }" var="novelResult"
						varStatus="sta">
						<c:if test="${sta.count>1 }">
							<li><em>${novelResult.novelname }</em> <a
								href="Novel_${novelResult.novelid }">${novelResult.novelname }</a></li>
						</c:if>
					</c:forEach>
				</ul>
				<ul>
					<c:forEach items="${indexs.list7 }" var="novelResult"
						varStatus="sta">
						<c:if test="${sta.count>1 }">
							<li><em>${novelResult.novelname }</em> <a
								href="Novel_${novelResult.novelid }">${novelResult.novelname }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="coverecom left w_980">
			<div class="tabstit">
				<span class="label"></span><em>女生同人</em>
			</div>
			<div class="recomclass">
				<c:forEach items="${indexs.list8 }" var="novelResult"
					varStatus="sta">
					<c:if test="${sta.count<=4 }">
						<dl>
							<dt>
								<a href="Novel_${novelResult.novelid }"><img
									class="lazyload" src="${pageContext.request.contextPath }/${novelResult.novelimg}"
									alt="${novelResult.novelname }" height="158" width="128"
									style="display: inline;"></a>
							</dt>
							<dd>
								<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
							</dd>
							<dd>${novelResult.novelname }</dd>
							<dd class="tit">作者：${novelResult.author.authorname }</dd>
							<dd class="name">${novelResult.novelsynopsis }</dd>
						</dl>
					</c:if>
				</c:forEach>
				<ul>
					<c:forEach items="${indexs.list8 }" var="novelResult"
						varStatus="sta">
						<c:if test="${sta.count>4 }">
							<li><em>${novelResult.novelname }</em> <a
								href="Novel_${novelResult.novelid }">${novelResult.novelname }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div id="index_last">
		<div class="list_center w_770 left">
			<div class="update_title">
				<span class="update_icon">更新列表</span> <span class="tabRight"><a
					href="shuku_0_0_0_0_0_1">查看更多&gt;&gt;</a></span>
			</div>
			<div class="update_list">
				<ul>
					<c:forEach items="${indexs.list9 }" var="novelResult"
						varStatus="sta">
						<li><span class="recnums_r">[${novelResult.novelclasses.type_id.type_name }]</span><span
						class="r_spanone"><a href="Novel_${novelResult.novelid }"> ${novelResult.novelname }</a></span><span
						class="r_spantwo"><a
							href="secion_0_${novelResult.novelid}_${novelResult.sectionid.sectionid}">${novelResult.sectionid.sectionname }</a></span>
							<span class="r_spanthree">${novelResult.sectionid.create_date }</span><span
						class="r_spanfour">${novelResult.numcount }</span><span class="r_spanfive">${novelResult.author.authorname }</span></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="list_center w_200 right">
			<div class="update_title">
				<span class="update_icon">最新入库</span>
			</div>
			<div class="bookList">
				<ul>
				<c:forEach items="${indexs.list9 }" var="novelResult"
						varStatus="sta">
						<li><strong>${novelResult.author.authorname }</strong> <a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	
	<div id="footer">
		<div class="friendLink">
			<h3 class="linkMenu">友情链接</h3>
			<div class="linkInfo"></div>
		</div>
		<div class="copyright">
			<p>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。</p>
			<p>Copyright 2017 93书吧 All Rights Reserved</p>
		</div>
	</div>
</body>
</html>