<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/93shuUser.css" rel="stylesheet">
<script type="text/javascript" src="js/93shu.js"></script>
<title>我的书架</title>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="body">
		<div class="main mainT">
			<div id="menu">
				<ul>
					<li><a href="${pageContext.request.contextPath}/selectlevel">个人中心 &gt;&gt;</a></li>
					<li class="current"><a href="${pageContext.request.contextPath}/findByNovelId_1">我的书架 &gt;&gt;</a></li>
					<li><a href="write.jsp">消息中心 &gt;&gt;</a></li>
					<li><a href="updateHead.jsp">个人设置 &gt;&gt;</a></li>
					
				</ul>
			</div>
			<div class="content">
				<div class="info">
					<div class="tabMenu">
						<ul>
							<li class="current"><a href="shelf.jsp">书架</a></li>
							<li><a href="shelfSet.jsp">设置</a></li>
							<li class="em">本组 <font class="c_blue">1</font> 本书
							</li>
						</ul>
					</div>
					<div class="rec_rboxone">
						<div class="rec_rulbox">
							<li class="one">作品名称</li>
							<li class="two">最新章节</li>
							<li class="three">已看到</li>
							<li class="four">作者</li>
							<li class="five">更新时间</li>
							<li class="six">状态</li>
						</div>
						<form method="post" action="delshelf" name="myform">
							<div class="rec_rullist">
							 <c:forEach items="${shelves }" var="shelv">
								<ul>
									<li class="one"><input name="id" name="interest" type="checkbox" id="id"
										value="${shelv.shelvesid}">&nbsp;&nbsp; <a href="Novel_${shelv.novel.novelid }" target="_blank"
										title="${shelv.novel.novelname }">${shelv.novel.novelname }</a> </li>
									<li class="two"><a href="secion_0_${shelv.novel.novelid}_${shelv.novel.sectionid.sectionid}" target="_blank">${shelv.novel.sectionid.sectionname}</a></li>
									<li class="three"><a href="secion_0_${shelv.novel.novelid}_${shelv.history.section.sectionid}" target="_blank">${shelv.history.section.sectionname }</a></li>
									<li class="four"><a class="yellow" href="findByNovelIda_${shelv.novel.author.authorid}"
										target="_blank">${shelv.novel.author.authorname }</a></li>
									<li class="five">${shelv.novel.last_date }</li>
									<li class="six">${shelv.novel.novelstatus }</li>
								</ul> 
								</c:forEach>
							</div>
							<div class="clearfix"></div>
							<div class="select_all" id="uboxstyle">
							
								<input type="checkbox" id="chkAll" name="chkAll"
									onclick="CheckAll(this.form)"> <label class="all">全选</label>
								<input type="submit" name="submit" class="deleteBtn" value="删 除">
								
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<jsp:include page="foot.jsp" flush="true" />
	<script type="text/javascript">
		function $(id) {
			return document.getElementById(id);
		}
		function move() {
			if (confirm('确实要移动么？') == true) {
				var form = document.forms['myform'];
				form.action = '#';
			} else {
				return false;
			}
		}
		var fen = parseInt('20');
		if (fen < 15) {
			if (!getCookie('MbgFen')) {
				var Then = new Date();
				Then.setTime(Then.getTime() + 20 * 60 * 60 * 1000); //cookie过期时间
				document.cookie = 'MbgFen=' + Then.getTime() + ';expires='
						+ Then.toGMTString() + ';path=/;';
				alert('您的积分小于15，为不影响正常使用，建议去积分金币专区看看！')
			}
		}
	</script>
</body>
</html>