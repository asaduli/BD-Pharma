<%-- 
    Document   : logout
    Created on : Nov 28, 2018, 10:13:59 PM
    Author     : Asadul  Islam
--%>

<% 
session.setAttribute("user", null);
session.invalidate();
response.sendRedirect("home.jsp");
%>