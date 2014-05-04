<%-- 
    Document   : transferAction
    Created on : Apr 30, 2014, 2:18:26 PM
    Author     : LTK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="edu.spcollege.titanbank.bll.BankAccount, edu.spcollege.titanbank.bll.Customer, java.lang.Enum" %>
        <%@ page import="edu.spcollege.titanbank.bll.TransferRequest, edu.spcollege.titanbank.bll.TransferService" %>
        
        <% Customer c = (Customer) request.getAttribute("Customer");%>  
        <%  
           BankAccount accountSavings = new BankAccount(c, AccountType.SAVINGS);
           BankAccount accountCheckings = new BankAccount(c, AccountType.CHECKINGS);
           TransferService trServ = new TransferService();
           
           Double amount = (Double) request.getParameter("amountBox");
           String date = request.getParameter("dateBox");
           
           
           if (request.getAttribute("accountSelect").SelectedIndex == 0){
               BankAccount accountOne = accountCheckings;
               BankAccount accountTwo = accountSavings;
           } else {
               BankAccount accountOne = accountSavings;
               BankAccount accountTwo = accountCheckings;
           }
           
           if (date != "") {
               TransferRequest trReq = new TransferRequest(accountOne, accountTwo, ScheduleType.FUTURE, amount);
               accountOne.withdraw(amount);
               accountTwo.deposit(amount);
           } else {
               TransferRequest trReq = new TransferRequest(accountOne, accountTwo, ScheduleType.FUTURE, amount);
           }
           
           trServ.transfer(trReq);
           
        %>
        <h1>Transaction Complete</h1>
    </body>
</html>
