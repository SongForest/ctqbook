<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书友评论</title>
	<style>
			a {
				text-decoration: none;
				color: #262626;
				outline: 0;
			}
			
			.card-wrap {
				position: relative;
				display: inline-block;
			}
			
			.fl {
				float: left;
			}
			
			.head-img {
				display: inline-block;
				overflow: hidden;
				width: 44px;
				height: 44px;
				border-radius: 50%;
				background: #f7f6f2;
			}
			
			a img {
				border: none;
			}
			
			img {
				vertical-align: top;
			}
			
			.post {
				margin: 4px 0 0 60px;
			}
			
			.post .auther {
				font-size: 12px;
				margin-bottom: 11px;
			}
			
			p {
				word-wrap: break-word;
				word-break: break-all;
			}
			
			.b {
				font-weight: 700;
			}
			
			.blue {
				color: #3f5a93;
			}
			
			.post-title {
				font-size: 18px;
				line-height: 20px;
				margin-bottom: 7px;
			}
			
			.post-body {
				line-height: 22px;
				margin-bottom: 15px;
			}
			
			.post-info span {
				font-size: 14px;
				vertical-align: baseline;
			}
			
			.post-info span {
				font-size: 14px;
				vertical-align: baseline;
			}
			
			.post-info a,
			.post-info span {
				display: inline;
			}
			
			element.style {}
			
			i.iconfont {
				vertical-align: -1px;
			}
			
			.pr6 {
				padding-right: 6px;
			}
			
			.iconfont {
				font-size: 16px;
			}
			
			.iconfont {
				font-family: qd_iconfont!important;
				font-size: 24px;
				font-style: normal;
				-webkit-font-smoothing: antialiased;
				-webkit-text-stroke-width: .1px;
				-moz-osx-font-smoothing: grayscale;
			}
			
			.comment-input-box {
				border: 1px solid #3D9D9D;
				margin-bottom: 100px;
				height: 220px;
			}
			
			.send-commont textarea {
				font-size: 14px;
				line-height: 22px;
				display: block;
				height: 94px;
				margin: 12px 16px;
				color: #262626;
				border: none;
			}
			
			.main textarea {
				width: 666px;
			}
			
			textarea {
				font: 14px/1.8 PingFangSC-Regular, HelveticaNeue-Light, 'Helvetica Neue Light', 'Microsoft YaHei', sans-serif;
				resize: none;
				outline: 0;
			}
			
			.send-commont .bar {
				padding-right: 20px;
				color: #a6a6a6;
			}
			
			.cf {
				zoom: 1;
			}
			
			.send-commont input[type=submit] {
				font-size: 14px;
				line-height: 34px;
				display: inline-block;
				width: 80px;
				margin-left: 20px;
				cursor: pointer;
				-webkit-transition: all .3s;
				-o-transition: all .3s;
				transition: all .3s;
				color: #fff;
				background: #3D9D9D;
			}
			
			button,
			input {
				font-family: PingFangSC-Regular, HelveticaNeue-Light, 'Helvetica Neue Light', 'Microsoft YaHei', sans-serif;
				border: none;
				outline: 0;
			}
			
			.lbf-pagination-item a,
			.lbf-pagination-item span {
				font-size: 14px;
				line-height: 24px;
				display: inline-block;
				-webkit-box-sizing: border-box;
				box-sizing: border-box;
				min-width: 24px;
				height: 24px;
				margin-left: 8px;
				padding: 0 5px;
				text-align: center;
				text-decoration: none;
				color: #262626;
			}
			
			.lbf-pagination-item-list li{
				vertical-align: middle;
				float: left;
			}
			
			.lbf-pagination {
				display: inline-block;
				overflow: hidden;
				margin: 0;
				padding: 0;
				vertical-align: top;
			}
			
			li,
			ol,
			ul {
				list-style: none outside none;
				
			}
			
			.lbf-pagination {
				display: inline-block;
				overflow: hidden;
				margin: 0;
				padding: 0;
				vertical-align: top;
			}
			
			.page-container {
				margin: 20px 0;
				text-align: right;
			}
			
			body {
				font-size: 14px;
				line-height: 1;
			}
			
			body {
				font-family: PingFangSC-Regular, HelveticaNeue-Light, 'Helvetica Neue Light', 'Microsoft YaHei', sans-serif;
				text-align: left;
				color: #262626;
				-webkit-font-smoothing: antialiased;
				-moz-font-smoothing: antialiased;
			}
			
			.main-wrap {
				width: 990px;
				margin: 0 auto;
			}
		</style>
