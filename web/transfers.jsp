<%-- 
    Document   : transfers
    Created on : Apr 16, 2014, 9:52:29 PM
    Author     : Loki
--%>
<%@page import="edu.spcollege.titanbank.bll.TransferRequest"%>
<%@page import="edu.spcollege.titanbank.bll.BankAccount"%>
<%@page import="edu.spcollege.titanbank.bll.BankAccountRepository"%>
<%@page import="edu.spcollege.titanbank.bll.User"%>
<%@page import="edu.spcollege.titanbank.bll.UserRepository"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<%
    String username = (String) session.getAttribute("username");
    
    UserRepository userRepo = new UserRepository();
    User user = userRepo.findByUserName(username);
    
    BankAccountRepository bankAcctRepo = new BankAccountRepository();
    List<BankAccount> bankAccounts = bankAcctRepo.findByUser(user);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Titan Bank: Transfers</title>
    </head>
    <body>
        <h2>Transfers</h2>
        <form action="transferService.jsp" method="post" id="transfer">
            <table cellspacing="5" border="0">
                <tr>
                    <td align="right"><p>From account: 
                    <td><input type="text" name="from"></td>
                </tr> 
                <tr>
                    <td align="right"><p>For account: 
                    <td><input type="text" name="to"></td>
                </tr> 
                <tr>
                    <td align="right"><p>when: 
                    <td><input type="text" name="when"></td>
                </tr> 
                <tr>
                    <td align="right"><p>Amount: 
                    <td><input type="text" name="amount"></td>
                </tr> 
            </table>
        </body>
</html>