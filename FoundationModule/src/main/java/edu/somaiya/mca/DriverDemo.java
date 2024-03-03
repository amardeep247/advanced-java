/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.somaiya.mca;

/**
 *
 * @author amard
 */
public class DriverDemo {
    public static void main(String[] args) {
     
        loadDriver("com.mysql.cj.jdbc.Driver"); // MySQL
        loadDriver("org.postgresql.Driver");    // PostgreSQL
        loadDriver("oracle.jdbc.driver.OracleDriver"); // Oracle
        loadDriver("com.microsoft.sqlserver.jdbc.SQLServerDriver"); // SQL Server
        loadDriver("org.sqlite.JDBC"); // SQLite
        loadDriver("org.h2.Driver");     
    }

    private static void loadDriver(String driverClassName) {
        try {
            Class.forName(driverClassName);
            System.out.println("Driver loaded successfully: " + driverClassName);
        } catch (ClassNotFoundException e) {
            System.err.println("Error loading driver: " + driverClassName);         
        }
    }
}
