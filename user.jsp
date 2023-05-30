<%-- 
    Document   : user
    Created on : 9 May, 2023, 11:21:15 PM
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
                align-items:top;
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
                outline: none;
                border-radius: 6px;
                cursor: pointer;
                font-size: 1.1em;
                color: white;
                font-weight: 500;
                margin-left: 15px;
                transition: .5s;
                margin-bottom: 100px;
                margin-top: 100px;
                
            }
            
            
            .button:hover{
                background-color: white;
                color: black;
                
            }
        </style>
    </head>
    <body>   
        <div class="body">
             <center><h1>Staff_Login</h1></center><hr>  <br><br><br><br><br>     
            <form action="editstaffdb.jsp" method="post">
                <h2><th> STAFF_NAME:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" required></th><br><br><br>
                    <th>PHONE_NO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="phoneno" required maxlength="10"><br><br></th>
                   
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<button class="button">update</form>   
         </h2>     
       
        </div> 
             
             
             
     
        
        
        
        
        
        
        
        
        
        
        
        
        
           
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
