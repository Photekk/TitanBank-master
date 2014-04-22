<%-- 
    Document   : login
    Created on : Apr 16, 2014, 8:43:03 PM
    Author     : Loki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to TitanBank</title>
    </head>

    <body>
       
       <h1>Login Form</h1>
        <p>Please enter a username and password to continue.</p>
        <form action="AuthenticationServlet" method="post">
            <table cellspacing="5" border="0">
                <tr>
                    <td align="right"><p>Username:</p> </td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td align="right"><p>Password:</p> </td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login"></td>
                </tr>
            </table>
    </body>
</html>