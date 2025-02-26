/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.mavenproject14.newpackage;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class UserManager {
    private static UserManager instance; // Singleton instance
    private List<String> users; // List to store users

    // Private constructor to prevent instantiation
    private UserManager() {
        users = new ArrayList<>();
    }

    // Get the single instance of UserManager (Singleton)
    public static synchronized UserManager getInstance() {
        if (instance == null) {
            instance = new UserManager();
        }
        return instance;
    }

    // Add a new user to the list
    public void addUser(String username, String email) {
        users.add("Username: " + username + ", Email: " + email);
    }

    // Get the list of users
    public List<String> getUsers() {
        return users;
    }
}
