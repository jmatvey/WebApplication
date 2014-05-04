/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.titanbank.bll;

import java.util.ArrayList;


public final class UserRepository implements IUserRepository{

    final private ArrayList<User> users;
    private Customer customer;
    
    public UserRepository(){
        this.users = new ArrayList<>();
        Customer c = new Customer("", "");
        User jmatvey = new User("jmatvey", "2182663", c);
        this.addUser(jmatvey);
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
