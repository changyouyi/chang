package com.chang.Service.impl;

import com.chang.Dao.StudentsDao;
import com.chang.Entity.Students;
import com.chang.Service.StudentsService;
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
public class StudentsServiceImpl implements StudentsService {

    @Resource
    private StudentsDao studentsDao;

    @Override
    public Integer getCount() {
        return studentsDao.getCount();
    }

    @Override
    public List<Students> getAllStudent() {
        return studentsDao.getAllStudent();
    }

    @Override
    public void insertStudent(Students students) {
        studentsDao.insertStudent(students);
    }
}
