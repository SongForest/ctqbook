<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0028)http://www.93shu.com/search/ -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>根据"${book_name }"搜索结果_朝天曲书吧</title>
<meta name="keywords" content="唐家,关于唐家,唐家无弹窗" />
<meta name="description" content="93书吧为用户提供唐家相关作品,提供唐家无弹窗的全文阅读" />
<link rel="stylesheet" type="text/css" href="css/93shu.css" />
<script src="js/push.js"></script>
<script src="js/hm.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/1.js"></script>
<script src="js/logger.js"></script>
<link href="css/bdsstyle.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<iframe frameborder="0" style="display: none;"></iframe>
	<jsp:include page="head.jsp" flush="true" />
	<div id="main">
		<div class="list_center w_770 left">
			<div class="update_title">
				<span class="update_icon">
				</span>
			</div>
			<div id="sitembox">
				<c:forEach items="${findNovelResult }" var="novelResult">
					<dl>
						<dt>
							<a href="Novel_${novelResult.novelid }"><img class="lazyload" src="${novelResult.novelimg}"
								alt="${novelResult.novelname }" height="155" width="120"></a>
						</dt>
						<dd>
							<h3>
								<a href="Novel_${novelResult.novelid }">${novelResult.novelname }</a>
							</h3>
						</dd>
						<dd class="book_other">
							作者：<span><font color="#F30">${novelResult.author.authorname }</font></span>
							状态：
							<c:if test="${novelResult.novelstatus == 0 }">
								<span>连载中</span>
							</c:if>
							<c:if test="${novelResult.novelstatus == 1 }">
								<span>已完结</span>
							</c:if>
							小类：<span>${novelResult.novelclasses.classesname }</span> 
							字数：<span>${novelResult.sectionid.numbercount }</span>
						</dd>
						<dd class="book_des">${novelResult.novelsynopsis }</dd>
						<dd class="book_other">
							最新章节： <a
								href="secion_0_${novelResult.novelid}_${novelResult.sectionid.sectionid}">${novelResult.sectionid.sectionname }</a>
							更新时间：<span>${novelResult.create_date }</span>
						</dd>
					</dl>
				</c:forEach>
				<div class="pages clearfix">
					
				</div>
			</div>
		</div>
		<div class="list_center w_200 right">
			<div class="update_title">
				<span class="update_icon">热门排行</span>
			</div>
			<div class="bookList">
				<ul>
				<c:forEach items="${novellist }" var="list">
				<li><strong>${list.author.authorname }</strong> 
				<a href="Novel_${list.novelid }">${list.novelname }</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div id="award_win" class="hidden">
		<h3>提交留言信息</h3>
		<div class="wrapper">
			<form id="award_t" name="award_t"
				onsubmit="award(this,1);return false;">
				<ul>
					<input type="hidden" name="mold" id="mold" value="3"
						checked="checked" />
					<li>书名：<input name="book_a" type="text" id="book_a"
						maxlength="40" value="" size="30" /> <font color="#ff6600">*</font>
						小说名称
					</li>
					<li>作者：<input name="book_b" type="text" id="book_b"
						maxlength="40" value="" size="30" /> <font color="#ff6600">*</font>
						小说作者
					</li>
					<li>首发：<input name="book_c" type="text" id="book_c"
						maxlength="40" value="" size="30" /> <font color="#ff6600">*</font>
						首发网站
					</li>
				</ul>
				<div class="input_el">
					<button type="submit" class="btn_small" value="submit">提 交</button>
					<a href="javascript:closeWin(&#39;award_win&#39;);"
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