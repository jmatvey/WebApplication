<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pending Transfers</title>
    </head>
    <body>
        <h3>Pending Transfers</h3>
        <br/>
        <%! String username = ""; %>
        <% username = (String) session.getAttribute("username"); %>
        <%@ page import="edu.spcollege.titanbank.bll.TransferService" %>
        <% TransferService pendingTransfers = (TransferService) request.getAttribute("TransferService"); %>
        <table cellspacing="5" cellpadding="5" border="1">
            <tr>
                <td align="right">Username:</td>
                <td><%= username %></td>
            </tr>
            <tr>
                <td align="right">Pending Transfers</td>
                <td><%= pendingTransfers.getTransactions %></td>
            </tr>
        </table>
    </body>
</html>
