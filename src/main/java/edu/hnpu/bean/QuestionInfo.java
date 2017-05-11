package edu.hnpu.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "question_info")
public class QuestionInfo implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "id" ,unique = true, nullable = false)
	private String id;
	
	@Column(name = "question_name", nullable = true)
	private String questionName;
	
	@Column(name = "subject_id", nullable = true)
	private String subjectId;
	
	@Column(name = "upload_time", nullable = true)
	private Date uploadTime;
}
