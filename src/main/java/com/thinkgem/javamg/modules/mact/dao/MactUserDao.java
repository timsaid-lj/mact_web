/**
 * 
 */
package com.thinkgem.javamg.modules.mact.dao;

import com.thinkgem.javamg.common.persistence.CrudDao;
import com.thinkgem.javamg.common.persistence.annotation.MyBatisDao;
import com.thinkgem.javamg.modules.mact.entity.MactUser;

/**
 * mact用户DAO接口
 * @author lj
 * @version 2019-05-12
 */
@MyBatisDao
public interface MactUserDao extends CrudDao<MactUser> {
    public void updateFile(MactUser mactUser);
    public int insert(MactUser mactUser);
}