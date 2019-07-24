/**
 * 
 */
package com.thinkgem.javamg.modules.mact.entity.userphq9;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.javamg.common.persistence.DataEntity;

/**
 * userPhq9Entity
 * @author linj
 * @version 2019-07-22
 */
public class MactUserPhq9 extends DataEntity<MactUserPhq9> {
	
	private static final long serialVersionUID = 1L;
	private String phqid;		// phq9id
	private String userid;		// ?&ucirc;?id
	private String scores;		// ??ֵ
	private String userName;
	private String sumScores;
	private String project;
	
	public MactUserPhq9() {
		super();
	}

	public MactUserPhq9(String id){
		super(id);
	}

	@Length(min=0, max=64, message="phq9id长度必须介于 0 和 64 之间")
	public String getPhqid() {
		return phqid;
	}

	public void setPhqid(String phqid) {
		this.phqid = phqid;
	}
	
	@Length(min=0, max=64, message="?&ucirc;?id长度必须介于 0 和 64 之间")
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	@Length(min=0, max=2, message="??ֵ长度必须介于 0 和 2 之间")
	public String getScores() {
		return scores;
	}

	public void setScores(String scores) {
		this.scores = scores;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSumScores() {
		return sumScores;
	}

	public void setSumScores(String sumScores) {
		this.sumScores = sumScores;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}
}