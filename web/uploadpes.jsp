<%-- 
    Document   : uploadpes
    Created on : Nov 26, 2018, 12:50:11 AM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="uploadcss.css" type="text/css">
    </head>
    <body>
        <jsp:include page="master1.jsp"/> 
        <div class="ddd">
            <p class="pp">Upload your Prescription for purchase order and more......  </p>
        </div>
        <form >
            <center><br><br><br>
                <label>Upload your prescription </label>
                <input type="file" name="pic" accept="image/*"><br><br>
             <input type="submit" name="Upload" value="Upload Prescription">
            </center>
           
        </form>
    <center>
        <br>
        <a href="order.jsp" style="padding:5px 5px 5px 5px;text-decoration: none;background-color: #0099ff">Manual Order</a>
    </center>
        <div class="dd2" >
            <p ><b>NOTE:  </b>We do not Take any order without any valid prescription for the concerns of ethics and security. So please upload your valid prescription before purchase your order .</p>
        </div>
    </body>
</html>
