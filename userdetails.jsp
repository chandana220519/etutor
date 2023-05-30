<%-- 
    Document   : userdetails
    Created on : 6 May, 2023, 12:01:54 AM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                margin: 256px;
                align-items:center;
                margin-left:850px;
               margin-top: 155px;
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
          margin-top: 235px;
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
       
           
    <table class="abc" align="center" cellpadding="11" cellspacing="4" border="1" class="abc">
        <tr>
            <td><b>USER_NAME</b></td>
            <td><b>ADDRESS</b></td>
            <td><b>DOB</b></td>
            <td><b>GENDER</b></td> 
            <td><b>STATE</b></td>
            
        </tr>     
         
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
            
            
            ResultSet rs=st.executeQuery("select * from useregist");
            while(rs.next())
            {
        %>
        <tr><td><%=rs.getString("name")%></td>
            <td><%=rs.getString("address")%></td> 
            <td><%=rs.getString("date")%></td> 
            <td><%=rs.getString("gender")%></td>
            <td><%=rs.getString("state")%></td>
        </tr>
    
            <%
            }
            %>
            
            </table>
<center>
    <form action="frontpage.jsp" method="post">
        <p class="button">
            <br><br><button type="submit" class="button">BACK</button></p>
        
        
    </form>
</center>      
            
       
            
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
