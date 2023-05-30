<%-- 
    Document   : usereditup
    Created on : 11 May, 2023, 3:37:15 PM
    Author     : dell
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
           
        <% 
           
        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String date=request.getParameter("date");
        String state=request.getParameter("state");
       
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
            String s="update useregist SET address='"+address+"', state='"+state+"', name='"+name+"' ,date='"+date+"' where name='"+name+"'and date='"+date+"'";
            
            int i =st.executeUpdate(s);
           if(i>0)
            {
       
 response.sendRedirect("adminuserdetailsdb.jsp");
    
           
            }
           else
           {
               response.sendRedirect("adminlog.jsp");
    
           }
            %>
       
        
     
            
       
        
        
        
        
    </body>
</html>
