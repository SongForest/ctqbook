<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小说排行榜_小说排行榜2015前20名-朝天曲书吧</title>
<meta name="keywords" content="小说排行榜,小说排行榜2014前20名">
<meta name="description" content="93书吧提供小说排行榜,小说排行榜2015前20名。">
<link rel="stylesheet" type="text/css" href="css/93shu.css">
<script src="js/push.js"></script>
<script src="js/hm.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/1.js"></script>
<script src="js/logger.js"></script>
<link href="css/bgstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="main">
		<div class="index_toplist mright mbottom">
			<div class="toptab" id="top_all_1">
				<span>玄幻奇幻排行</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_1">
				<div class="topbooks">
					<ul>
						<c:forEach varStatus="sta1" items="${ranklist.list1 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta1.count }.</span>
								<a href="#" target="_blank">${lis.novelname}</a></li>
						</c:forEach>

					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta2" items="${ranklist.list2 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta2.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta3" items="${ranklist.list3 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta3.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="index_toplist mright mbottom">
			<div class="toptab" id="top_all_2">
				<span>武侠仙侠排行</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_2">
				<div class="topbooks">
					<ul>
						<c:forEach varStatus="sta4" items="${ranklist.list4 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta4.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta5" items="${ranklist.list5 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta5.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>

					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta6" items="${ranklist.list6 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta6.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>

					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="index_toplist mright mbottom">
			<div class="toptab" id="top_all_3">
				<span>都市青春排行</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_3">
				<div class="topbooks">
					<ul>
						<c:forEach varStatus="sta7" items="${ranklist.list7 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta7.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>

					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta8" items="${ranklist.list8 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta8.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta9" items="${ranklist.list9 }" var="lis">
							<li><span class="hits"></span><span class="num">${sta9.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>

					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="index_toplist mbottom">
			<div class="toptab" id="top_all_4">
				<span>历史军事排行</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_4">
				<div class="topbooks">
					<ul>
						<c:forEach varStatus="sta10" items="${ranklist.list10 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta10.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta11" items="${ranklist.list11 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta11.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>

					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta12" items="${ranklist.list12 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta12.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>

					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="index_toplist mright mbottom">
			<div class="toptab" id="top_all_5">
				<span>游戏竞技排行</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_5">
				<div class="topbooks">
					<ul>
						<c:forEach varStatus="sta13" items="${ranklist.list13 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta13.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>

					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta14" items="${ranklist.list14 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta14.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>

					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta15" items="${ranklist.list15 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta15.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="index_toplist mright mbottom">
			<div class="toptab" id="top_all_6">
				<span>科幻灵异排行</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_6">
				<div class="topbooks">
					<ul>
						<c:forEach varStatus="sta16" items="${ranklist.list16 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta16.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta17" items="${ranklist.list17 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta17.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta18" items="${ranklist.list18 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta18.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="index_toplist mright mbottom">
			<div class="toptab" id="top_all_7">
				<span>同人女生排行</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_7">
				<div class="topbooks">
					<ul>
						<c:forEach varStatus="sta19" items="${ranklist.list19 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta19.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta20" items="${ranklist.list20 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta20.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta21" items="${ranklist.list21 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta21.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="index_toplist mbottom">
			<div class="toptab" id="top_all_8">
				<span>强推排行榜</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_8">
				<div class="topbooks">
					<ul>
						<c:forEach varStatus="sta32" items="${ranklist.list32 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta32.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta33" items="${ranklist.list33 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta33.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
				<div class="topbooks hidden">
					<ul>
						<c:forEach varStatus="sta34" items="${ranklist.list34 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta34.count }.</span>
								<a href="#" target="_blank">${lis.novelname }</a></li>
						</c:forEach>


					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="toplist mright">
			<div class="toptab" id="top_all_9">
				<span>点击排行榜</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_9">
				<div class="topbook">
					<ul>
						<c:forEach varStatus="sta22" items="${ranklist.list22 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta22.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>

					</ul>
				</div>
				<div class="topbook hidden">
					<ul>
						<c:forEach varStatus="sta23" items="${ranklist.list23 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta23.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="topbook hidden">
					<ul>
					<c:forEach varStatus="sta24" items="${ranklist.list24 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta24.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="toplist mright">
			<div class="toptab" id="top_all_10">
				<span>推荐排行榜</span> <span class="tabRight"> <span class="cur">周</span>
					<span>月</span> <span>总</span>
				</span>
			</div>
			<div id="tabData_10">
				<div class="topbook">
					<ul>
						<c:forEach varStatus="sta25" items="${ranklist.list25 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta25.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="topbook hidden">
					<ul>
						<c:forEach varStatus="sta26" items="${ranklist.list26 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta26.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="topbook hidden">
					<ul>
					<c:forEach varStatus="sta27" items="${ranklist.list27 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta27.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="toplist">
			<div class="toptab">
				<span>收藏排行榜</span>
			</div>
			<div class="topbook">
				<ul>
					<c:forEach varStatus="sta28" items="${ranklist.list28 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta28.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="toplist mright">
			<div class="toptab">
				<span>推荐小说排行</span>
			</div>
			<div class="topbook">
				<ul>
					<c:forEach varStatus="sta29" items="${ranklist.list29 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta29.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="toplist mright">
			<div class="toptab">
				<span>精品小说排行</span>
			</div>
			<div class="topbook">
				<ul>
					<c:forEach varStatus="sta30" items="${ranklist.list30 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta30.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="toplist">
			<div class="toptab">
				<span>完本小说排行</span>
			</div>
			<div class="topbook">
				<ul>
					<c:forEach varStatus="sta31" items="${ranklist.list31 }"
							var="lis">
							<li><span class="hits"></span><span class="num">${sta31.count }.</span><span
								class="genre">[${lis.novelclasses.classesname }]</span> <a
								href="Novel_${lis.novelid}" target="_blank">${lis.novelname }</a>
							</li>
						</c:forEach>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			function topbananer() {
				var autoPlay, timer = 2000, boxNum = $("#autoid a").length, doPlay;
				doPlay = function() {
					var index = parseInt(boxNum * Math.random());
					$("#autoid a").eq(index).addClass("cur").siblings()
							.removeClass("cur");
				};
				autoPlay = setInterval(doPlay, timer);
				$("#autoid a").hover(function() {
					clearInterval(autoPlay);
					$(this).addClass("cur").siblings().removeClass("cur");
				}, function() {
					autoPlay = setInterval(doPlay, timer);
				});
			}
			topbananer();
			var zu = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)
			for (var index = 0; index < zu.length; index++) {
				clicktabs("#top_all_" + index + " .tabRight span", "#tabData_"
						+ index + ">div", "cur");
			}
		});

		function clicktabs(tit_id, box_id, cur) {
			var g_tags = $(tit_id), g_conts = $(box_id), g_current = cur;
			g_tags.mouseover(function() {
				var g_index = g_tags.index(this);
				$(this).addClass(g_current).siblings().removeClass(g_current);
				g_conts.eq(g_index).show().siblings().hide();
			})
		}
	</script>
	<div id="footer">
		<div class="copyright">
			<p>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。</p>
			<p>Copyright 2017 93书吧 All Rights Reserved</p>
		</div>
	</div>

</body>

</html>