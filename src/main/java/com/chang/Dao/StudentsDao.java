package com.chang.Dao;

import java.util.*;

import com.chang.Entity.Students;
import org.springframework.stereotype.Repository;

/**
 * @author cyy
 * @date 2018/9/11 10:31
 */
@Repository
public interface StudentsDao {
    Integer getCount();

    List<Students> getAllStudent();

    void insertStudent(Students students);
}
