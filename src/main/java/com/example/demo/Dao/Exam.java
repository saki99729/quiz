package com.example.demo.Dao;

import com.example.demo.model.exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Timer;

public class Exam {



    public static void addExam(ArrayList<exam>examArrayList) throws SQLException, ClassNotFoundException {
        GetConnection getConnection = new Database();
        Connection connection = getConnection.connection( );

        //exam name adding function







        //question adding part
        String query="insert into task1schoolmarking.examnew(question,answer1,answer2,answer3,answer4,correctanswer)values(?,?,?,?,?,?);";
        PreparedStatement ps = connection.prepareStatement(query);
        for (exam exam : examArrayList)
        {
                ps.setString(1, exam.getQuestion());
                ps.setString(2, exam.getAnswer1());
                ps.setString(3,exam.getAnswer2());
                ps.setString(4, exam.getAnswer3());
                ps.setString(5, exam.getAnswer4());
                ps.setString(6, exam.getCorrectAnswer());
            System.out.println();
            ps.executeUpdate();
        }

        System.out.println("examadding successfull");

    }
}
