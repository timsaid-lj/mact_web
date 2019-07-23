/**
 * 
 */
package com.thinkgem.javamg.modules.mact.service.phq9;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.javamg.common.persistence.Page;
import com.thinkgem.javamg.common.service.CrudService;
import com.thinkgem.javamg.modules.mact.entity.phq9.MactPhq9;
import com.thinkgem.javamg.modules.mact.dao.phq9.MactPhq9Dao;

/**
 * phq9量表Service
 * @author linj
 * @version 2019-07-22
 */
@Service
@Transactional(readOnly = true)
public class MactPhq9Service extends CrudService<MactPhq9Dao, MactPhq9> {

	@Autowired
	private MactPhq9Dao mactPhq9Dao;

	public MactPhq9 get(String id) {
		return super.get(id);
	}
	
	public List<MactPhq9> findList(MactPhq9 mactPhq9) {
		return super.findList(mactPhq9);
	}
	
	public Page<MactPhq9> findPage(Page<MactPhq9> page, MactPhq9 mactPhq9) {
		return super.findPage(page, mactPhq9);
	}
	
	@Transactional(readOnly = false)
	public void save(MactPhq9 mactPhq9) {
		super.save(mactPhq9);
	}
	
	@Transactional(readOnly = false)
	public void delete(MactPhq9 mactPhq9) {
		super.delete(mactPhq9);
	}

    public MactPhq9 findPhq9One(MactPhq9 mactPhq9) {
		return  mactPhq9Dao.findPhq9One(mactPhq9);
    }

}