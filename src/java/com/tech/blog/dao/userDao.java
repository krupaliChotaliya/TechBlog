/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;

import com.mysql.cj.protocol.Resultset;
import com.tech.blog.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author admin
 */
public class userDao {

    private Connection con;

    public userDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;
        try {
            String query = "insert into user(username,email,password,gender,about) values(?,?,?,?,?)";
            PreparedStatement pstm = this.con.prepareStatement(query);
            pstm.setString(1, user.getUsername());
            pstm.setString(2, user.getEmail());
            pstm.setString(3, user.getPassword());
            pstm.setString(4, user.getGender());
            pstm.setString(5, user.getAbout());

            pstm.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    public User getuserEmailandPassowd(String email,String password){
        User user=null;
        ResultSet resultSet=null;
        PreparedStatement pstm=null;
        
        try {
            String query="Select * from user where email=? and password=?";
             pstm = con.prepareStatement(query);
            pstm.setString(1, email);
            pstm.setString(2, password);
             resultSet= pstm.executeQuery();
            if(resultSet.next())
            {
                user = new User();
                user.setEmail(resultSet.getString("email"));
                user.setUsername(resultSet.getString("username"));
                user.setAbout(resultSet.getString("about"));
                
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
