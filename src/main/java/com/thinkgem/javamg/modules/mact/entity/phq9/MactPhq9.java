/**
 * 
 */
package com.thinkgem.javamg.modules.mact.entity.phq9;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.javamg.common.persistence.DataEntity;

/**
 * phq9量表Entity
 * @author linj
 * @version 2019-07-22
 */
public class MactPhq9 extends DataEntity<MactPhq9> {
	
	private static final long serialVersionUID = 1L;
	private String project;		// ??Ŀ
	private String sort;		// ???
	private String none;		// &ucirc;?
	private String days;		// ?м??
	private String usual;		// һ?????
	private String often;		// ???
	
	public MactPhq9() {
		super();
	}

	public MactPhq9(String id){
		super(id);
	}

	@Length(min=0, max=255, message="??Ŀ长度必须介于 0 和 255 之间")
	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}
	
	@Length(min=0, max=4, message="???长度必须介于 0 和 4 之间")
	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}
	
	@Length(min=0, max=2, message="&ucirc;?长度必须介于 0 和 2 之间")
	public String getNone() {
		return none;
	}

	public void setNone(String none) {
		this.none = none;
	}
	
	@Length(min=0, max=2, message="?м??长度必须介于 0 和 2 之间")
	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
	}
	
	@Length(min=0, max=2, message="һ?????长度必须介于 0 和 2 之间")
	public String getUsual() {
		return usual;
	}

	public void setUsual(String usual) {
		this.usual = usual;
	}
	
	@Length(min=0, max=2, message="???长度必须介于 0 和 2 之间")
	public String getOften() {
		return often;
	}

	public void setOften(String often) {
		this.often = often;
	}
	
}