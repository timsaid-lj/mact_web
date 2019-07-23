/**
 * 
 */
package com.thinkgem.javamg.modules.mact.dao.userphq9;

import com.thinkgem.javamg.common.persistence.CrudDao;
import com.thinkgem.javamg.common.persistence.annotation.MyBatisDao;
import com.thinkgem.javamg.modules.mact.entity.userphq9.MactUserPhq9;

/**
 * userPhq9DAO接口
 * @author linj
 * @version 2019-07-22
 */
@MyBatisDao
public interface MactUserPhq9Dao extends CrudDao<MactUserPhq9> {

    void savePhq9();
}