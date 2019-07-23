/**
 * 
 */
package com.thinkgem.javamg.modules.mact.service.userphq9;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.javamg.common.persistence.Page;
import com.thinkgem.javamg.common.service.CrudService;
import com.thinkgem.javamg.modules.mact.entity.userphq9.MactUserPhq9;
import com.thinkgem.javamg.modules.mact.dao.userphq9.MactUserPhq9Dao;

/**
 * userPhq9Service
 * @author linj
 * @version 2019-07-22
 */
@Service
@Transactional(readOnly = true)
public class MactUserPhq9Service extends CrudService<MactUserPhq9Dao, MactUserPhq9> {
	@Autowired
	private MactUserPhq9Dao mactUserPhq9Dao;

	public MactUserPhq9 get(String id) {
		return super.get(id);
	}
	
	public List<MactUserPhq9> findList(MactUserPhq9 mactUserPhq9) {
		return super.findList(mactUserPhq9);
	}
	
	public Page<MactUserPhq9> findPage(Page<MactUserPhq9> page, MactUserPhq9 mactUserPhq9) {
		return super.findPage(page, mactUserPhq9);
	}
	
	@Transactional(readOnly = false)
	public void save(MactUserPhq9 mactUserPhq9) {
		super.save(mactUserPhq9);
	}
	
	@Transactional(readOnly = false)
	public void delete(MactUserPhq9 mactUserPhq9) {
		super.delete(mactUserPhq9);
	}

    public void savePhq9(MactUserPhq9 mactUserPhq9) {
		mactUserPhq9Dao.savePhq9();
    }
}