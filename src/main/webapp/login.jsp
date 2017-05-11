<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/clicki.web.css?V=20120501" media="screen" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/clicki.loginandreg.css?V=20120501" media="screen" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/clicki.webkitanimation.css?V=20120501" media="screen" />
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min.js"></script>
<title>教育资源登录界面</title>
<style type="text/css">
	.info{
		font-size: 16px;
		color: red;
	}
</style>
</head>
<body>
<script type="text/javascript">
var isLogin=false;

function checkLogin(){
	var userName=$("#LoginForm_email").val();
	var pwd=$("#LoginForm_password").val();
	if(userName==""){
		alert("用户名不能为空！");
		return false;
	}
	if(pwd==""){
		alert("密码不能为空！");
		return false;
	}
	$.ajax({
		   type: "post",
		   async:false,
		   url: "${pageContext.request.contextPath}/loginController/login",
		   data: "userName="+userName+"&password="+pwd,
		   success: function(msg){
		   		if(msg=="error"){
		   			$(".info").html("帐号或密码错误");
		   		}else{
		   			$(".info").html("");
		   			isLogin=true;
		   		}
		   },error: function(){
			   alert("请求失败")
		   }
		});
	if(isLogin){
		return true;
	}else{
		return false;
	}
}

</script>
<div class="theCenterBox" style="">
  <div class="theLoginBox">
    <div class="loginTxt">登录</div>
    <div class="theLoginArea" id="loginBox">
      <form id="leftForm" action="index.jsp?subject=1" method="post">
        <p style="position: relative;">
          <label for="LoginForm_email">用户名：</label>
          <input placeholder="请输入您的用户名" name="userName" id="LoginForm_email" type="text" maxlength="255" />
          <span>请输入您的用户名</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_password">密码：</label>
          <input placeholder="请输入您的密码" name="password" id="LoginForm_password" type="password" maxlength="16" />
          <span>请输入您的密码</span> </p>
        <div class="loginSubmitBnt fixPadding">
        <span class = "info" ></span>
        
          <div>
            <input id="ytautoLogin" type="hidden" value="0" name="LoginForm[rememberMe]" />
            <input id="autoLogin" class="theRememberMe" name="LoginForm[rememberMe]" value="1" checked="checked" type="checkbox" />
            <label class="theRememberMeLabel" for="autoLogin">记住用户名和密码</label>
            <em class="forgotPasswordEm"><a href="pwdGet.jsp" title="忘记密码">忘记密码?</a>&nbsp;&nbsp;&nbsp;<a href="register.jsp" title="马上注册">马上注册</a></em>
            <div class="login_submit">
              <input name="userSubmit" class="theSubmitButton" value="登录" type="submit" onclick="return checkLogin();" />
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>
