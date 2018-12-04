<%-- 
    Document   : register
    Created on : Oct 25, 2018, 10:01:26 PM
    Author     : Asadul  Islam
--%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@page import="com.connection.database.connectiondb" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="registercss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="master1.jsp"/>
        <div class="log">
            <center>
                <br>
                <p class="head">Registration</p>
                <form action="register.jsp" method="post">
                    <input type="text" name="firstname" placeholder="First Name" style="margin-right: 20px;text-align: center">
                    <input type="text" name="lastname" placeholder="Last Name" style="text-align: center"> <br><br>
                    <input type="text" name="username" placeholder="User Name " class="input"><br><br>
                    <input type="password" name="password" placeholder="Password " class="input"><br><br>
                    <input type="password" name="conformpass" placeholder="Confrom Password " class="input"><br><br>
                    <input type="email" name="email" placeholder="Email " class="input"><br><br>
                    <input type="tel" name="phone" placeholder="Phone Number " class="input"><br><br
                     <input list="citys" name="city">
                    <label style="color:white;font-weight: bold;font-size:15px;padding-right: 70px">Select You City</label>
                    <select name="city" id="citys" style="width: 150px;text-align: center">
                        <option value="Dhaka">Dhaka</option>
                        <option value="Chittagong">Chittagong</option>
                        <option value="Barishal">Barishal</option>
                        <option value="khulna">Khulna</option>
                        <option value="Rajshahi">Rajshahi</option>
                        <option value="Shylet">Shylet</option>
                    </select><br><br>
                    <input type="reset" name="reset" value="Reset">
                    <input type="submit" name="submit" value="Sign In">
                </form>
              
            </center>
            
        </div>
        <%
            String fname=request.getParameter("firstname");
            String lname=request.getParameter("lastname");
            String uname=request.getParameter("username");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
            String tele=request.getParameter("phone");
            String city=request.getParameter("city");
            try{
                connectiondb cd=new connectiondb();
                String sql="Insert into user_info(first_name,last_name,user_name,password,email,phone,city)VALUES ('"+fname+"','"+lname+"','"+uname+"','"+password+"','"+email+"','"+tele+"','"+city+"')";
                cd.connection().executeUpdate(sql);
                response.sendRedirect("login.jsp");
            }catch(Exception e){
                System.out.println(e);
            }
            
            %>
             
    </body>
</html>
