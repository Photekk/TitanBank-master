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
public class CheckingAccount extends BankAccount
{
    public CheckingAccount(Customer customer, double startingBalance) 
    {
        super(customer, startingBalance, BankAccount.AccountType.CHECKINGS);
        this.setAccountName("Checking Account");
    }
}
