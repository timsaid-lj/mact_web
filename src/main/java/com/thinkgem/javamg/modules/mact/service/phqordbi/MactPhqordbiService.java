/**
 * 
 */
package com.thinkgem.javamg.modules.mact.service.phqordbi;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.javamg.common.persistence.Page;
import com.thinkgem.javamg.common.service.CrudService;
import com.thinkgem.javamg.modules.mact.entity.phqordbi.MactPhqordbi;
import com.thinkgem.javamg.modules.mact.dao.phqordbi.MactPhqordbiDao;

/**
 * 量表切换Service
 * @author linj
 * @version 2020-12-17
 */
@Service
@Transactional(readOnly = true)
public class MactPhqordbiService extends CrudService<MactPhqordbiDao, MactPhqordbi> {

	public MactPhqordbi get(String id) {
		return super.get(id);
	}
	
	public List<MactPhqordbi> findList(MactPhqordbi mactPhqordbi) {
		return super.findList(mactPhqordbi);
	}
	
	public Page<MactPhqordbi> findPage(Page<MactPhqordbi> page, MactPhqordbi mactPhqordbi) {
		return super.findPage(page, mactPhqordbi);
	}
	
	@Transactional(readOnly = false)
	public void save(MactPhqordbi mactPhqordbi) {
		super.save(mactPhqordbi);
	}
	
	@Transactional(readOnly = false)
	public void delete(MactPhqordbi mactPhqordbi) {
		super.delete(mactPhqordbi);
	}
	
}