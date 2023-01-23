package com.example.demo.Service;

import com.example.demo.Dao.LoginDao;
import com.example.demo.model.Login;
import org.jetbrains.annotations.NotNull;

import java.sql.SQLException;

public class LoginService {

    public static Login loginpageService(String email, String pass) throws SQLException, ClassNotFoundException {
        return LoginDao.loginpage(email, pass);
    }
}
