<%-- 
    Document   : stafflogdb
    Created on : 28 Apr, 2023, 3:22:59 PM
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
    <%      String staff_id=request.getParameter("staff_id");
            String staff_name=request.getParameter("name");  
            String address=request.getParameter("address");
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String subject=request.getParameter("subject");
            String working=request.getParameter("text");
            String college=request.getParameter("collegename");
            String phoneno=request.getParameter("phoneno");
            String s= "insert into staffregis values(srlno,'"+staff_id+"','"+staff_name+"','"+address+"','"+username+"','"+password+"','"+subject+"','"+working+"','"+college+"','"+phoneno+"')";
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
               
                response.sendRedirect("stafflog.jsp");
            }
    
            
                %>
                
    </body>
</html>
