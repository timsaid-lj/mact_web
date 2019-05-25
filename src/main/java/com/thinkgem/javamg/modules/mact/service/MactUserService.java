/**
 * 
 */
package com.thinkgem.javamg.modules.mact.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.javamg.common.persistence.Page;
import com.thinkgem.javamg.common.service.CrudService;
import com.thinkgem.javamg.modules.mact.entity.MactUser;
import com.thinkgem.javamg.modules.mact.dao.MactUserDao;

/**
 * mact用户Service
 * @author lj
 * @version 2019-05-12
 */
@Service
@Transactional(readOnly = true)
public class MactUserService extends CrudService<MactUserDao, MactUser> {
	@Autowired
	public MactUserDao mactUserDao;

	public MactUser get(String id) {
		return super.get(id);
	}
	
	public List<MactUser> findList(MactUser mactUser) {
		return super.findList(mactUser);
	}
	
	public Page<MactUser> findPage(Page<MactUser> page, MactUser mactUser) {
		return super.findPage(page, mactUser);
	}
	
	@Transactional(readOnly = false)
	public void save(MactUser mactUser) {
		super.save(mactUser);
	}
	
	@Transactional(readOnly = false)
	public void delete(MactUser mactUser) {
		super.delete(mactUser);
	}

	@Transactional(readOnly = false)
	public void updateFile(MactUser mactUser) {
		mactUser.preUpdate();
		mactUserDao.updateFile(mactUser);
	}

	@Transactional(readOnly = false)
	public void insert(MactUser mactUser) {
		mactUser.preUpdate();
		mactUserDao.insert(mactUser);
	}
	
}