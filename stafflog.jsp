<%-- 
    Document   : stafflog
    Created on : 28 Apr, 2023, 2:16:18 PM
    Author     : dell
--%>

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
            
            .container
            {
                padding: 50px;
                background: transparent;
                color: white;
               
            }
            
  
        </style>
        
    </head>
    <body>
        <div class="container">
            <form action="stafflogdb.jsp" method="post">
                <center> <h1>Staff Login</h1></center><hr>
      
                <h3><label>Staff_Name:</label>
                    <input type="text" name="name"><br><br>
             <label>Staff_Id:</label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="staff_id"><br><br>   
            
        <label>Address:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <textarea rows="10" cols="16" name="address"></textarea>
        <br><br>
        <label>UserName:</label>&nbsp;&nbsp;
       <input type="name" name="username" placeholder="username" required><br><br>
       <label>Password:</label>&nbsp;&nbsp;&nbsp;
       <input type="password" name="password" placeholder="enter password" required><br><br>
       <label>Phone_No:</label>&nbsp;&nbsp;
       <input type="text" name="phoneno" required><br><br>
       <label>Subject:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <select name="subject">
            
        <option value="English">English</option>
            <option value="Hindi">Hindi</option>
            <option value="Malayalam">Malayalam</option>
            <option value="History">History</option>
            <option value="Science">Science</option><br><br><br><br><br>
            
            
           
        </select><br><br>
            <label>Are you working?</label>
            <input type="radio" name="text" value="yes">Yes
            <input type="radio" name="text" value="no">No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="collegename" placeholder="CollegeName"><br><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Register"></form>
        
            </div> 
        
         
</h3> 
                   
    </body>
</html>
