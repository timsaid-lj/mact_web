/**
 * 
 */
package com.thinkgem.javamg.modules.mact.dao.bdi;

import com.thinkgem.javamg.common.persistence.CrudDao;
import com.thinkgem.javamg.common.persistence.annotation.MyBatisDao;
import com.thinkgem.javamg.modules.mact.entity.bdi.MactBdi;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * bdi量表DAO接口
 * @author linj
 * @version 2020-12-17
 */
@MyBatisDao
public interface MactBdiDao extends CrudDao<MactBdi> {

    List<Map<String,Object>> findBdiOne(MactBdi mactBdi);
}