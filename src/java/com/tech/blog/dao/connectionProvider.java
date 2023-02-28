package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class connectionProvider {

    private static Connection con;

    public static Connection getConnection() {

        if (con == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "root", "");
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(connectionProvider.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return con;
    }

}
