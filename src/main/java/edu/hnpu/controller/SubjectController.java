package edu.hnpu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.hnpu.bean.Subject;
import edu.hnpu.service.SubjectService;

@Controller
@RequestMapping("/subjectController")
public class SubjectController {

	@Autowired
	private SubjectService subjectServiceImpl;
	@RequestMapping("/selectAllSubject")
	@ResponseBody
	public List<Subject> getAllSubject(){
		List<Subject> subjectList = subjectServiceImpl.getAllSubject();
		System.out.println("查到的集合是："+subjectList);
		return subjectList;
	}
}
