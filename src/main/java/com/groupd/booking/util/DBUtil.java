package com.groupd.booking.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String jdbcURL = "jdbc:mysql://localhost:3306/hotel";
    private static final String jdbcUsername = "root";
    private static final String jdbcPassword = "";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load driver once at class load time
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to load MySQL driver");
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }
}
