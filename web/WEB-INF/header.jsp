<%-- 
    Document   : header
    Created on : Apr 21, 2014, 11:09:40 PM
    Author     : Loki
--%>
<% 
String user = ""; 
Boolean logged = (Boolean) session.getAttribute("status");
if (logged == null || !logged.booleanValue()){
    %>
    
    <%
} else {
    user = (String) session.getAttribute("user");
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div>
        <a href="accounts.jsp">Account info</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="transfers.htm">Transfers</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <a href="index.htm"> Log out</a>
    </div>
    
</html>
