<%-- 
    Document   : order
    Created on : Dec 4, 2018, 1:31:54 AM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Order medicine</title>
<link rel="stylesheet" type= "text/css" href="ordercss.css">
 </head>
<body  style="text-align:center;">
    <jsp:include page="master1.jsp"/>
<h1 style="text-align:center;" ><b>Order medicine</b></h1>

<div class="orderbox">


<form class="modal-content animate" action="order.jsp">
<div>
<div class="container">
    <label><b>Enter Medicine name</b></label><br>
<input type="text" name="Order medicine"><br>
<label><b>Enter Quantity<b></label><br>
<input type ="text" name="Quantity"maxlength="30"><br>
<br>
<input type="button" name="order_more" value="Order more">
<input type ="submit" name="ok" value="Make Bill">
</div>
	
</form>
</body>
</html>

