package edu.hnpu.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "topic")
public class Topic implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name = "system-uuid",strategy="uuid")
	@Column(name = "topic_id" ,unique = true, nullable = false)
	private String topicId;
	
	@Column(name = "topic_name", nullable = true)
	private String topicName;
	
	@Column(name = "topic_sorce", nullable = true)
	private String topicScore;
	
	@Column(name = "topic_level", nullable = true)
	private String topicLevel;
	
	@Column(name = "topic_setter", nullable = true)
	private String topicSetter;
	
	@Column(name = "topic_des", nullable = true)
	private String topicDes;
	
	@Column(name = "topic_answer", nullable = true)
	private String topicAnswer;
	
	@Column(name = "topic_analyse", nullable = true)
	private String topicAnalyse;
	
	public String getTopicId() {
		return topicId;
	}
	public void setTopicId(String topicId) {
		this.topicId = topicId;
	}
	public String getTopicName() {
		return topicName;
	}
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	public String getTopicScore() {
		return topicScore;
	}
	public void setTopicScore(String topicScore) {
		this.topicScore = topicScore;
	}
	public String getTopicLevel() {
		return topicLevel;
	}
	public void setTopicLevel(String topicLevel) {
		this.topicLevel = topicLevel;
	}
	public String getTopicSetter() {
		return topicSetter;
	}
	public void setTopicSetter(String topicSetter) {
		this.topicSetter = topicSetter;
	}
	public String getTopicDes() {
		return topicDes;
	}
	public void setTopicDes(String topicDes) {
		this.topicDes = topicDes;
	}
	public String getTopicAnswer() {
		return topicAnswer;
	}
	public void setTopicAnswer(String topicAnswer) {
		this.topicAnswer = topicAnswer;
	}
	public String getTopicAnalyse() {
		return topicAnalyse;
	}
	public void setTopicAnalyse(String topicAnalyse) {
		this.topicAnalyse = topicAnalyse;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
