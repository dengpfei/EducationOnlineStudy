<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "./";
	String subjectId = request.getParameter("subject");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min.js"></script>
<script data-require-id="echarts/chart/bar" src="${pageContext.request.contextPath}/static/js/bar.js" async=""></script>
<script data-require-id="echarts/chart/line" src="${pageContext.request.contextPath}/static/js/line.js" async=""></script>
<!--<base target="_self">-->
<base href="." target="_self">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/common.css">

<script type="text/javascript">
	$(function() {
		$('.personal').mouseover(function() {
			$('.personal ul').show();
		});
		$('.personal').mouseout(function() {
			$('.personal ul').hide();
		});
	});
</script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/index.css">
<script src="${pageContext.request.contextPath}/static/js/echarts.js" type="text/javascript"></script>
<script type="text/javascript">
	function setUrl() {
		$column = $("#tabTit .active").attr("value");
		window.location = "StudyMain.aspx?column=" + $column + "&subject=1";
	}

	function setUrl1() {
		$column = $("#tabTit2 .active").attr("value");
		window.location = "StudyMain.aspx?column=" + $column + "&subject=1";
	}
</script>
</head>
<body>
	<!-- 头部 -->
	<%@include file="head.jsp"%>
	<!-- main -->
	<div id="main">
		<form method="post" action="index.jsp"
			id="aspnetForm">
			<div class="aspNetHidden">
				<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
					value="wEPDwUKLTIyODE1MDg4NGRkZXEj1eAc5IJe1zTeTtCEuyfPa8hQb5fCsNvUKIvwgvc=">
</div>

<script type="text/javascript">
	var url = "${pageContext.request.contextPath}/subjectController/selectAllSubject";
	$.ajax({
		type:"post",
		url:url,
		contentType:"application/json",
		success:function(msg){
			var subject ="";
			for(var i=0;i<msg.length;i++){
				subject+="<li><a title='"+msg[i].subjectName+"' id='d"+(i+1)+"' href='index.jsp?subject="+msg[i].subjectId+"'>"+msg[i].subjectName+"</a><span></span></li>";
			}
			$(".subjectList").append(subject);
		}
	});
</script>
<script type="text/javascript">
	var url = "${pageContext.request.contextPath}/questionController/selectAllquestion?subjectid="+<%=subjectId%>+"";
	$.ajax({
		type:"post",
		url:url,
		contentType:"application/json",
		success:function(msg){
			var qustion ="";
			for(var i=0;i<msg.length;i++){
				qustion+="<li><a";
				qustion+= "href='onlineStudy.jsp'";
				qustion+= "target='blank' title='"+msg[i].questionName+"'>'"+msg[i].questionName+"'</a>";
				qustion+= "<p class='fr'>";
				qustion+= "<span>'"+msg[i].uploadTime+"'</span>";
				qustion+= "</p></li>";
			}
			$("#question").append(qustion);
		}
	})
