package com.chang.Entity;

import lombok.Data;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

/**
 * @author cyy
 * @date 2018/9/11 10:20
 */
@Data
public class Students {

    private int studentId;

    private String studentName;

    private String Gender;

    private Date birthday;

    private BigDecimal StudentIdNo;

    private String CardNo;

    private String StuImage;

    private int age;

    private String  PhoneNumber;

    private String StudentAddress;

    private int ClassId;

}
