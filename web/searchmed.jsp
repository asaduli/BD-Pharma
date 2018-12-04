<%-- 
    Document   : searchmed
    Created on : Nov 29, 2018, 12:00:17 AM
    Author     : Asadul  Islam
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.database.connectiondb" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="master1.jsp"/>
        <%
        connectiondb cd=new connectiondb();
        try{
                String sitem=request.getParameter("searchbox");
                
          String sql="Select * from medicine Where med_name='"+ sitem +"'";
          ResultSet rs=cd.connection().executeQuery(sql);
     
        
  while(rs.next()){
   
              
         %>
         <div>
             <center style="height: 300px ;width: 600px;background-color: #009999;margin-left: 400px;margin-top: 30px;padding-top: 20px;">
            <h3>Medicine Name:  <%=rs.getString(2)%></h3>
            <h3>Generic Name: <%=rs.getString(3)%></h3> 
            <h3>Medicine For: <%=rs.getString(4)%></h3> 
            <h3>Medicine Type: <%=rs.getString(5)%></h3>
            <h3>Produce Date: <%=rs.getString(6)%></h3>
            <h3>Expire Date: <%=rs.getString(7)%></h3>
            <h3>Price:<%=rs.getString(8)%>pcs <%=rs.getString(9)%> Taka</h3>
                    </h3>
            <br><br><br>
             </center>
         </div>
             <%}
        }catch(Exception e){
            out.println(e);
        }
        %>
    </body>
</html>
