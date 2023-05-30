<%-- 
    Document   : adminloginnn
    Created on : 11 May, 2023, 12:42:11 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
      
     <style>
         body{
                display: flex;
                justify-content:center;
                align-items:center;
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
                padding: 20px 100px;
                
                display: flex;
                justify-content:space-between;
                align-items:center;
                z-index: 99;
            }
            
            .logo
            {
                font-size: 2em;
                color: white;
                user-select:none;
            }
              
        
        .container
            {
                padding: 50px;
                background-color: transparent;
                margin-top: 30px;
            }
            
            
            
              .button
            {
                width:150px;
                height: 50px;
                background: transparent;
                border: 2px solid white;
                outline: none;
                border-radius: 6px;
                cursor: pointer;
                font-size: 1.1em;
                color: white;
                font-weight: 500;
                margin-left: 85px;
                transition: .5s;
                margin-top: 90px;
                
            }
            
            
            .button:hover{
                background-color: white;
                color: black;
                
            }
            
          
        
        </style> 
    </head>
    <body>
        <div class="header">
            <u><h1>Admin Login</h1></u>
                    
             </div>
     
        <div class="container">
            <form action="edituserdb.jsp" method="post">
                <h2>Name:&nbsp;&nbsp;&nbsp;&nbsp;<input type="name" name="name" required><br><br>
            DOB:&nbsp;&nbsp;<input type="date" name="date" required><br><br></h2>
        
            
                <button class="button">VIEW</button></div>
            </form>
        
       
    </body>
</html>
