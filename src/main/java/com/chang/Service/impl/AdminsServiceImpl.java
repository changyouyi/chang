package com.chang.Service.impl;

import com.chang.Dao.AdminsDao;
import com.chang.Entity.Admins;
import com.chang.Service.AdminsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author cyy
 * @date 2018/9/11 10:33
 */
@Service
@Transactional
public class AdminsServiceImpl implements AdminsService {

    @Autowired
    private AdminsDao adminsDao;

    @Override
    public Admins AdminLogin(Admins admins) {
        return adminsDao.AdminLogin(admins);
    }
}
