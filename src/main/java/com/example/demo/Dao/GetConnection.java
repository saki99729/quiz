package com.example.demo.Dao;

import java.sql.Connection;
import java.sql.SQLException;

public interface GetConnection {
    public Connection connection() throws ClassNotFoundException, SQLException;
}
