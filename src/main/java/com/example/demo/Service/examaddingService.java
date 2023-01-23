package com.example.demo.Service;

import com.example.demo.Dao.Exam;
import com.example.demo.model.exam;

import java.sql.SQLException;
import java.util.ArrayList;

public class examaddingService {
    public static void addExam(ArrayList<exam>examArrayList) throws SQLException, ClassNotFoundException {
        Exam.addExam(examArrayList);
    }
}
