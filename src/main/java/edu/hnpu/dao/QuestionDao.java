package edu.hnpu.dao;

import java.util.List;

import edu.hnpu.bean.Question;

public interface QuestionDao {

	/**
	 * 根据科目id查询所有的题型名字
	 * @param subjectId
	 * @return
	 */
	public List<Question> queryAllQuestionName(String subjectId);
}
