<%-- 
    Document   : CheckingAccount
    Created on : Apr 22, 2014, 1:54:42 PM
    Author     : Justin
--%>

<%@page import="java.util.List"%>
<%@page import="edu.spcollege.titanbank.bll.BankAccount"%>
<%@page import="edu.spcollege.titanbank.bll.BankAccountRepository"%>
<%@page import="edu.spcollege.titanbank.bll.User"%>
<%@page import="edu.spcollege.titanbank.bll.UserRepository"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checking Account Page</title>
    </head>
    <body>
         
         <table border="1">
             <c:forEach var="bankAccount" items="${bankList}">
             <thead>
                 <tr>
                     <th>Customer</th>
                     
                     <th>Balance</th>
                 </tr>
             </thead>
             <tbody>
                 <tr>
                     <td>${ bankAccount.getCustomer() }</td>
                     <td>${ bankAccount.getBalance() }</td>
                     
                 </tr>
                 
             </tbody>
         </table>

    </body>
</html>
