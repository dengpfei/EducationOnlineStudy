package edu.hnpu.dao.impl;

import java.util.List;



import org.apache.commons.lang3.StringUtils;

import edu.hnpu.bean.Question;
import edu.hnpu.core.BaseDao;
import edu.hnpu.core.HQLExecute;
import edu.hnpu.dao.QuestionDao;

public class QuestionDaoimpl extends BaseDao implements QuestionDao {

	@Override
	public List<Question> queryAllQuestionName(String subjectId) {
		HQLExecute queryService = new HQLExecute(sessionFactory);
		String hql = null;
		if (StringUtils.isEmpty(subjectId)) {
			hql = "from Question where parent_id ='1' order by upload_time desc";
		}else{
			hql = "from Question where parent_id =? order by upload_time desc";
		}
		List<Question> questionList= queryService.find(hql, subjectId);
		return questionList;
	}

}
