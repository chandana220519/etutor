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
                margin-left:300px;
               margin-top: 115px;
               margin-right:1px;
               margin-bottom: 110px;
            }
        
   
        .button
        {
            width: 250px;
            height: 50px;
            align-items:center;
            margin: 200px;
            margin-bottom:250px;
          margin-right: 300px;
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
       
           
    <table class="abc" align="center" cellpadding="10" cellspacing="3" border="1" class="abc">
        <tr>
            <td><b>STAFF_NAME</b></td>
            <td><b>ADDRESS</b></td>
            <td><b>SUBJECT</b></td>
            <td><b>PHONE NO</b></td> 
            <td><b>WORKING</b></td> 
            
           
        </tr>     
         
        <%  String staff_name=request.getParameter("name");
            String phoneno=request.getParameter("phoneno");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
            
            
            ResultSet rs=st.executeQuery("select * from staffregis WHERE staff_name='"+staff_name+"' and phoneno='"+phoneno+"'");
                    
            while(rs.next())
            {
        %>
        <form action="staffeditup.jsp" method="post">
        <tr><td><input type="text" value="<%=rs.getString("staff_name")%>" name="staff_name" ></td>   
            <td><input type="edit" value="<%=rs.getString("address")%>" name="address"></td> 
            <td><input type="edit"value="<%=rs.getString("subject")%>" name="subject"></td>
            <td><input type="text" value="<%=rs.getString("phoneno")%>" name="phoneno"></td>
            <td><input type="text" value="<%=rs.getString("working")%>" name="working"></td>
           
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
