/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.titanbank.bll;


public class BankAccount {
    
    public enum AccountType {
        SAVINGS,
        CHECKINGS
    }
    
    private Customer customer;
    private double balance;
    private AccountType typeOfAccount;
    
    public BankAccount(Customer customer, AccountType typeOfAccount){
        this.customer = customer;
        this.balance = 5000;
        this.typeOfAccount = typeOfAccount;
        
    }
    
    public double getBalance(){
        return this.balance;
    }
    
    public boolean hasSufficientFunds(double amt){
        return this.balance >= amt;
    }
    
    public void withdraw(double amt) throws InsufficientFundsException{
        if (hasSufficientFunds(amt))
            this.balance -= amt;
        else
            throw new InsufficientFundsException();
    }
    
    public void deposit(double amt){
        this.balance += amt;
    }
}
