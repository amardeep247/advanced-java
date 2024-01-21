/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.somaiya.mca;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author amard
 * Program on JDBC using statements.
 */
public class JDBCDemo {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/mca_demo";
    private static final String USERNAME = "mca";
    private static final String PASSWORD = "mca_2024";

    public static void main(String[] args) {

        //Step 1
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("JDBC driver not found");
           // e.printStackTrace();
            return;
        }

        //Step2
        try ( Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);  Statement statement = connection.createStatement()) {

            createTableIfNotExists(statement);

            // Insert 
            insertStudentData(statement, 1, "Raj", 25);
            insertStudentData(statement, 2, "Deb", 22);

            // Read & Display
            System.out.println("Records in the students table:");
            readStudentData(statement);

            // update
            updateStudentData(statement, 1, "Raj", 26);

            System.out.println("\nRecords in the students table after update:");
            readStudentData(statement);

            //Delete
            deleteStudentData(statement, 2);

            System.out.println("\nRecords in the students table after delete:");
            readStudentData(statement);

        } catch (SQLException e) {
            System.err.println("Database error!!");
           // e.printStackTrace();
        }
    }

    private static void createTableIfNotExists(Statement statement) throws SQLException {
        String createTableQuery = "CREATE TABLE IF NOT EXISTS students (id INT PRIMARY KEY, name VARCHAR(255), age INT)";
        statement.executeUpdate(createTableQuery);
    }

    private static void insertStudentData(Statement statement, int id, String name, int age) throws SQLException {
        String insertQuery = "INSERT INTO students (id, name, age) VALUES (" + id + ", '" + name + "', " + age + ")";
        statement.executeUpdate(insertQuery);
    }

    private static void readStudentData(Statement statement) throws SQLException {
        String selectQuery = "SELECT * FROM students";
        try ( ResultSet resultSet = statement.executeQuery(selectQuery)) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");
                System.out.println("ID: " + id + ", Name: " + name + ", Age: " + age);
            }
        }
    }

    private static void updateStudentData(Statement statement, int id, String name, int newAge) throws SQLException {
        String updateQuery = "UPDATE students SET age=" + newAge + " WHERE id=" + id + " AND name='" + name + "'";
        statement.executeUpdate(updateQuery);
    }

    private static void deleteStudentData(Statement statement, int id) throws SQLException {
        String deleteQuery = "DELETE FROM students WHERE id=" + id;
        statement.executeUpdate(deleteQuery);
    }
}
