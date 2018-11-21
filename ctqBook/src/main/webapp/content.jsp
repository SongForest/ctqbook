<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style id="znBdcsStyle" type="text/css">
.bdcs-container .bdcs-main, .bdcs-container .bdcs-main * {
	box-sizing: content-box;
	margin: 0;
	padding: 0;
	float: none;
	clear: none;
	overflow: hidden;
	white-space: nowrap;
	word-wrap: normal;
	border: 0;
	background: 0 0;
	width: auto;
	height: auto;
	max-width: none;
	min-width: none;
	max-height: none;
	min-height: none;
	border-radius: 0;
	box-shadow: none;
	transition: none;
	text-align: left
}

.bdcs-container .bdcs-clearfix:after {
	content: '';
	display: block;
	clear: both;
	height: 0
}

.bdcs-container .bdcs-clearfix {
	zoom: 1
}

.bdcs-container .bdcs-main {
	overflow: visible
}

.bdcs-container .bdcs-search {
	display: block;
	overflow: visible;
	position: relative;
	border-style: solid
}

.bdcs-container .bdcs-search-form-input-wrap {
	display: inline-block
}

.bdcs-container .bdcs-search-form-input {
	border-width: 1px;
	border-style: solid;
	display: inline-block;
	vertical-align: top;
	text-indent: 5px;
	background-color: #fff;
	float: left
}

.bdcs-container .bdcs-search-form-input:focus {
	border-width: 1px;
	border-style: solid;
	outline: 0
}

.bdcs-container .bdcs-search-form-submit-wrap {
	display: inline-block
}

.bdcs-container .bdcs-search-form-submit {
	display: inline-block;
	cursor: pointer;
	border-width: 1px;
	border-style: solid;
	vertical-align: top;
	text-align: center;
	width: 50px; //
	_overflow: hidden
}

.bdcs-container .bdcs-search-form-submit-magnifier {
	width: 45px;
	padding: 0;
	text-indent: -999em;
	overflow: hidden;
	background:
		url(http://znsv.baidu.com/static/customer-search/component/search/magnifier-icon.png)
		no-repeat center center;
	_background:
		url(http://znsv.baidu.com/static/customer-search/component/search/magnifier-icon_ie6.png)
		no-repeat center center
}

div#default-searchbox .default-channel-meun {
	position: relative;
	width: 75px;
	display: inline-block;
	vertical-align: middle;
	cursor: pointer;
	background: #fff;
	float: left;
	overflow: visible
}

div#default-searchbox .default-channel-current {
	border: 1px solid;
	position: relative;
	width: 100%;
	border-right: 0
}

div#default-searchbox .default-channel-current span {
	margin-left: 8px
}

div#default-searchbox .default-channel-current i {
	overflow: hidden;
	width: 0;
	height: 0;
	border-width: 6px 6px 0;
	border-color: #9E9E9E #fff;
	border-style: solid;
	display: block;
	position: absolute;
	right: 10px;
	top: 11px
}

div.cse-default-channel-container {
	display: block;
	position: absolute;
	z-index: 30061000000
}

div.cse-default-channel-container .default-channel-list {
	display: none;
	width: 99%;
	list-style: none;
	background: #fff;
	border: 1px solid #DDD;
	border-top: 0;
	margin: 0;
	padding: 0
}

div.cse-default-channel-container .default-channel-list li {
	background: 0 0;
	line-height: 24px;
	list-style: none;
	display: block;
	padding-left: 7px;
	cursor: pointer
}

div.cse-default-channel-container .default-channel-list li:hover {
	background: #DDD
}

.bdcs-container .bdcs-search-form-input-wrap {
	
}

.bdcs-container .bdcs-search-form-input-notspan {
	margin-left: 0px;
	font-family: Arial, Microsoft YaHei, sans-serif;
	color: #000000;
	font-size: 14px;
}

.bdcs-container .bdcs-search-form-input .icon-nofocus {
	left:;
	right:;
	top:;
	height:;
	width:;
}

.bdcs-container .bdcs-search {
	width: 342px;
	height: 26px;
	overflow: visible;
	border-color: #ffffff;
	border-radius: 0px;
	border-width: 0px;
	box-shadow: none;
	background-color: none;
}

.bdcs-container .bdcs-search-form-input {
	border-color: #00AAAA;
	margin-right: 10px;
	width: 278px;
	height: 24px;
	line-height: 24px;
	font-family: Arial, Microsoft YaHei, sans-serif;
	color: #000000;
	font-size: 14px;
	border-radius: 0px;
	background-color: #FFFFFF;
}

