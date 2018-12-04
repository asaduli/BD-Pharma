<%-- 
    Document   : adminlogin
    Created on : Nov 26, 2018, 8:18:01 PM
    Author     : Asadul  Islam
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.database.connectiondb" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Log In page</title>
        <link rel="stylesheet" href="logcss.css" type="text/css">
    </head>
    <body>
        <jsp:include page="master1.jsp" />
           <div class="log2">
            <center>
                <form action="adminlogin.jsp" method="post">
            <p><center class="class1">Admin Log In</center></p><br><br>
        <label class="class1">User Name</label><br><br>
        <input class="class2" type="text" name="username" placeholder="User Name"><br><br>
           <label class="class1">Password</label><br><br>
            <input class="class2" type="password" name="password" placeholder="Enter Your Password"><br>
            <input class="input1" type="submit" name="login" value="Log In">
        </form>
                </center>
           
        </div>
        <% 
              String x = request.getParameter("login");
        if("Log In".equals(x)){
        out.print("Heello");
  
        String username=request.getParameter("username");
        String  password=request.getParameter("password");
        String user="",pass="";
        connectiondb cd=new connectiondb();
        String sql="Select * from admin Where user_name='"+ username +"' AND password='"+ password +"'";
           ResultSet rs=cd.connection().executeQuery(sql);
           
            while(rs.next()){
                user=rs.getString(1);
                 pass=rs.getString(2);
                
            }
            if(user!="" && pass!=""){
                session.setAttribute("admin", user);
                response.sendRedirect("adminhome.jsp");
            }
            else{
              out.write("<script>");
              out.write("alert('Your username or password is wrong')");
              out.write("</script");
            }
        }
        else{
            out.print(x);
        }
        %>
    </body>
</html>
