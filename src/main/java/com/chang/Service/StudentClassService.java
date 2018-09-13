package com.chang.Service;

import com.chang.Entity.StudentClass;

import java.util.List;

/**
 * @author cyy
 * @date 2018/9/11 10:32
 */
public interface StudentClassService {
    Integer getCount();
    List<StudentClass> getAllClass();
}
