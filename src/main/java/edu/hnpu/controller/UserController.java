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
@RequestMapping("/userController")
public class UserController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	PrintWriter out = null;
	@RequestMapping("/toAddUser")
	@ResponseBody
	public String addUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String hobby = request.getParameter("hobby");
		String address = request.getParameter("address");
		String age = request.getParameter("age");
		UserInfo user = new UserInfo();
		user.setUserName(userName);
		user.setUserPwd(password);
		user.setMobile(phone);
		user.setEmail(email);
		user.setAddress(address);
		user.setHobby(hobby);
		if ("1".equals(age)) {
			user.setAgeGroup("少年");
		}else if("2".equals(age)){
			user.setAgeGroup("青年");
		}else{
			user.setAgeGroup("中年");
		}
		
		try {
			userServiceImpl.addUser(user);
			return "true";
		} catch (Exception e) {
			System.out.println("添加用户时出了异常");
			e.printStackTrace();
			return "false";
		}
	}
	
	@RequestMapping("/checkIsExistUserName")
	@ResponseBody
	public String getAllUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String userName = request.getParameter("userName");
		UserInfo userInfo = userServiceImpl.queryUserInfoByUserName(userName);
		if (userInfo !=null) {
			//提示给他
			return "false";
		}
		return "true";
	}
}