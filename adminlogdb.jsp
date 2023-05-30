<%-- 
    Document   : adminlogdb
    Created on : 12 May, 2023, 11:05:11 AM
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
             String admin_id=request.getParameter("admin_id");
             String password=request.getParameter("password");
             
             
            try {
                
           
             Class.forName("com.mysql.jdbc.Driver");
            Connection  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
               
           
          if(admin_id.equals("1234")&&password.equals("chandu"))
             {
                 response.sendRedirect("staffview.jsp");
             }
             else if(!admin_id.equals("1234")&&(!password.equals("chandu")))
             {
                
               RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp");
                 
                
               rd.forward(request, response);
             
                
            } 
            }
            catch (Exception e) {
                
               
                
            }
         %>     
 
            
    </body>
</html>
