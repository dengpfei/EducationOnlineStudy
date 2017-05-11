<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
	学习记录 - 智学宝
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
        $(".nav").find("li").siblings().removeClass("active").eq(2).addClass("active");
        });
    </script>
</head>
<body>
<!-- 头部 -->
<%@include file="head.jsp" %>
<!-- main -->
<div id="main">
<form method="post" action="http://webzxb.hsxue.com/new/LearnRecord.aspx" id="aspnetForm">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTU0MTA1MDkwNw8WAh4EdGVzdGQWAmYPZBYCAgEPZBYCAgEPZBYGZg8WAh4JaW5uZXJodG1sBbQEPGEgaHJlZj0iTGVhcm5SZWNvcmQuYXNweD9zdWJqZWN0PTEmY29sdW1uPTIiICBjbGFzcz0iYWN0aXZlIiA+6Iux6K+tPC9hPjxhIGhyZWY9IkxlYXJuUmVjb3JkLmFzcHg/c3ViamVjdD0yJmNvbHVtbj0yIiA+6K+t5paHPC9hPjxhIGhyZWY9IkxlYXJuUmVjb3JkLmFzcHg/c3ViamVjdD0zJmNvbHVtbj0yIiA+5pWw5a2mPC9hPjxhIGhyZWY9IkxlYXJuUmVjb3JkLmFzcHg/c3ViamVjdD00JmNvbHVtbj0yIiA+5Y6G5Y+yPC9hPjxhIGhyZWY9IkxlYXJuUmVjb3JkLmFzcHg/c3ViamVjdD01JmNvbHVtbj0yIiA+6YGT5b635LiO5rOV5rK7L+aAneaDs+WTgeW+ty/mgJ3mg7PmlL/msrs8L2E+PGEgaHJlZj0iTGVhcm5SZWNvcmQuYXNweD9zdWJqZWN0PTYmY29sdW1uPTIiID7niannkIY8L2E+PGEgaHJlZj0iTGVhcm5SZWNvcmQuYXNweD9zdWJqZWN0PTcmY29sdW1uPTIiID7ljJblraY8L2E+PGEgaHJlZj0iTGVhcm5SZWNvcmQuYXNweD9zdWJqZWN0PTgmY29sdW1uPTIiID7lnLDnkIY8L2E+PGEgaHJlZj0iTGVhcm5SZWNvcmQuYXNweD9zdWJqZWN0PTkmY29sdW1uPTIiID7nlJ/niak8L2E+ZAIBDzwrABECAA8WBB4LXyFEYXRhQm91bmRnHgtfIUl0ZW1Db3VudGZkARAWABYAFgBkAgIPDxYCHgtSZWNvcmRjb3VudGZkZBgBBSNjdGwwMCRDb250ZW50UGxhY2VIb2xkZXIxJEdyaWRWaWV3MQ88KwAMAQhmZBgyFeDoV0O7GVvGVyBvua0XLbVrEuyuN9bd30iMKh6P">
</div>


    <div class="maincon">
        <div class="choosebox">
            <div class="choosetit grey">
                <strong class="fl">科&nbsp;&nbsp;&nbsp;&nbsp;目:</strong>
                <div id="ctl00_ContentPlaceHolder1_SubjectBox" class="subject fl"><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=1&amp;column=2" class="active">英语</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=2&amp;column=2">语文</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=3&amp;column=2">数学</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=4&amp;column=2">历史</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=5&amp;column=2">道德与法治/思想品德/思想政治</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=6&amp;column=2">物理</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=7&amp;column=2">化学</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=8&amp;column=2">地理</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?subject=9&amp;column=2">生物</a></div>
                <div class="clear">
                </div>
            </div>
            <div class="choosetit nogrey">
                <strong class="fl">栏&nbsp;&nbsp;&nbsp;&nbsp;目:</strong>
                <div class="subject fr">
                    <a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?column=2&amp;subject=1" id="c2" class="active">
                        基础测控</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?column=3&amp;subject=1" id="c3">能力提升</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?column=5&amp;subject=1" id="c5">综合训练</a><a href="http://webzxb.hsxue.com/new/LearnRecord.aspx?column=7&amp;subject=1" id="c7">对症下药</a>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="choosebox" style="min-height:400px;">
            <div>
	<table cellspacing="0" id="ctl00_ContentPlaceHolder1_GridView1" style="border-collapse:collapse;">
		<tbody><tr>
			<td colspan="7">
                <table>
				<tbody><tr class="tabletit">
					<td class="w110">序号</td>
					<td class="w470">标题</td>
					<td class="w140">科目</td>
					<td class="w140">栏目</td>
					<td class="w140">总分</td>
                    <td class="w140">得分</td>
					<td class="w198">测试日期</td>
				</tr>
                <tr><td colspan="7">暂无记录</td></tr>
                </tbody></table>
                </td>
		</tr>
	</tbody></table>
</div>
        </div>
        <div class="page fr">


        </div>
        		<div class="clear"></div>
	</div>

</form>
    </div>
    <div id="bottom">
	<p><img src="${pageContext.request.contextPath}/static/img/logo02.png"></p>
	<p>电话：010-82790166 咨询服务电话：400-687-3337</p>
	<p>Copyright © 2017 北京凌鸿智业教育科技有限公司 京ICP备10026535号-2</p>
</div>
</body></html>