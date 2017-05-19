package com.pacotesturisticos.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtilPg {
	private static Connection connection = null;

    public static Connection getConnection() {
        if (connection != null)
            return connection;
        else {
            try {
//                
//                String driver = "com.mysql.jdbc.Driver";
//                String url = "jdbc:mysql://localhost:3306/Usuario";
//                String user = "root";
//                String password = "";
                
                String driver = "org.postgresql.Driver";
                String url = "jdbc:postgresql://localhost:5432/pacotetursql";
                String user = "postgres";
                String password = "123456";
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return connection;
        }

    }
}
