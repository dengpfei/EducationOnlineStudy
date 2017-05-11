package edu.hnpu.service;

import java.util.List;

import edu.hnpu.bean.Subject;

public interface SubjectService {
	/**
	 * 查询所有的科目
	 * @return
	 */
	public List<Subject> getAllSubject();
}
