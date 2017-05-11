package edu.hnpu.dao.impl;

import java.util.List;

import edu.hnpu.bean.Subject;
import edu.hnpu.core.BaseDao;
import edu.hnpu.core.HQLExecute;
import edu.hnpu.dao.SubjectDao;

public class SubjectDaoImpl extends BaseDao implements SubjectDao{

	@Override
	public List<Subject> getAllSubject() {
		HQLExecute queryService = new HQLExecute(sessionFactory);
		String hql = "from Subject";
		List<Subject> list = queryService.find(hql);
		return list;
	}

}
