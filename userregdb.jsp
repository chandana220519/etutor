<%-- 
    Document   : userregdb
    Created on : 28 Apr, 2023, 12:34:00 PM
    Author     : dell
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String date=request.getParameter("date");
            String Gender=request.getParameter("gen");
            String State=request.getParameter("state");
            
            String s="insert into useregist values(srlno,'"+name+"','"+address+"','"+username+"','"+password+"','"+date+"','"+Gender+"','"+State+"')";
            Class.forName("com.mysql.jdbc.Driver");
            Connection abc=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement stm=abc.createStatement();
            int i=stm.executeUpdate(s);
            if(i>0)
            {
            response.sendRedirect("frontpage.jsp");
            }
            else
            {
                response.sendRedirect("userreg.jsp");
            }
            
            
            
            
                %>
                
        
    </body>
</html>
