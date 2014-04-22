/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.titanbank.bll;

/**
 *
 * @author Loki
 */
public class SavingsAccount extends BankAccount {
   
    public SavingsAccount(Customer customer, double startingBalance) {
        super(customer, startingBalance, BankAccount.AccountType.SAVINGS);
        this.setAccountName("Savings Account");
       
    }
}