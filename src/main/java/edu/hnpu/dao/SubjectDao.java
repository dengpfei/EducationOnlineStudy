package edu.hnpu.dao;

import java.util.List;

import edu.hnpu.bean.Subject;

public interface SubjectDao {

	/**
	 * 查询所有的科目
	 * @return
	 */
	public List<Subject> getAllSubject();
}
