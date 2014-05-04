<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Account Information</title>
    </head>

    <body>
        <%@ page import="edu.spcollege.titanbank.bll.BankAccount, edu.spcollege.titanbank.bll.Customer, java.lang.Enum" %>
        <%! String username = ""; %>
        <h3>Account Info</h3>
        <br/>
        <% username = (String) session.getAttribute("username"); %>
        <% Customer c = (Customer) request.getAttribute("Customer");       
        %>
        
        <% 
           BankAccount accountSavings = new BankAccount(c, AccountType.SAVINGS);
           BankAccount accountCheckings = new BankAccount(c, AccountType.CHECKINGS);
        %>
        
        
        <table cellspacing="5" cellpadding="5" border="1">
            <tr>
                <td align="right">Username:</td>
                <td><%= username %></td>
            </tr>
            <tr>
                <td align="right">Savings Account Balance</td>
                <td><%= accountSavings.getBalance() %></td>
            </tr>
            <tr>
                <td align="right">Checkings Account Balance</td>
                <td><%= accountCheckings.getBalance() %></td>
            </tr>
        </table>
    </body>
</html>
