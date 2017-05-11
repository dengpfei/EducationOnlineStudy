<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 头部 -->
<div id="header">
	<div class="header">
		<div class="logo"><a href="index.jsp"><img src="${pageContext.request.contextPath}/static/img/logo.png"></a></div>
		<div class="nav">
			<ul>
				<li class="fl"><a href="index.jsp">首页</a></li>
				<li class="fl"><a href="study.jsp">学习</a></li>
				<li class="fl"><a href="learnRecord.jsp">学习记录</a></li>
				<li class="fl active"><a href="knowledgeAnalyze.jsp">知识点分析</a></li>
			</ul>
		</div>
		<div class="personal fr">
			<div class="personcenter">
				<img src="${pageContext.request.contextPath}/static/img/male.jpg" class="photo">
				<span>个人中心</span>
				<span class="icon_arr"></span>
				<ul style="display:none;">
					<li><a href="http://webzxb.hsxue.com/new/OnLine.aspx">上线记录</a></li>
					<li><a href="http://webzxb.hsxue.com/new/web_V5/userinfo/index.aspx?userid=dengpf1" target="_blank">个人信息</a></li>
					<li><a href="http://webzxb.hsxue.com/new/SignOut.aspx">退出</a></li>
				</ul>
				<span>我的收藏</span>
			</div>
		</div>
	</div>
</div>
</body>
</html>
