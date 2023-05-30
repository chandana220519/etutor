<%-- 
    Document   : adminlog
    Created on : 2 May, 2023, 11:49:51 PM
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
                text-align: center;
                
                position: fixed;
                top: 0;
                left: 0;
                height:200px;
                padding-top: 100px;
                width: 90%;
               /* padding: 20px 100px;*/
                color: white;
                display: flex;
                justify-content:space-between;
                align-items:center;
                margin: 110px;
            
            }
            
             .button
            {
                width:180px;
                height: 135px;
                background: transparent;
                border: 2px solid white;
                outline: none;
                border-radius: 6px;
                cursor: pointer;
                font-size: 25px;
                color: white;
               
                transition: .5s;
                position: relative;
                text-align:center;
               
                
                
            }
            
             .button:hover{
                background-color: white;
                color: black;
              
                
            }   
            
       
         </style>
        
       
    </head>
    <body>
    
        <header class="header">
        <br>
        </header><br><br>
    <u> <h1 class="h1"><b>ADMIN LOGIN</b></h1><br><br><br><br><br><br><br><br><br></u>
        
        <div class="header">
            
           
            <form action="adminstaffdetailsdb.jsp" method="post">
                <button class="button">STAFF-VIEW</button></form>
            <b> ------------></b>
             <form action="staffview.jsp" method="post">
                 <button class="button">UPDATE</button></form>
             <form action="userdetails.jsp" method="post">
             <button class="button">USER-VIEW</button></form>
        <b> -----------></b>
        <form action="userview.jsp" method="post">
            <button class="button">UPDATE</button></form>
        </div>
        
    </body>
</html>
