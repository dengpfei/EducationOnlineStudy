package edu.hnpu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.hnpu.bean.UserInfo;
import edu.hnpu.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/loginController")
public class LoginController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	PrintWriter out = null;
	@RequestMapping("/login")
	@ResponseBody
	public String addUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String userName = request.getParameter("userName");
		String password =  request.getParameter("password");
		System.out.println("开始登陆了,用户名是："+userName+",密码是；"+password);
		UserInfo user = new UserInfo();
		user.setUserName(userName);
		user.setUserPwd(password);
		UserInfo userInfo = userServiceImpl.queryUserByUserCodeAndPassWord(user);
		if (userInfo==null) {
				return "error";
		}
		return "true";
	}
}
