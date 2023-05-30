<%-- 
    Document   : stafflogindb
    Created on : 12 May, 2023, 11:51:54 AM
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
    </head>
    <body>
          <%   
             String staff_id=request.getParameter("staff_id");
             String password=request.getParameter("password");
             
             
            try {
                
             String s="select * from staffregis where staff_id='"+staff_id+"' and password='"+password+"'";
             Class.forName("com.mysql.jdbc.Driver");
            Connection  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
              ResultSet rs= st.executeQuery(s);
              if(rs.next())
              {
        if(staff_id.equals(rs.getString("staff_id"))&&password.equals(rs.getString("password")))
             {
                 response.sendRedirect("adminstaffdetailsdb.jsp");
             }
       
              }
                    else
        {
                
             
                response.sendRedirect("stafflogin.jsp");
             
        }
              }catch (Exception e) {
                
                    }  
               
            
         %>     
    </body>
</html>
