<%-- 
    Document   : orderlist
    Created on : Dec 4, 2018, 11:48:56 AM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order List</title>
        <link href="managecss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="master1.jsp"/>
         <a href="adminhome.jsp" class="hom"> << Back To Home</a>
           <center>
        <br><br><br>
        <table>
            
            <thead>
            <td>Order ID</td>
            <td>User ID</td>
            <td>Order Date</td>
            <td>Delivery Status</td>
            </thead>
            <tr>
                <td>001</td>
                <td>user:01</td>
                <td>9/11/2018</td>
                <td>Delivered</td>
            </tr>
            <tr>
                <td>002</td>
                <td>user:002</td>
                <td>11/11/2018</td>
                <td>Ready for Deliver</td>
            </tr>
        
            
        </table>
    </center>
        
    </body>
</html>
