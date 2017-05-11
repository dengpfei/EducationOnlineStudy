package edu.hnpu.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "question")
public class Question implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "question_id" ,unique = true, nullable = false)
	private String questionId;
	
	
	@Column(name = "question_name" , nullable = true)
	private String questionName;
	
	@Column(name = "question_level",nullable = true)
	private String quqestionLevel;
	
	@Column(name = "question_analyse",nullable = true)
	private String questionAnalyse;
	
	@Column(name = "upload_time",nullable = true)
	private String uploadTime;
	
	@Column(name = "question_solve",nullable = true)
	private String questionSolve;
	
	@Column(name = "parent_id",nullable = true)
	private String parentId;

	public String getQuestionId() {
		return questionId;
	}

	public void setQuestionId(String questionId) {
		this.questionId = questionId;
	}

	public String getQuestionName() {
		return questionName;
	}

	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}

	public String getQuqestionLevel() {
		return quqestionLevel;
	}

	public void setQuqestionLevel(String quqestionLevel) {
		this.quqestionLevel = quqestionLevel;
	}

	public String getQuestionAnalyse() {
		return questionAnalyse;
	}

	public void setQuestionAnalyse(String questionAnalyse) {
		this.questionAnalyse = questionAnalyse;
	}

	public String getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(String uploadTime) {
		this.uploadTime = uploadTime;
	}

	public String getQuestionSolve() {
		return questionSolve;
	}

	public void setQuestionSolve(String questionSolve) {
		this.questionSolve = questionSolve;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	} 
	
	
}
