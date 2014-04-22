/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.titanbank.bll;

import java.util.ArrayList;

/**
 *
 * @author atillman
 */
public final class UserRepository implements IUserRepository{

    final private ArrayList<User> users;
    
    public UserRepository(){
        this.users = new ArrayList<>();
        Customer c = new Customer("Justin", "Owens");
        User root = new User("root", "root", c);
        this.addUser(root);
    }
    
    @Override
    public User findByUserName(String userName) {
        return users.get(0);
    }

    @Override
    public void addUser(User u) {
        this.users.add(u);
    }
    
}
