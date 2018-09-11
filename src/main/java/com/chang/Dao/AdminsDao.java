package com.chang.Dao;

import com.chang.Entity.Admins;
import org.springframework.stereotype.Repository;

/**
 * @author cyy
 * @date 2018/9/11 10:31
 */
@Repository
public interface AdminsDao {
    Admins AdminLogin(Admins admins);
}
