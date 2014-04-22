<%-- 
    Document   : accounts
    Created on : Apr 22, 2014, 11:32:26 AM
    Author     : Justin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TitanBank Accounts Page</title>
    </head>
    <body>
        
            <form action="AccountInfoServlet" method="post">
                <select name="AccountType">
                <option value="checking">Checking</option>
                <option value="savings">Savings</option>
                <input type="submit" value="Let's Go" />
                </select>
            </form>
        
    </body>
</html>
