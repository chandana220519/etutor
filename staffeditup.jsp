

        
        <%-- 
    Document   : staffview
    Created on : 7 May, 2023, 11:20:03 PM
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
           
        String staff_name=request.getParameter("staff_name");
        String address=request.getParameter("address");
        String subject=request.getParameter("subject");
        String phoneno=request.getParameter("phoneno");
       
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etutor","root","");
            Statement st=conn.createStatement();
            String s="update staffregis SET address='"+address+"',subject='"+subject+"' where staff_name='"+staff_name+"'and phoneno='"+phoneno+"'";
            
            int i =st.executeUpdate(s);
           if(i>0)
            {
       
 response.sendRedirect("adminstaffdetailsdb.jsp");
    
           
            }
           else
           {
               response.sendRedirect("adminlog.jsp");
    
           }
            %>
       
        
     
            
       
        
        
    </body>
</html>

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
