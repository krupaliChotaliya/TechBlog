/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.entities;

/**
 *
 * @author admin
 */
public class User {
    
    private String username;
    private String email;
    private String password;
    private String gender;
    private String about;

    public User(String username, String email, String password, String gender, String about) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.about = about;
    }

    public User() {
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getGender() {
        return gender;
    }

    public String getAbout() {
        return about;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setAbout(String about) {
        this.about = about;
    }
    
    
    
}
