/**
 * 
 */
package com.thinkgem.javamg.modules.mact.service.bdi;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.javamg.common.persistence.Page;
import com.thinkgem.javamg.common.service.CrudService;
import com.thinkgem.javamg.modules.mact.entity.bdi.MactBdi;
import com.thinkgem.javamg.modules.mact.dao.bdi.MactBdiDao;

/**
 * bdi量表Service
 * @author linj
 * @version 2020-12-17
 */
@Service
@Transactional(readOnly = true)
public class MactBdiService extends CrudService<MactBdiDao, MactBdi> {

	@Autowired
	private MactBdiDao mactBdiDao;

	public MactBdi get(String id) {
		return super.get(id);
	}
	
	public List<MactBdi> findList(MactBdi mactBdi) {
		return super.findList(mactBdi);
	}
	
	public Page<MactBdi> findPage(Page<MactBdi> page, MactBdi mactBdi) {
		return super.findPage(page, mactBdi);
	}
	
	@Transactional(readOnly = false)
	public void save(MactBdi mactBdi) {
		super.save(mactBdi);
	}
	
	@Transactional(readOnly = false)
	public void delete(MactBdi mactBdi) {
		super.delete(mactBdi);
	}


	public List<Map<String,Object>> findBdiOne(MactBdi mactBdi) {
		return  mactBdiDao.findBdiOne(mactBdi);

	}
	
}