</script>
			<!-- 圆形科目导航 -->
			<div class="main">
				<div class="nav_subject">
					<ul id="subj1" class="subjectList">
					</ul>
				</div>
				<!-- 同步学习 -->
				<div class="newscon">
					<div class="tabcon">
						<div class="tabL fl">
							<p>同步学习</p>
							<img src="${pageContext.request.contextPath}/static/img/tbxx.png">
						</div>
						<div class="tabR fl">
							<div class="tabtit" id="tabTit">
								<span class="active" value="1">要点梳理</span><a href=''>更多</a>
							</div>
							<div class="tabcon01" id="tabCon">
								<div style="display: block;">
									<ul class="fl" id="question">
										<li><a
											href="onlineStudy.jsp"
											target="_blank" title="第二轮专题复习：书面表达(2)">第二轮专题复习：书面表达(2)</a>
											<p class="fr">
												<span>2017-04-15</span>
											</p></li>
										
									</ul>
								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<!-- 同步测控 -->
				<div class="newscon">
					<div class="tabcon">
						<div class="tabL fl">
							<p>同步测控</p>
							<img src="${pageContext.request.contextPath}/static/img/tbck.png">
						</div>
						<div class="tabR fl">
							<div class="tabtit" id="tabTit2">
								<span class="active" value="2">基础测控</span> <span value="3">能力提升</span>
								<span value="5">综合训练</span> <span value="7">对症下药</span> <a
									href="javascript:setUrl1()" class="more fr">更多</a>
							</div>
							<div class="tabcon01" id="tabCon2">
								<div style="display: block;">
									<ul class="fl">
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1157738"
											target="_blank" title="第二轮专题复习：阅读理解(4)">第二轮专题复习：阅读理解(4)</a>
											<p class="fr">
												<span>2017-04-08</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1155032"
											target="_blank" title="第二轮专题复习：阅读理解(3)">第二轮专题复习：阅读理解(3)</a>
											<p class="fr">
												<span>2017-04-05</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1150951"
											target="_blank" title="第二轮专题复习：阅读理解(2)">第二轮专题复习：阅读理解(2)</a>
											<p class="fr">
												<span>2017-04-01</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1148162"
											target="_blank" title="第二轮专题复习：阅读理解(1)">第二轮专题复习：阅读理解(1)</a>
											<p class="fr">
												<span>2017-03-29</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1142934"
											target="_blank" title="第二轮专题复习：完形填空(4)">第二轮专题复习：完形填空(4)</a>
											<p class="fr">
												<span>2017-03-25</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1140273"
											target="_blank" title="第二轮专题复习：完形填空(3)">第二轮专题复习：完形填空(3)</a>
											<p class="fr">
												<span>2017-03-22</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1136793"
											target="_blank" title="第二轮专题复习：完形填空(2)">第二轮专题复习：完形填空(2)</a>
											<p class="fr">
												<span>2017-03-18</span>
											</p></li>
									</ul>
									<ul class="fl">
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1134198"
											target="_blank" title="第二轮专题复习：完形填空(1)">第二轮专题复习：完形填空(1)</a>
											<p class="fr">
												<span>2017-03-15</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1130830"
											target="_blank" title="第二轮专题复习：单项选择(4)">第二轮专题复习：单项选择(4)</a>
											<p class="fr">
												<span>2017-03-11</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1128192"
											target="_blank" title="第二轮专题复习：单项选择(3)">第二轮专题复习：单项选择(3)</a>
											<p class="fr">
												<span>2017-03-08</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1124681"
											target="_blank" title="第二轮专题复习：单项选择(2)">第二轮专题复习：单项选择(2)</a>
											<p class="fr">
												<span>2017-03-04</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1121982"
											target="_blank" title="第二轮专题复习：单项选择(1)">第二轮专题复习：单项选择(1)</a>
											<p class="fr">
												<span>2017-03-01</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1118470"
											target="_blank" title="第一轮基础复习：日常交际用语归纳及运用(2)">第一轮基础复习：日常交际用语归纳及运用(2)</a>
											<p class="fr">
												<span>2017-02-26</span>
											</p></li>
										<li><a
											href="http://webzxb.hsxue.com/new/OnlineExamination.aspx?mer=1115798"
											target="_blank" title="第一轮基础复习：日常交际用语归纳及运用(1)">第一轮基础复习：日常交际用语归纳及运用(1)</a>
											<p class="fr">
												<span>2017-02-23</span>
											</p></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<!-- 白色背景区域 -->
			<div id="main02">
				<div class="main02">
					<!-- 学习记录 -->
					<div class="part01 xxjl fl">
						<p>
							学习记录<a
								href="http://webzxb.hsxue.com/new/LearnRecord.aspx?column=2&amp;subject=1"
								class="more fr">更多</a>
						</p>
						<div id="history_div">
							<h2 style="margin: 180px auto auto 100px;">暂时没有记录，赶快去学习吧！</h2>
						</div>
					</div>
					<!-- 成绩折线图 -->
					<div class="part01 cjzx fl">
						<p>
							成绩折线图<a
								href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=1"
								class="more fr">更多</a>
						</p>
						<div class="part_con">
							<div id="cjzx"
								style="height: 100%; border: 1px solid rgb(204, 204, 204); -webkit-tap-highlight-color: transparent; user-select: none;"
								_echarts_instance_="1492506476116">
								<div
									style="position: relative; overflow: hidden; width: 588px; height: 390px;">
									<div data-zr-dom-id="bg" class="zr-element"
										style="position: absolute; left: 0px; top: 0px; width: 588px; height: 390px; user-select: none;"></div>
									<canvas width="588" height="390" data-zr-dom-id="0"
										class="zr-element"
										style="position: absolute; left: 0px; top: 0px; width: 588px; height: 390px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas>
									<canvas width="588" height="390"
										data-zr-dom-id="_zrender_hover_" class="zr-element"
										style="position: absolute; left: 0px; top: 0px; width: 588px; height: 390px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas>
								</div>
							</div>
						</div>
					</div>
					<!--知识点分析 -->
					<div class="part01 zsd fl">
						<p>
							知识点分析<a
								href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=1"
								class="more fr">更多</a>
						</p>
						<div id="Knowledage_div">
							<h2 style="margin: 180px auto auto 100px;">暂时没有记录，赶快去学习吧！</h2>
						</div>
					</div>
					<!-- 能力分析 -->
					<div class="part01 nlfx fl">
						<p>
							能力分析<a href="http://webzxb.hsxue.com/new/Ablity.aspx?subject=1"
								class="more fr">更多</a>
						</p>
						<div class="part_con">
							<div id="nlfx"
								style="height: 100%; border: 1px solid rgb(204, 204, 204); -webkit-tap-highlight-color: transparent; user-select: none;"
								_echarts_instance_="1492506476117">
								<div
									style="position: relative; overflow: hidden; width: 588px; height: 390px;">
									<div data-zr-dom-id="bg" class="zr-element"
										style="position: absolute; left: 0px; top: 0px; width: 588px; height: 390px; user-select: none;"></div>
									<canvas width="588" height="390" data-zr-dom-id="0"
										class="zr-element"
										style="position: absolute; left: 0px; top: 0px; width: 588px; height: 390px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas>
									<canvas width="588" height="390"
										data-zr-dom-id="_zrender_hover_" class="zr-element"
										style="position: absolute; left: 0px; top: 0px; width: 588px; height: 390px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas>
								</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>

		</form>
	</div>
	<div id="bottom">
		<p>
			<img src="${pageContext.request.contextPath}/static/img/logo02.png">
		</p>
		<p>电话：010-82790166 咨询服务电话：400-687-3337</p>
		<p>Copyright © 2017 北京凌鸿智业教育科技有限公司 京ICP备10026535号-2</p>
	</div>
</body>
</html>