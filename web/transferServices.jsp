<%-- 
    Document   : transferServices
    Created on : Apr 16, 2014, 9:25:11 PM
    Author     : Loki
--%>

<%@page import="java.util.List"%>
<%@page import="edu.spcollege.titanbank.bll.TransferRequest"%>
<%@page import="edu.spcollege.titanbank.bll.TransferService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.DateFormat"%>
<%@page import="edu.spcollege.titanbank.bll.BankAccountRepository"%>
<%@page import="edu.spcollege.titanbank.bll.User"%>
<%@page import="edu.spcollege.titanbank.bll.UserRepository"%>
<%@page import="java.util.Date"%>
<%@page import="edu.spcollege.titanbank.bll.BankAccount"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<%! String username = ""; %>
<%! BankAccount fromAccount = null; %>
<%! BankAccount toAccount = null; %>
<%! double amount = 0; %>
<%! Date activeDate = null; %>
<%
    username = (String) session.getAttribute("username");
    
    UserRepository userRepo = new UserRepository();
    User user = userRepo.findByUserName(username);
    
    BankAccountRepository bankAcctRepo = new BankAccountRepository();

    
    fromAccount = bankAcctRepo.findByAccountNumber( request.getParameter("from") );
    toAccount = bankAcctRepo.findByAccountNumber( request.getParameter("to") );
    amount = Double.parseDouble( request.getParameter("amount") );
    when = TransferRequest.ScheduleType.valueOf(request.getParameter("when"));
    }
   
    TransferService transferServ = new TransferService();
    
    TransferRequest transferRequest = new TransferRequest(fromAccount, toAccount, when, amount);
    
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Service page</title>
    </head>
    <body>
        <h3>Scheduled Transfers</h3>
            
    </body>
</html>