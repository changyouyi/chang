package com.chang.Entity;

import lombok.Data;

import java.sql.Timestamp;

/**
 * @author cyy
 * @date 2018/9/11 10:27
 */

@Data
public class ScoreList {
    private int Id;
    private int StudentId;
    private int CSharp;
    private int SQLServerDB;
    private Timestamp UpdateTime;
}
