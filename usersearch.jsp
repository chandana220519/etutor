<%-- 
    Document   : usersearch
    Created on : 2 May, 2023, 3:47:34 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <Style>
            
            
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
                align-items:top;
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
                padding: 150px;
                background-color: transparent;
                text-align:center;
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
            
              
            
            
        
        
    
            
            
            
            
            
            
            .form{
                
                width: 900px;
                height:50px;
                border-radius: 5px;
                display: flex;
                flex-direction:row;
                align-items:bottom;
            }
          /*  .search input
            {
                width: 100px;
                height: 25px;
                border-radius: 25px;
                border: none;
            }
            
             .search{
                 position: absolute;
                 top: 355px;
                 left: 575px;
                float: right;
                margin: 100px;
            }
             .search button
             {
                 float: right;
                 padding: 5px 10px;
                 margin-right: 16px;
                 font-size: 12px;
                 border: none;
                 cursor: pointer;
             }
        */
        
        
        </style>
        
    </head>
        
  
    <body>
        <div class="body">
            <center><h1>USER LOGIN</h1></center><hr><br>
             
        <form action="usersearchdb.jsp" method="post">
            <br><br> <br><br><br><br><br><br><br><br><form id="form" role="search">
                
            <input type="text" name="jtextfield"style='color:black; font-family:cursive;' size="50" placeholder="search.....">
           
               <button>Search</button></form>
            
        </div>
</form>
            
            
            
            
    </body>
</html>
