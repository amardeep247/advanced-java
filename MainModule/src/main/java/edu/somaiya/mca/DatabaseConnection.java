/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.somaiya.mca;

/**
 *
 * @author amard
 */
import java.sql.*;

public class DatabaseConnection {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/mca_demo";
    private static final String USERNAME = "mca";
    private static final String PASSWORD = "mca_2024";

    public static Connection getConnection() throws SQLException {
         try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("JDBC driver not found");          
            
        }

        return DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
    }
}

