/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.titanbank.bll;

/**
 *
 * @author atillman
 */
public class Customer {

    private final String firstName;
    private final String lastName;
        
    public Customer(String firstName, String lastName) 
    {
        this.firstName = firstName;
        this.lastName = lastName;
    }
    
    public String getFirstName() {
        return this.firstName;
    }

    public String getLastName() {
        return this.lastName;
    }
    
    public String getFullName() {
        return this.firstName + " " + this.lastName;
    }
    
//    @Override
//    public boolean equals(Object o) {
//        if (o == null) {
//            return false;
//        }
//        if (this.getClass() != o.getClass()) {
//            return false;
//        }
//        return this.getFullName().equals(((Customer)o).getFullName());
//    }
}
