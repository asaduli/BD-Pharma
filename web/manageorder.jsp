<%-- 
    Document   : manageorder
    Created on : Dec 4, 2018, 11:11:33 AM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <td>Order Action</td>
            </thead>
            <tr>
                <td>001</td>
                <td>user:01</td>
                <td><button>Conform Order</button></td>
            </tr>
            <tr>
                <td>002</td>
                <td>user:002</td>
                <td><button>Cancel</button></td>
            </tr>
        
            
        </table>
    </center>
    </body>
</html>
