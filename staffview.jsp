<%-- 
    Document   : staffview
    Created on : 7 May, 2023, 11:20:03 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
           body{
                display: flex;
                justify-content:center;
                align-items:center;
                min-height: 100vh;
                background: url('eduu.jpg')no-repeat;
                background-size: cover;
                background-position: center;
                color: white;
                
            }
     
            
            .header
            {
                                  
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                padding: 20px 90px;
                margin-left: 430px;
                display: flex;
                justify-content:space-between;
                align-items:center;
               
            }
            
            .abc
            {
                text-align: center;
                color:white;
                margin: 255px;
                align-items:center;
                margin-left:950px;
               margin-top: 115px;
               margin-right:1px;
               margin-bottom: 110px;
            }
        
   
        .button
        {
            width: 190px;
            height: 40px;
            align-items:center;
            margin: 100px;
            margin-bottom:150px;
          margin-right: 880px;
          margin-top: 200px;
            margin-left:0.0001px;
          
        }
        
        .button:hover{
            align-items:center;
           
        }
            
          
           
        
        
        
        
        
        
        
        
        
        </style>
        
    </head>
    <body>
     
         <header class="header">
             <u> <h1 align="center">STAFF DETAILS</h1></u></header>
       
           
    <table class="abc" align="center" cellpadding="10" cellspacing="4" border="1" class="abc">
        <tr>
            <td><b>STAFF_NAME</b></td>
            <td><b>STAFF ADDRESS</b></td>
            <td><b>SUBJECT</b></td>
            <td><b>PHONE NO</b></td> 
           
        </tr>     
         
        <%  
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
            
            
            ResultSet rs=st.executeQuery("select * from staffregis");
            while(rs.next())
            {
        %>
        <tr><td><%=rs.getString("staff_name")%></td>
            <td><%=rs.getString("address")%></td> 
            <td><%=rs.getString("subject")%></td>
            <td><%=rs.getString("phoneno")%></td>
            
        </tr>
    
            <%
            }
            %>
            
            </table>
<center>
    <form action="adminloginn.jsp" method="post">
        <p class="button">
            <br><br><button type="submit" class="button">UPDATE</button></p>
        
        
    </form>
</center>      
  
    
    </body>
</html>
