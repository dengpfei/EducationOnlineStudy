package edu.hnpu.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class MyFilter implements Filter {
	
	public static String ip;
	public void destroy() {
	}
	
	
	public void doFilter(ServletRequest request, ServletResponse response,
		FilterChain filter) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		HttpServletRequest httpRequest=(HttpServletRequest)request;
		
		String uri = httpRequest.getRequestURI();//��ȡ�����ַ ��Ե�ַ
		
		 ip = httpRequest.getLocalAddr();
		
		
		String uriArray[]=uri.split("/");
		String uriStr=uriArray[uriArray.length-1];
		
		httpRequest.getSession().setAttribute("ip", ip);
		
		 if("my.jsp".equals(uriStr)||"order.jsp".equals(uriStr)||"orderlist.jsp".equals(uriStr)){
			// UserInfo userInfo=(UserInfo)httpRequest.getSession().getAttribute("userInfo");
			
		 }else{
			//����
			filter.doFilter(request, response);
		 }
	}
	
	
	
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
	}

}
