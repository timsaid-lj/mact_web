/**
 * 
 */
package com.thinkgem.javamg.modules.mact.dao.phq9;

import com.thinkgem.javamg.common.persistence.CrudDao;
import com.thinkgem.javamg.common.persistence.annotation.MyBatisDao;
import com.thinkgem.javamg.modules.mact.entity.phq9.MactPhq9;

/**
 * phq9量表DAO接口
 * @author linj
 * @version 2019-07-22
 */
@MyBatisDao
public interface MactPhq9Dao extends CrudDao<MactPhq9> {

    MactPhq9 findPhq9One(MactPhq9 mactPhq9);

}