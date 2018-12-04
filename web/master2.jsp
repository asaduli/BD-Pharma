<%-- 
    Document   : master2
    Created on : Oct 16, 2018, 1:29:30 AM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="master2css.css" type="text/css">
    </head>
    <body>
        <div class="div1">
            <div class="div3">
            <a href="home.jsp" class="manu">HOME</a>
            <a href="uploadpes.jsp" class="manu">ORDER MEDICINE</a>
             <a href="cancel_order.jsp" class="manu">CANCEL ORDER</a>
              <a href="home.jsp" class="manu">HELP LINE</a>
              <%        
                  if((session.getAttribute("user")==null||session.getAttribute("user") == "")){
                  %>
             <span>
                 <a href="login.jsp" style="margin-left: 50px">Log In</a>
                <a href="register.jsp">Registration</a>
            </span>
              
                  <% }else{
                  %>
                  <a href="logout.jsp" >LogOut</a>
                  <sup>Wellcome: "<%=session.getAttribute("user")%> "</sup>
                  <%}
                  %>
                  <%
                      if(session.getAttribute("admin")==null||session.getAttribute("admin")==""){
                          %>
                          <a href="adminlogin.jsp" class="add">Admin</a>
                      <%}else{
                       %>
                       <a href="adminhome.jsp">Admin Panel</a>
                       <%
                         }%>
          </div>  
          
        </div>
         
    </body>
</html>
