/**
 * 
 */
package com.thinkgem.javamg.modules.mact.entity.bdi;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.javamg.common.persistence.DataEntity;

/**
 * bdi量表Entity
 * @author linj
 * @version 2020-12-17
 */
public class MactBdi extends DataEntity<MactBdi> {
	
	private static final long serialVersionUID = 1L;
	private String bdigroup;		// 分组
	private String project;		// 项目
	private String bdivalue;		// 分值
	private String sort;		// 排序
	
	public MactBdi() {
		super();
	}

	public MactBdi(String id){
		super(id);
	}

	@Length(min=0, max=4, message="分组长度必须介于 0 和 4 之间")
	public String getBdigroup() {
		return bdigroup;
	}

	public void setBdigroup(String bdigroup) {
		this.bdigroup = bdigroup;
	}
	
	@Length(min=0, max=255, message="项目长度必须介于 0 和 255 之间")
	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}
	
	@Length(min=0, max=4, message="分值长度必须介于 0 和 4 之间")
	public String getBdivalue() {
		return bdivalue;
	}

	public void setBdivalue(String bdivalue) {
		this.bdivalue = bdivalue;
	}
	
	@Length(min=0, max=4, message="排序长度必须介于 0 和 4 之间")
	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}
	
}