.bdcs-container .bdcs-search-form-input:focus {
	border-color: #f79646;
}

.bdcs-container .bdcs-search-form-submit-wrap {
	
}

.bdcs-container .bdcs-search-form-submit {
	border-color: #00AAAA;
	height: 24px;
	width: 50px;
	background-color: #00AAAA;
	color: #FFFFFF;
	font-family: Arial, Microsoft YaHei, sans-serif;
	font-size: 14px;
	border-radius: 0px;
}

.bdcs-container .bdcs-search-form-submit {
	*height: 26px;
	*margin-top: 1px;
}

.bdcs-container .bdcs-search-form-submit {
	line-height: 24px;
}

#bdcs-rec {
	display: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="js/1.js" type="text/javascript"></script>
<title>内容</title>

<link type="text/css" href="css/content.css" rel="stylesheet">
</head>
<body onload="initRead();" style="background-color: rgb(242, 242, 242);">
	<jsp:include page="head.jsp" />
	<div id="container">
		<div class="comments_r">
			<div class="h3">

				<ul class="links">
					<li><a href="javascript:addFavorite(${sectionInfoList.volume_class.novel.novelid});">加入书架</a> |</li>
					<li><a
						href="javascript:showTip(&#39;&#39;,&#39;award_add&#39;,&#39;&#39;);">投推荐票</a>
						|</li>
					<li><a href="chapter_${sectionInfoList.volume_class.novel.novelid}">作品目录</a> |</li>
					<li><a href="Novel_${sectionInfoList.volume_class.novel.novelid}">返回封面</a></li>
				</ul>
			</div>
		</div>

		<div id="center">
			<div class="title">

				<h1>${sectionInfoList.sectionname }</h1>
				作者:<span><a href="findByNovelIda_${sectionInfoList.volume_class.novel.author.authorid}" rel="nofollow">${sectionInfoList.volume_class.novel.author.authorname }</a></span>字数:<span>${sectionInfoList.numbercount }</span>更新时间:<span>${sectionInfoList.create_date }</span>
			</div>
			<div class="jump jumptop">
				<a
					href="secion_2_${sectionInfoList.volume_class.novel.novelid}_${sectionInfoList.sectionid}">上一章</a>
				<a
					href="javascript:showTip(&#39;&#39;,&#39;award_add&#39;,&#39;&#39;);">投推荐票</a>
				<a href="chapter_${sectionInfoList.volume_class.novel.novelid}">回目录</a> <a href="javascript:addMark();">标记书签</a> <a
					href="secion_1_${sectionInfoList.volume_class.novel.novelid}_${sectionInfoList.sectionid}">下一章</a>
			</div>
			<div class="content_ad top_b">
				<span id="notice"><script>
					notice();
				</script></span> <span
					id="ad_250_1"><script>
						ad_250_1();
					</script></span> <span
					id="ad_250_2"><script>
						ad_250_2();
					</script></span> <span
					id="ad_250_3"><script>
						ad_250_3();
					</script></span>
			</div>
			<div id="content" style="font-size: 20px;">
				${sectionInfoList.sectioncontext}
				<%-- <c:out value="${sectionInfoList.sectioncontext}" escapeXml="false"/> --%>
			</div>

			<div class="content_ad" id="ad_950">
				<script>
					ad_950_1();
				</script>
			</div>
		</div>

		<div class="jump">
			<a
				href="secion_2_${sectionInfoList.volume_class.novel.novelid}_${sectionInfoList.sectionid}">上一章</a>
			<a
				href="javascript:showTip(&#39;&#39;,&#39;award_add&#39;,&#39;&#39;);">投推荐票</a>
			<a href="chapter_${sectionInfoList.volume_class.novel.novelid}">回目录</a>  <a
				href="secion_1_${sectionInfoList.volume_class.novel.novelid}_${sectionInfoList.sectionid}">下一章</a>
		</div>
		<div class="clearfix"></div>
		<div class="content_ad">
			<script>
				ad_950_2();
				bdcs();
				layout();
			</script>
			<div id="bdcs"></div>
		</div>

		<div id="award_add" class="dialog hidden">
			<h3>提交推荐票</h3>
			<div class="wrapper">
				<form id="award_a" name="award_a"
					onsubmit="addGroom(this,${sectionInfoList.volume_class.novel.novelid});return false;">
					<ul>
						<li><input type="radio" name="num" value="1">1张<input
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
		<jsp:include page="foot.jsp" flush="true" />
	</div>

</body>
</html>