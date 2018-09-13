package com.chang.Service.impl;

import com.chang.Dao.StudentClassDao;
import com.chang.Entity.StudentClass;
import com.chang.Service.StudentClassService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author cyy
 * @date 2018/9/11 10:34
 */
@Service
@Transactional
public class StudentClassServiceImpl implements StudentClassService {

    @Resource
    private StudentClassDao studentClassDao;

    @Override
    public Integer getCount() {
        return studentClassDao.getCount();
    }

    @Override
    public List<StudentClass> getAllClass() {
        return studentClassDao.getAllClass();
    }


}
