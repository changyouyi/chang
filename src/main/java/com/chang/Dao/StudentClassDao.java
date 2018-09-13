package com.chang.Dao;

import com.chang.Entity.StudentClass;
import org.springframework.stereotype.Repository;

import java.util.*;

/**
 * @author cyy
 * @date 2018/9/11 10:31
 */
@Repository
public interface StudentClassDao {
    Integer getCount();

    List<StudentClass> getAllClass();
}
