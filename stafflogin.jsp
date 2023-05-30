<%-- 
    Document   : stafflogin
    Created on : 2 May, 2023, 1:18:12 PM
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
            }
            
            
            
              .button
            {
                width:130px;
                height: 50px;
                background: transparent;
                border: 2px solid white;
                outline: auto;
                border-radius: 6px;
                cursor: pointer;
                font-size: 1.1em;
                color: blue;
                font-weight: 500;
                margin-left: 40px;
                transition: .5s;
                
            }
            
            
            .button:hover{
                background-color: blue;
                color: white;
                
            }
            
              
            
            
            
            
        
        
        </style>
        
        
      
        
    </head>
    <body>
        <div class="container">
             <center><h1>Staff Login</h1></center><hr>
             
             <h1>
     <form action="stafflogindb.jsp" method="post">
         <th>Staff Id:&nbsp;&nbsp;&nbsp;&nbsp;<input type="name" name="staff_id" required><br><br></th>
        <th>
            Password:&nbsp;&nbsp;<input type="password" name="password" required></th><br><br>
        
        
           
        <center> <input type="submit" value="Login"></center></form>
            
       
       
         
              
                        <center>  <br><a href="stafflog.jsp">_New Registeration_</a> </center>
    
       
           </h1>     
        
        </div> 
   
             
             
     
        
        
        
        
        
                        
    </body>
</html>
