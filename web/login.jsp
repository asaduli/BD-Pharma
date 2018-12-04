<%-- 
    Document   : login
    Created on : Oct 17, 2018, 10:14:47 PM
    Author     : Asadul  Islam
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.database.connectiondb" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="logcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="master1.jsp"/>
        <div class="log">
            <center>
                <form action="login.jsp" method="post">
            <p><center class="class1">Log In</center></p><br><br>
        <label class="class1">User Name</label><br><br>
        <input class="class2" type="text" name="username" placeholder="User Name"><br><br>
           <label class="class1">Password</label><br><br>
            <input class="class2" type="password" name="password" placeholder="Enter Your Password"><br>
            <input class="input1" type="submit" name="login" value="Log In">
        </form>
                <br><br>
                <p>New User  <a href="home.jsp">Registration</a></p>
              
                </center>
           
        </div>
        <%
            String x=request.getParameter("login");
            if("Log In".equals(x)){
            try{
                String user="",pass="";
            String uname=request.getParameter("username");
            String password=request.getParameter("password");
            connectiondb cd=new connectiondb();
            String sql="Select * from user_info Where user_name='"+ uname +"' AND password='"+ password +"'";
            ResultSet rs=cd.connection().executeQuery(sql);
           
            while(rs.next()){
                user=rs.getString(3);
                 pass=rs.getString(4);
                
            }
            if(user!="" && pass!=""){
                session.setAttribute("user",uname);
                response.sendRedirect("home.jsp");
            }
            else{
              out.write("<script>");
              out.write("alert('Your username or password is wrong')");
              out.write("</script");
            }
            out.println(user+pass);
            }catch(Exception e){
                System.out.println(e);
            }
            }
        %>
    </body>
</html>
