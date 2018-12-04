<%-- 
    Document   : master3
    Created on : Nov 26, 2018, 10:02:40 PM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="master2css.css" type="text/css">
    </head>
    <body>
        
        <div class="div1">
            <div class="div3">
            <a href="uploadmed.jsp" class="manu">UPLOAD MEDICINE</a>
            <a href="manageorder.jsp" class="manu">MANAGE ORDER</a>
             <a href="orderlist.jsp" class="manu">ORDER LIST</a>
              <a href="stock.jsp" class="manu">CHECK  STOCK</a>
              <%if(session.getAttribute("admin")!=null){
                  %>
                  <b>Wellcome Admin: <big style="font-weight: bold;color: #990099;font-size: 25px;"><%=session.getAttribute("admin")%></big>...</b>
                   <a href="logout.jsp">Logout</a>
                  <%}
              %>
            </div>
        </div>

    </body>
</html>
