<%-- 
    Document   : userreg
    Created on : 28 Apr, 2023, 11:49:01 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>  <style>
           
            
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
            <center><h1>REGISTERATION PAGE</h1></center><hr>
    <form action="userregdb.jsp" method="post">
    <h3>
        <label>Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="text" name="name"><br><br>
        
           <label> Address:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <textarea rows="10" cols="15" name="address"></textarea> 
        <br><br>
        <label>Username:</label>&nbsp;&nbsp;
        <input type="name" name="username" required><br><br>
        
        <label> Password:</label>&nbsp;&nbsp;&nbsp;
        <input type="password" name="password" required><br><br>
        <label> DOB:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="date" name="date"><br><br>
        <label> Gender:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="gen" value="male">Male
            &nbsp;&nbsp;<input type="radio" name="gen" value="female">Female<br><br>
            <label>State:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select name="state">
        <option value="Kerala">Kerala</option>
            <option value="TamilNadu">Tamil Nadu</option>
            <option value="AndhraPradesh">Andhra Pradesh</option>
            <option value="Rajasthan">Rajasthan</option>
            <option value="Gujarat">Gujarat</option>  
            </select><br><br>
             <br>  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Register">   </div>       
           </h3>     
        </form>
    
    </body>
</html>
