
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Completed Transfers</title>
    </head>
    <body>
        <h3>Complete Transfers</h3>
        <br/>
        
        <%@ page import="edu.spcollege.titanbank.bll.TransferService" %>
        <% TransferService completeTransfers = (TransferService) request.getAttribute("TransferService"); %>
        <table cellspacing="5" cellpadding="5" border="1">
            <tr>
                <td align="right">Complete Transfers</td>
                <td><%= completeTransfers.getTransactions %></td>
            </tr>
        </table>
    </body>
</html>
