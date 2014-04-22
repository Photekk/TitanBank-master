/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.titanbank.bll;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author Loki
 */
public final class BankAccountRepository implements IBankAccountRepository {
    
    final private ArrayList<BankAccount> bankAccounts;
    
    public BankAccountRepository(){
        this.bankAccounts = new ArrayList<>();
        Customer c = new Customer("Justin", "Owens");
        BankAccount myCheckingAccount = new CheckingAccount(c, 5000);
        BankAccount mySavingAccount = new SavingsAccount(c, 5000);
        this.addBankAccount(myCheckingAccount);
        this.addBankAccount(mySavingAccount);
       
        
    
    }
    
    
    public void addBankAccount(BankAccount u) {
        this.bankAccounts.add(u);
    }
    
    public BankAccount findByAccountNumber(String accountNumber) {
        ArrayList<BankAccount> results = new ArrayList<>();
        
       
        for (BankAccount account : bankAccounts) {
           
            if (accountNumber.equals(account.getAccountName())) {
                return account;
            }
        }
        return null;
    }

    @Override
    public List<BankAccount> findByUser(User user) {
        return findByCustomer(user.getCustomer());
    }

    @Override
    public List<BankAccount> findByCustomer(Customer customer) {
        ArrayList<BankAccount> result = new ArrayList<>();
        
        for(BankAccount account : bankAccounts)
        {
            if (customer.equals(account.getCustomer())){
                result.add(account);
            }
        }
        return Collections.unmodifiableList(result);
        
    }
        
    }
