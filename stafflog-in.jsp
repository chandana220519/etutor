<%-- 
    Document   : stafflog-in
    Created on : 2 May, 2023, 9:47:14 PM
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
                align-items:top;
                min-height: 100vh;
                background: url('eduu.jpg')no-repeat;
                background-size: cover;
                background-position:center;
                color: white;
               
            }
            
            
            .header
            {
                                  
                position: fixed;
                top: 0;
                left: 0;
                width: 90%;
                padding: 20px 90px;
                color: white;
                display: flex;
                justify-content:space-between;
                align-items:left;
                margin-left: 450px;
            }
            .abc
            {
                text-align: center;
                color:white;
                margin: 256px;
                align-items:center;
                margin-top: 230px;
                margin-bottom: 289px;
                margin-left: 550px;
                margin-right: 1px;
            }
            
            
          
              .button
              {
                  
                  
            width: 190px;
            height: 40px;
            align-items:center;
            margin: 100px;
            margin-bottom:255px;
            margin-right: 850px;
            margin-top: 225px;
            margin-left:0.0001px;
          
           
              }
                
              .button:hover{
                  align-items:center;
              }
            
    
            
     
        </style>
          
    </head>
    <body>
        
        
        <header class="header">
            
            <u> <h1 align="center"><b>STAFF DETAILS</b></h1></header></u>
       
         
          
           
    <table class="abc" align="center" cellpadding="12" cellspacing="2" border="1" class="abc">
        <tr>
            <td><b>STAFF_NAME</b></td>
            <td><b>STAFF_ID</b></td>
            <td><b>STAFF ADDRESS</b></td>
            <td><b>SUBJECT</b></td>
            <td><b>PHONE NO</b></td> 
            <td><b>WORKING</b></td>
            <td><b>COLLEGE_NAME</b></td>
        </tr>     
         
        <% 
            
            String Staff_Id=request.getParameter("Staff_Id");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
            
            
            ResultSet rs=st.executeQuery("select * from staffregis Where staff_id='"+Staff_Id+"'");
            while(rs.next())
            {
        %>
        <tr><td><%=rs.getString("staff_name")%></td>
            <td><%=rs.getString("staff_id")%></td>
            <td><%=rs.getString("address")%></td> 
            <td><%=rs.getString("subject")%></td>
            <td><%=rs.getString("phoneno")%></td>
            <td><%=rs.getString("working")%></td>
            <td><%=rs.getString("collegename")%></td>
        </tr>
    
            <%
            }
            %>
            
            </table>
<center>
    <form action="updatestaffdb.jsp" method="post">
        <p class="button">
            <br><br><button type="submit" class="button">UPDATE</button></p>
        
        
    </form>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
