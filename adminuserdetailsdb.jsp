<%-- 
    Document   : adminuserdetailsdb
    Created on : 11 May, 2023, 3:43:03 PM
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
                margin-left:550px;
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
            margin-bottom:250px;
          margin-right: 850px;
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
             <u> <h1 align="center">USER DETAILS</h1></u></header>
       
           
    <table class="abc" align="center" cellpadding="10" cellspacing="3" border="1" class="abc">
        <tr>
            <td><b>NAME</b></td>
            <td><b>ADDRESS</b></td>
            <td><b>DOB</b></td>
            <td><b>STATE</b></td> 
          
        </tr>     
         
        <%
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
            
            
            ResultSet rs=st.executeQuery("select * from useregist");
            while(rs.next())
            {
        %>
        <tr><td><%=rs.getString("name")%></td>
            <td><%=rs.getString("address")%></td> 
            <td><%=rs.getString("date")%></td>
            <td><%=rs.getString("state")%></td>
           
        </tr>
    
            <%
            }
            %>
            
            </table>
<center>
    <form action="adminlog.jsp" method="post">
        <p class="button">
            <br><br><button type="submit" class="button">BACK</button></p>
        
        
    </form>
</center>      
            
    </body>
</html>
