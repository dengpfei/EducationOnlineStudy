package edu.hnpu.service.impl;

import java.util.List;

import edu.hnpu.bean.Subject;
import edu.hnpu.dao.SubjectDao;
import edu.hnpu.service.SubjectService;

public class SubjectServiceImpl implements SubjectService {

	private SubjectDao subjectDaoImpl;
	@Override
	public List<Subject> getAllSubject() {
		return subjectDaoImpl.getAllSubject();
	}
	public void setSubjectDaoImpl(SubjectDao subjectDaoImpl) {
		this.subjectDaoImpl = subjectDaoImpl;
	}

}
