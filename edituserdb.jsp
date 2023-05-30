<%-- 
    Document   : edituserdb
    Created on : 11 May, 2023, 12:48:52 AM
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
    </head>
    
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
                margin-left:580px;
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
         
        <%  String name=request.getParameter("name");
            String date=request.getParameter("date");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
            
            
            ResultSet rs=st.executeQuery("select * from useregist WHERE name='"+name+"' and date='"+date+"'");
                    
            while(rs.next())
            {
        %><form action="usereditup.jsp" method="post">
        <tr><td><input type="text" value="<%=rs.getString("name")%>" name="name" ></td>   
            <td><input type="edit" value="<%=rs.getString("address")%>" name="address"></td> 
            <td><input type="edit"value="<%=rs.getString("date")%>" name="date"></td>
            <td><input type="text" value="<%=rs.getString("state")%>" name="state"></td>
           
        </tr>
    
            <%
            }
            %>
            
            </table>
<center>
    
        <p class="button">
            <br><br><button type="submit" class="button">EDIT</button></p>
        
        
    </form>
</center>      
  
     
    </body>
</html>
