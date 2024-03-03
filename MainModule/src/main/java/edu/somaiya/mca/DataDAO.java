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

public class DataDAO {
    public static ResultSet getAllUsers() throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        Statement statement = connection.createStatement();
        return statement.executeQuery("SELECT * FROM students");
    }
}

