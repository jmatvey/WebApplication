<%-- 
    Document   : transfers
    Created on : Apr 23, 2014, 11:22:24 PM
    Author     : LTK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfers</title>
    </head>
    <body>

        <%@page import="edu.spcollege.titanbank.bll.BankAccount, edu.spcollege.titanbank.bll.TransferRequest, edu.spcollege.titanbank.bll.TransferService" %>

        <form action="transferAction.jsp" method="post">
            
            <label for="accountSelect">Account Select:</label>
            <select name="accountSelect" id="accountSelect">
                <option>Checkings to Savings</option>
                <option>Savings to Checkings</option>
            </select>
            <br/>
            <label for="amountBox">Amount:</label>
            <input type="text" name="amountBox" id="amountBox" />
            <br/>
            <label for="dateBox">Enter date if transaction should take place at a later date</label>
            <input type="text" name="dateBox" id="dateBox" />
            <br/>
            <input type="submit" name="btnSubmit" id="btnSubmit" value="Submit" />
        </form>

        <div><a href="pendingTransfers.jsp">View Pending Transfers</a></div>
        <div><a href="completedTransfers.jsp">View Completed Transfers</a></div>
    </body>
</html>
