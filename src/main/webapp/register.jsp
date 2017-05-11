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
<title>注册</title>
<style type="text/css">
	.age{
		size: 20px;
	}
</style>
</head>
<body>

<script type="text/javascript">
function check(){
	var userName = $("#userName").val();
	$.ajax({
		   type: "post",
		   async:false,
		   url: "${pageContext.request.contextPath}/userController/checkIsExistUserName",
		   data: "userName="+userName,
		   success: function(msg){
		   		if(msg=="false"){
		   			$("#view").html("该用户名已经被注册了！请换一个!");
		   		}else{
		   			$("#view").html("用户名");
		   		}
		   },error: function(){
			   alert("请求失败")
		   }
		});
}
</script>
<div class="theCenterBox" style="">
 <style>
.theCenterBox{width:670px; margin-top:200px;}
</style>
  <div class="theLoginBox" >
    <div class="loginTxt">注册账号</div>
    <form id="leftForm" action="register.jsp" method="post">
      <div class="theLoginArea" id="loginBox">
        <p style="position: relative;">
          <label for="LoginForm_email" id = "view">用户名：</label>
          <input placeholder="请输入您的用户名" name="userName" id="userName" type="text" maxlength="255" onblur="check()"/>
          <span>请输入您的用户名</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_password">密码：</label>
          <input placeholder="请输入您的密码" name="pwd" id="pwd" type="password" maxlength="16" />
          <span>请输入您的密码</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">电话号码：</label>
          <input placeholder="请输入您的电话号码" name="phone" id="phone" type="text" value="" />
          <span>请输入您的电话号码</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">电子邮箱：</label>
          <input placeholder="请输入您的电子邮箱" name="email" id="email" type="text" value="" />
          <span>请输入您的电子邮箱</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">爱好：</label>
          <input placeholder="请输入您的爱好" name="hobby" id="hobby" type="text" value="" />
          <span>请输入您的爱好</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">住址：</label>
          <input placeholder="请输入您的住址" name="address" id="address" type="text" value="" />
          <span>请输入您的住址</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">年龄层：</label>
          <select name="age" id="age">
          	<option value="1">少年</option>
          	<option value="2">青年</option>
          	<option value="3">中年</option>
          </select>
          <div id="info"></div>
        <div class="loginSubmitBnt">
          <div class="reg_submit">
            <input name="userSubmit" class="theSubmitButton" value="确定" type="submit" onclick="return regiter();" />
          </div>
        </div>
      </div>
    </form>
  </div>
  <script type="text/javascript">
	function regiter(){
	  	var userName=$("#userName").val();
		var pwd=$("#pwd").val();
		var phone=$("#phone").val();
		var email=$("#email").val();
		var hobby=$("#hobby").val();
		var address=$("#address").val();
		var age=$("#age").val();
		alert(age);
		if(userName==""){
			alert("用户名不能为空！");
			return false;
		}
		if(pwd==""){
			alert("密码不能为空！");
			return false;
		}
		if(phone==""){
			alert("电话号码不能为空！");
			return false;
		}
		if(!(/^1[34578]\d{9}$/.test(phone))){
	    	alert("电话号码的格式不正确");
	   		return false;
	    }
		if(!( /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(email))){
			alert("邮箱的格式不正确！");
			return false;
		}
	$.ajax({
		   type: "post",
		   async:false,
		   url: "${pageContext.request.contextPath}/userController/toAddUser",
		   data: "userName="+userName+"&password="+pwd+"&phone="+phone+"&email="+email
		   +"&hobby="+hobby+"&address="+address+"&age="+age,
		   success: function(msg){
		   		if(msg=="true"){
			    alert("恭喜你！注册成功了！去登录吧！");
			    window.location.href="index.jsp";//你可以跟换里面的网址，以便成功后跳转
		   		}else{
		   			alert("注册失败了！");
		   			$("#info").html("注册失败了");
		   		}
		   },error: function(){
			   alert("请求失败")
		   }
		});
	}
  </script>

</div>
</body>
</html>
