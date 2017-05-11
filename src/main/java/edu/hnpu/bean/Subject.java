package edu.hnpu.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 科目表
 * @author dengpf
 *
 */
@Entity
@Table(name = "subject")
public class Subject implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "subject_id" ,unique = true, nullable = false)
	private String subjectId;
	@Column(name = "subject_name" , nullable = true)
	private String subjectName;
	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	@Override
	public String toString() {
		return "Subject [subjectId=" + subjectId + ", subjectName="
				+ subjectName + "]";
	}
	
}
