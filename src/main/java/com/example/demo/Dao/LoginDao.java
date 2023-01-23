package com.example.demo.Dao;

import com.example.demo.model.Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
    public static Login loginpage(String email,String pass) throws SQLException, ClassNotFoundException {
        GetConnection getConnection = new Database();
        Connection connection = getConnection.connection();

        String query="SELECT * FROM task1schoolmarking.login where email=? and password=?";
        PreparedStatement ps = connection.prepareStatement(query);
        Login login = new Login();
        ps.setString(1,email);
        ps.setString(2,pass);
        ResultSet rs = ps.executeQuery();
        if(rs.next())
        {
            login.setEmail(rs.getString("email"));
            login.setPass(rs.getString("password"));
            login.setJobRole(rs.getString("jobRole"));
        }else {
            System.out.println("somthin worngs");
        }
        ps.close();
        connection.close();

        return  login;
    }
}
