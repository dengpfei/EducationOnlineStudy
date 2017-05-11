<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://webzxb.hsxue.com/new/Knowledage.aspx -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
	知识点分析 - 智学宝
</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/common.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.personal').mouseover(function () {
                $('.personal ul').show();
            });
            $('.personal').mouseout(function () {
                $('.personal ul').hide();
            });
        });
    </script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="${pageContext.request.contextPath}/static/css/study.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        $(function () { 
        var columnid=2;
        $("#c"+columnid+"").addClass("active");
        $(".nav").find("li").siblings().removeClass("active").eq(3).addClass("active");
        });
    </script>
</head>
<body>
<%@include file="head.jsp" %>
<!-- main -->
<div id="main">
<form method="post" action="http://webzxb.hsxue.com/new/Knowledage.aspx" id="aspnetForm">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTg4MjA4Njc1NA8WAh4EdGVzdGQWAmYPZBYCAgEPZBYCAgEPZBYGAgEPFgIeCWlubmVyaHRtbAXaAzxhIGhyZWY9Iktub3dsZWRhZ2UuYXNweD9zdWJqZWN0PTEiICBjbGFzcz0iYWN0aXZlIiA+6Iux6K+tPC9hPjxhIGhyZWY9Iktub3dsZWRhZ2UuYXNweD9zdWJqZWN0PTIiID7or63mloc8L2E+PGEgaHJlZj0iS25vd2xlZGFnZS5hc3B4P3N1YmplY3Q9MyIgPuaVsOWtpjwvYT48YSBocmVmPSJLbm93bGVkYWdlLmFzcHg/c3ViamVjdD00IiA+5Y6G5Y+yPC9hPjxhIGhyZWY9Iktub3dsZWRhZ2UuYXNweD9zdWJqZWN0PTUiID7pgZPlvrfkuI7ms5Xmsrsv5oCd5oOz5ZOB5b63L+aAneaDs+aUv+ayuzwvYT48YSBocmVmPSJLbm93bGVkYWdlLmFzcHg/c3ViamVjdD02IiA+54mp55CGPC9hPjxhIGhyZWY9Iktub3dsZWRhZ2UuYXNweD9zdWJqZWN0PTciID7ljJblraY8L2E+PGEgaHJlZj0iS25vd2xlZGFnZS5hc3B4P3N1YmplY3Q9OCIgPuWcsOeQhjwvYT48YSBocmVmPSJLbm93bGVkYWdlLmFzcHg/c3ViamVjdD05IiA+55Sf54mpPC9hPmQCAw88KwARAgAPFgQeC18hRGF0YUJvdW5kZx4LXyFJdGVtQ291bnRmZAEQFgAWABYAZAIFDw8WAh4LUmVjb3JkY291bnRmZGQYAQUjY3RsMDAkQ29udGVudFBsYWNlSG9sZGVyMSRHcmlkVmlldzEPPCsADAEIZmRXP6f0MDjGCbYJ5qV1kKfOboLf7f2XUeU3FOHmR9rkNA==">
</div>


    <div id="mainlist">
        <div class="maincon">
            <div class="choosebox">
                <div class="choosetit grey">
                    <strong class="fl">科&nbsp;&nbsp;&nbsp;&nbsp;目:</strong>
                    <div id="ctl00_ContentPlaceHolder1_SubjectBox" class="subject fl"><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=1" class="active">英语</a><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=2">语文</a><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=3">数学</a><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=4">历史</a><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=5">道德与法治/思想品德/思想政治</a><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=6">物理</a><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=7">化学</a><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=8">地理</a><a href="http://webzxb.hsxue.com/new/Knowledage.aspx?subject=9">生物</a></div>
                    <div class="clear">
                    </div>
                </div>
            </div>
            <div class="choosebox" style="min-height:400px;">
                <div>
	<table cellspacing="0" id="ctl00_ContentPlaceHolder1_GridView1" style="border-collapse:collapse;">
		<tbody><tr>
			<td colspan="5">
                <table>
				<tbody><tr class="tabletit">
					<td class="w140">序号</td>
					<td class="w200">科目</td>
                    <td class="w470">标题</td>
					<td class="w200">正确率</td>
					<td class="w198">日期</td>
				</tr>
                <tr><td colspan="5">暂无记录</td></tr>
                </tbody></table>
                </td>
		</tr>
	</tbody></table>
</div>
            </div>
            <div class="page fr">
                
<!-- AspNetPager 7.3.2  Copyright:2003-2010 Webdiyer (www.webdiyer.com) -->
<!--记录总数只有一页，AspNetPager已自动隐藏，若需在只有一页数据时显示AspNetPager，请将AlwaysShow属性值设为true！-->
<!-- AspNetPager 7.3.2  Copyright:2003-2010 Webdiyer (www.webdiyer.com) -->


            </div>
            <div class="clear">
            </div>
        </div>
    </div>

</form>
    </div>
    <div id="bottom">
	<p><img src="${pageContext.request.contextPath}/static/img/logo02.png"></p>
	<p>电话：010-82790166 咨询服务电话：400-687-3337</p>
	<p>Copyright © 2017 北京凌鸿智业教育科技有限公司 京ICP备10026535号-2</p>
</div>

</body></html>