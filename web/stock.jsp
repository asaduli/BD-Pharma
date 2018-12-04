<%-- 
    Document   : stock
    Created on : Nov 29, 2018, 7:04:51 PM
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
        <link rel="stylesheet" href="stockcss.css" type="text/css">
    </head>
    <body>
        <jsp:include page="master1.jsp" />
        <jsp:include page="master3.jsp"/>
        
          <a href="adminhome.jsp" class="hom"> << Back To Home</a>
        <br><br><br>
    <center>
        <form action="stock.jsp" method="post">
            <label>Filter By</label>
            <select name="searchby" id="filter">
                <option>Medicine Name</option>
                <option>Generic Name</option>
                <option>Medicine Type</option>
                <option>Company Name</option>
            </select>
            <input type="text" name="item" placeholder="Enter the name ">
            <input type="submit" name="submit" value="Filter">
        </form>
    </center>
    <br>
    <center>
        <table >
            <thead>
            <td> Medicine Name</td>
                    <td>Generic Name</td>
                    <td> Medicine Type</td>
                    <td>Produce Date</td>
                    <td>Expire Date</td>
                    <td>Stock</td>
                    <td>Company</td>
                    </thead>
        <%
            try{
                connectiondb cd=new connectiondb();
                String sql="",filterby="",value="";
                  String f=request.getParameter("submit");
                  if("Filter".equals(f)){
                     if("Medicine Name".equals(request.getParameter("searchby"))){
                         filterby="med_name";
                     
                     }
                     else if("Generic Name".equals(request.getParameter("searchby"))){
                         filterby="gen_name";
                  
                         
                     }
                        else if("Medicine Type".equals(request.getParameter("searchby"))){
                         filterby="med_type";
                     
                         
                     }
                        else if("Company Name".equals(request.getParameter("searchby"))){
                         filterby="company_name";
                       
                         
                     }
                        else{
                            out.println("You did not select any filter option");
                        }
                     value=request.getParameter("item");
                     sql="select * from medicine where "+filterby+" like '%"+value+"%'";
              
                            
                  }
                  else{
                      sql="SELECT * from medicine";
                  }
                 
                ResultSet rs=cd.connection().executeQuery(sql);
                
           
                while(rs.next()){
                    %>
                    <tr>
                        <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(5)%></td>
                                    <td><%=rs.getString(6)%></td>
                                        <td><%=rs.getString(7)%></td>  
                                           <td><%=rs.getString(10)%></td>
                                               <td><%=rs.getString(11)%></td>
                    </tr>              
                    <%}
                
}catch(Exception e){

                out.println(e);
            }
            
            %>
            
    </table>
    </center>
    </body>
</html>
