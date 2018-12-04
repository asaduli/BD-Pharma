<%-- 
    Document   : uploadmed
    Created on : Nov 26, 2018, 10:16:48 PM
    Author     : Asadul  Islam
--%>
<%@page import="com.connection.database.connectiondb" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="uploadmedcss.css" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="master1.jsp"/>
        <a href="adminhome.jsp" class="home"><< Back To Home</a>
        
        <form class="ffff" action="uploadmed.jsp" method="post">
            <br><br><br>
            <center>
            <input type="text" name="mname" placeholder="Medicine Name">
            <div class="di">
              
                <input type="text" name="gname" placeholder="Generic Name">
            </div>
            <br><br><br>
           
            <input type="text" name="mfor" placeholder="Medicine For">
            <div class="di">
          
                <label>Medicine Type</label>
            <select name="searchby" id="Type">
                <option>Tab</option>
                <option>Sirap</option>
            </select>

                
            </div>
                <br><br><br>
         
            <input type="text" name="prodate" placeholder="Produce Date">
            <div class="di">
            
                <input type="text" name="expdate" placeholder="Expire Date">
            </div>
                <br><br><br>
            
            <input type="text" name="uniqnt" placeholder="Unit Quantity">
            <div class="di">
                <input type="text" name="unipri" placeholder="Unit Price">
            </div>
            <br><br><br>
            <input type="text" name="totalstock" placeholder="Total Stock">
            <div class="di">
                <input type="text" name="company" placeholder="Company Name">
            </div>
            <br><br><br><br><br>
            <input type="reset" name="cancel" value="CANCEL">
            <input type="submit" name="add" value="ADD" class="sub">
            </center>
        </form>
        <%
        String x=request.getParameter("add");
        if(x!=null&&x.equals("ADD")){
            String medname=request.getParameter("mname");
            String genname=request.getParameter("gname");
            String medfor=request.getParameter("mfor");
            String medtype=request.getParameter("mtype");
            String prodate=request.getParameter("prodate");
            String expdate=request.getParameter("expdate");
            String quant=request.getParameter("uniqnt");
            String upri=request.getParameter("unipri");
            String tstock=request.getParameter("totalstock");
            String company=request.getParameter("company");
            try{
                connectiondb cd=new connectiondb();
                String sql="Insert into medicine(id,med_name,gen_name,med_for,med_type,produce_date,expire_date,unit_quantity,unit_price,total_stock,company_name)VALUES (default,'"+medname+"','"+genname+"','"+medfor+"','"+medtype+"','"+prodate+"','"+expdate+"','"+quant+"','"+upri+"','"+tstock+"','"+company+"')";
                cd.connection().executeUpdate(sql);
                out.println("<script>");
                out.println("<alert('Medicine Added Successfull.....')");
                
                out.println("</script>");
            }catch(Exception e){
                out.print(e);
            }
        }
                %>
    </body>
</html>
