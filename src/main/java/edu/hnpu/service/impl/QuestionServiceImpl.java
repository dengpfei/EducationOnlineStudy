package edu.hnpu.service.impl;

import java.util.List;

import edu.hnpu.bean.Question;
import edu.hnpu.dao.QuestionDao;
import edu.hnpu.service.QuestionService;

public class QuestionServiceImpl implements QuestionService {

	private QuestionDao questionDaoImpl;
	@Override
	public List<Question> queryAllQuestionName(String subjectId) {
		return questionDaoImpl.queryAllQuestionName(subjectId);
	}
	public QuestionDao getQuestionDaoImpl() {
		return questionDaoImpl;
	}
	public void setQuestionDaoImpl(QuestionDao questionDaoImpl) {
		this.questionDaoImpl = questionDaoImpl;
	}

	
}