</head>
<body data-dynamic="false" style="zoom: 1;">
	<jsp:include page="head.jsp" flush="true" />
	<!--书籍评论-->
	<br />
	    <h1 style="font-size: 25px;padding-left: 300px;color: #3D9D9D;">
	    <a href="${pageContext.request.contextPath}/findReviewByNovelId_2">书友评论</a></h1>
	    <br />
	    <hr style="align-content: center;width: 1000px;"/>
		<div class="main">
			<div class="main-wrap cf">
				<div class="main-body fl">
					<div class="post-wrap cf">
                <div class="card-wrap fl" data-g="1049613599" data-h="0" data-a="0">
                    <a target="_blank" href="//my.qidian.com/user/187110483"><img class="head-img" src="//qidian.qpic.cn/qd_face/349573/5380570/100" alt="神曌灬星空"></a>
                </div>
                <div class="post">
                <c:forEach items="${list }" var="c">
                <div class="post-hover">
                    <p class="auther">名称:
                        <a target="_blank" href="//my.qidian.com/user/187110483" class="blue b">${c.user_id.userName }</a>
                    </p>
                    <h1 class="post-title">
                        <i class="icon icon-topfix mr6"></i><i class="icon icon-jinghua mr6"></i>
                    </h1>
                    <p class="post-body">评论内容:
                        ${c.context }<i class="icon-emoji icon-emoji-4"></i>
                    </p>
                    <div class="post-info dib-wrap cf" data-id="1137376638" data-t="topic">发表时间:
                        <span class="mr20">${c.create_date}</span>
                        
                            <a href="#comment" class="info-tab mr20">
                        
                            <i class="iconfont pr6"></i>
                           <!--  <span>1891条回复</span> -->
                        </a>
                        
                            <a href="javascript:;" class="info-tab like-btn">
                                <i class="iconfont pr6"></i>
                            <!-- <span>26赞</span> -->
                        </a>
                    </div>
                </div>
                </c:forEach>
                </div>
            </div>

					<!-- <ul class="comment-list">

						<li class="comment-wrap cf">
							<div class="card-wrap fl" data-g="800161486223" data-h="0" data-a="1">
								<a target="_blank" href="//my.qidian.com/author/3352131"><img class="head-img" src="//facepic.qidian.com/qd_face/349573/a3352131/100" alt="[本书作者] 亚舍罗"></a>
							</div>
							<div class="post">
								<div class="post-hover">
									<p class="auther">
										<a target="_blank" href="//my.qidian.com/author/3352131" class="blue b">[本书作者] 亚舍罗</a>
									</p>
									<p class="post-body">
										国际惯例我先占个沙发。<i class="icon-emoji icon-emoji-32"></i>
									</p>
									<div class="post-info dib-wrap cf" data-id="1137377492" data-t="reply">
										<span class="mr20">1楼</span>
										<span class="mr20">2017-09-23</span>
										<a href="javascript:;" class="reply-btn info-tab mr20">
											<i class="iconfont pr6"></i>
											<span>2条回复</span>
										</a>

										<a href="javascript:;" class="info-tab like-btn">
											<i class="iconfont pr6"></i>

											<span>2赞</span>
										</a>

										<a href="javascript:;" class="report-btn info-tab fr">
											<i class="iconfont pr6"></i><span>举报</span>
										</a>
									</div>
								</div>

								<ul class="comment-reply bg">
									<li class="reply-wrap cf">
										<div class="card-wrap fl" data-g="852000026312" data-h="1" data-a="0">
											<a href="//my.qidian.com/user/225382239"><img class="head-img" src="//qidian.qpic.cn/qd_face/349573/1/100" alt="贼丁丁嗨"></a>
										</div>
										<div class="reply">
											<p class="auther">
												<a href="//my.qidian.com/user/225382239" class="blue b">贼丁丁嗨</a>
											</p>
											<p class="post-body">无聊来赞</p>
											<p class="post-info dib-wrap cf" data-id="1217554139" data-t="reply"><span class="mr20">刚刚</span>
												<a href="javascript:;" class="reply-btn info-tab"><i class="iconfont pr6"></i><span>回复</span></a>
												<a href="javascript:;" class="report-btn info-tab fr"><i class="iconfont pr6"></i><span>举报</span></a>
											</p>
										</div>
									</li>
									<li class="reply-wrap cf">
										<div class="card-wrap fl" data-g="852000026312" data-h="0" data-a="0">
											<a href="//my.qidian.com/user/225382239"><img class="head-img" src="//qidian.qpic.cn/qd_face/349573/1/100" alt="贼丁丁嗨"></a>
										</div>
										<div class="reply">
											<p class="auther">
												<a href="//my.qidian.com/user/225382239" class="blue b">贼丁丁嗨</a>
											</p>
											<p class="post-body">回复贼丁丁嗨：d</p>
											<p class="post-info dib-wrap cf" data-id="1217554479" data-t="reply"><span class="mr20">刚刚</span>
												<a href="javascript:;" class="reply-btn info-tab"><i class="iconfont pr6"></i><span>回复</span></a>
												<a href="javascript:;" class="report-btn info-tab fr"><i class="iconfont pr6"></i><span>举报</span></a>
											</p>
										</div>
									</li>
								</ul>
							</div>
						</li>
					</ul> -->
					<!-- <ul class="comment-list">
						<li class="comment-wrap cf">
							<div class="card-wrap fl" data-g="800161486223" data-h="0" data-a="1">
								<a target="_blank" href="//my.qidian.com/author/3352131"><img class="head-img" src="//facepic.qidian.com/qd_face/349573/a3352131/100" alt="[本书作者] 亚舍罗"></a>

							</div>
							<div class="post">
								<div class="post-hover">
									<p class="auther">
										<a target="_blank" href="//my.qidian.com/author/3352131" class="blue b">[本书作者] 亚舍罗</a>
									</p>
									<p class="post-body">
										国际惯例我先占个沙发。<i class="icon-emoji icon-emoji-32"></i>
									</p>
									<div class="post-info dib-wrap cf" data-id="1137377492" data-t="reply">
										<span class="mr20">1楼</span>
										<span class="mr20">2017-09-23</span>
										<a href="javascript:;" class="reply-btn info-tab mr20">
											<i class="iconfont pr6"></i>
											<span>2条回复</span>
										</a>

										<a href="javascript:;" class="info-tab like-btn">
											<i class="iconfont pr6"></i>

											<span>2赞</span>
										</a>

										<a href="javascript:;" class="report-btn info-tab fr">
											<i class="iconfont pr6"></i><span>举报</span>
										</a>
									</div>
								</div> 
								<ul class="comment-reply bg">
									<li class="reply-wrap cf">
										<div class="card-wrap fl" data-g="852000026312" data-h="1" data-a="0">
											<a href="//my.qidian.com/user/225382239"><img class="head-img" src="//qidian.qpic.cn/qd_face/349573/1/100" alt="贼丁丁嗨"></a>
										</div>
										<div class="reply">
											<p class="auther">
												<a href="//my.qidian.com/user/225382239" class="blue b">贼丁丁嗨</a>
											</p>
											<p class="post-body">无聊来赞</p>
											<p class="post-info dib-wrap cf" data-id="1217554139" data-t="reply"><span class="mr20">刚刚</span>
												<a href="javascript:;" class="reply-btn info-tab"><i class="iconfont pr6"></i><span>回复</span></a>
												<a href="javascript:;" class="report-btn info-tab fr"><i class="iconfont pr6"></i><span>举报</span></a>
											</p>
										</div>
									</li>
									<li class="reply-wrap cf">
										<div class="card-wrap fl" data-g="852000026312" data-h="0" data-a="0">
											<a href="//my.qidian.com/user/225382239"><img class="head-img" src="//qidian.qpic.cn/qd_face/349573/1/100" alt="贼丁丁嗨"></a>
										</div>
										<div class="reply">
											<p class="auther">
												<a href="//my.qidian.com/user/225382239" class="blue b">贼丁丁嗨</a>
											</p>
											<p class="post-body">回复贼丁丁嗨：d</p>
											<p class="post-info dib-wrap cf" data-id="1217554479" data-t="reply"><span class="mr20">刚刚</span>
												<a href="javascript:;" class="reply-btn info-tab"><i class="iconfont pr6"></i><span>回复</span></a>
												<a href="javascript:;" class="report-btn info-tab fr"><i class="iconfont pr6"></i><span>举报</span></a>
											</p>
										</div>
									</li>
								</ul>
							</div>
						</li>

					</ul>  -->
					  <!-- <div class="page-container" data-pagemax="38" data-page="1">
						<div class="lbf-pagination">
							<ul class="lbf-pagination-item-list">
								<li class="lbf-pagination-item">
									<a href="javascript:;" class="lbf-pagination-prev lbf-pagination-disabled"></a>
								</li>
								<li class="lbf-pagination-item">
									<a data-page="1" href="javascript:;" class="lbf-pagination-page  lbf-pagination-current">1</a>
								</li>
								<li class="lbf-pagination-item">
									<a data-page="2" href="javascript:;" class="lbf-pagination-page  ">2</a>
								</li>
								<li class="lbf-pagination-item">
									<a data-page="3" href="javascript:;" class="lbf-pagination-page  ">3</a>
								</li>
								<li class="lbf-pagination-item">
									<a data-page="4" href="javascript:;" class="lbf-pagination-page  ">4</a>
								</li>
								<li class="lbf-pagination-item">
									<a data-page="5" href="javascript:;" class="lbf-pagination-page  ">5</a>
								</li>
								<li class="lbf-pagination-item"><span class="lbf-pagination-ellipsis">...</span></li>
								<li class="lbf-pagination-item">
									<a data-page="38" href="javascript:;" class="lbf-pagination-page  ">38</a>
								</li>
								<li class="lbf-pagination-item">
									<a href="javascript:;" class="lbf-pagination-next "></a>
								</li>
							</ul>
						</div>
					</div>   -->

					  <!-- <div class="comment-input-box">
						<div class="user-info cf bg"  style="padding-top: 10px;">
							<img src="//qidian.qpic.cn/qd_face/349573/1/100" class="head-img" alt="贼丁丁嗨">
							<b >贼丁丁嗨</b>
						</div>
						<form class="send-commont" action="/ajax/my/BookThread/publishReply?forumId=8281640803926903&amp;topicId=1137376638" method="post" target="_blank">
							<textarea name="content" id="comment" placeholder="发表回复"></textarea>
							<div class="bar cf">
								<span class="textNum">0</span>/350<input value="发表" class="cant" type="submit">
							</div>
						</form>
					</div>   -->

				</div>

			</div>
		</div><%-- 
        <jsp:include page="foot.jsp" flush="true" /> --%>
	</body>
</html>