<%-- 
    Document   : master1
    Created on : Oct 15, 2018, 10:19:08 PM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="master1css.css" type="text/css">
   
    </head>
    <body>
        <div id="div1">
            <p class="p1">Medicine Delivery Services 
                <a  class="margin" href="master1.jsp">
                    <img class=" i1 margin" src="image/location.png" alt="Location">
                </a>
            </p>
        </div>
        <div class="div2">
            <a class="margin" href="home.jsp">
                <img class="i2 margin " src="image/home1.png" alt="Home Page">
                
            </a>
        
            <span class="t2 margin">BD Pharma</span>
                    <form class="f1" action="searchmed.jsp">
                        <input class="sbox" type="text" name="searchbox" placeholder="Search Medicine"/>
                        <input class="submit1" type="submit" name="search" value="Search"/>
                    </form>
            </div>
    </body>
</html>
