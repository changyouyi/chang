package com.chang.Service;

import com.chang.Entity.Students;

import java.util.List;

/**
 * @author cyy
 * @date 2018/9/11 10:32
 */
public interface StudentsService {
    Integer getCount();

    List<Students> getAllStudent();
}
