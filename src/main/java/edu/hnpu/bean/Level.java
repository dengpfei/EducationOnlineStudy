package edu.hnpu.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "level")
public class Level implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "level_id" ,unique = true, nullable = false)
	private String levelId;
	@Column(name = "level_name" , nullable = true)
	private String levelName;
}
