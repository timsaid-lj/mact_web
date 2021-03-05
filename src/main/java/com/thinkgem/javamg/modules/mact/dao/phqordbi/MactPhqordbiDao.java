/**
 * 
 */
package com.thinkgem.javamg.modules.mact.dao.phqordbi;

import com.thinkgem.javamg.common.persistence.CrudDao;
import com.thinkgem.javamg.common.persistence.annotation.MyBatisDao;
import com.thinkgem.javamg.modules.mact.entity.phqordbi.MactPhqordbi;

/**
 * 量表切换DAO接口
 * @author linj
 * @version 2020-12-17
 */
@MyBatisDao
public interface MactPhqordbiDao extends CrudDao<MactPhqordbi> {

    String findPhqOrDbi();
}