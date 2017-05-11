package edu.hnpu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.hnpu.bean.Question;
import edu.hnpu.service.QuestionService;

@Controller
@RequestMapping("/questionController")
public class QuestionController {
	@Autowired
	private QuestionService questionServiceImpl;
	@RequestMapping("/selectAllquestion")
	@ResponseBody
	public List<Question> getAllQuestions(HttpServletRequest request){
		String subjectId = request.getParameter("subjectid"); 
		return questionServiceImpl.queryAllQuestionName(subjectId);
	}
}
