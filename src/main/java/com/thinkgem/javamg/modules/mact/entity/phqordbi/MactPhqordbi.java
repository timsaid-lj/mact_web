/**
 * 
 */
package com.thinkgem.javamg.modules.mact.entity.phqordbi;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.javamg.common.persistence.DataEntity;

/**
 * 量表切换Entity
 * @author linj
 * @version 2020-12-17
 */
public class MactPhqordbi extends DataEntity<MactPhqordbi> {
	
	private static final long serialVersionUID = 1L;
	private String phqordbi;		// 1：phq；2：dbi
	
	public MactPhqordbi() {
		super();
	}

	public MactPhqordbi(String id){
		super(id);
	}

	@Length(min=0, max=4, message="1：phq；2：dbi长度必须介于 0 和 4 之间")
	public String getPhqordbi() {
		return phqordbi;
	}

	public void setPhqordbi(String phqordbi) {
		this.phqordbi = phqordbi;
	}
	
}