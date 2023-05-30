<%-- 
    Document   : userlogindb
    Created on : 12 May, 2023, 9:17:13 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
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
             String username=request.getParameter("username");
             String password=request.getParameter("password");
             
             
            try {
                
             String s="select * from useregist where username='"+username+"' and password='"+password+"'";
             Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
              ResultSet rs= st.executeQuery(s);
              if(rs.next())
              {
        if(username.equals(rs.getString("username"))&&password.equals(rs.getString("password")))
             {
                 response.sendRedirect("usersearch.jsp");
             }
          
              }
                 else
        {
                
             
                response.sendRedirect("loginpage.jsp");
             
        }
              }catch (Exception e) {
                
                    }  
               
            
         %>     
    </body>
</html>
