<%-- 
    Document   : frontpage
    Created on : 11 May, 2023, 8:52:25 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
         <link rel="stylesheet" href="style.css">
      
        <style>
            
             *
        {
            margin:0;
            padding: 0;
        }
            body{
                display: flex;
                justify-content:center;
                align-items:center;
                min-height: 100vh;
                background: url('blue.jpg')no-repeat;
                background-size: cover;
                background-position:center;
                margin: 110px;
             
            }
     
            
            
            .header
            {
               text-align: center;                   
                position: fixed;
                top: 0;
                left: 0;
                width: 90%;
               /* padding: 20px 100px;*/
                color: white;
                display: flex;
               
                align-items:center;
               margin: 110px;
            }
            
            .logo
            {
                font-size: 35px;
                color: white;
                user-select:none;
                margin: 0;
                position: absolute;
                top:50%;
                transform: translateY(-50%);
                margin:-200px;
                
            }
             .logoo{
            width: 110px;
            position: absolute;
            top: 3%;
            left: 0%;
            background: transparent;
            margin-left: 220px;
            margin-right: 100px;
            margin-top: 20px;
            margin-bottom: 130px;
        }
            
             .center{
                margin: 0;
                position: absolute;
                top:50%;
             }
            
      
          /*  .navigation a {
                position:relative;
                font-size: 0.7em;
                color:white;
                text-decoration: none;
                font-weight: 100;
                margin-left: 100px;
                margin-bottom: 100px;
                
            }
            .navigation a::after 
            {
               content: '';
                position: absolute;
                left: 0;
                bottom: -6px;
                width: 100%;
                height: 2px;
                background: white;
                border-radius: 5px;
                transform-origin: right;
                transform: scaleX(0);
                transition: transform .5s;
            }
            
            
            .navigation a:hover::after {
                transform-origin: left;
                transform: scaleX(1);
            }
            
            
            */
            
            
              .button
            {
                width:120px;
                height: 135px;
                background: transparent;
                border: 2px solid white;
                outline: none;
                border-radius: 6px;
                cursor: pointer;
                font-size: 1.1em;
                color: white;
                font-weight: 500;
                margin-left: 30px;
                transition: .5s;
                position:relative;
                justify-content:space-between;
                margin-top: 190px;
                margin-left: 180px;
               
            }
            
             .button:hover{
                background-color: white;
                color: black;  
            }     
              .banner-text
        {
            text-align: center;
            color: white;
            padding-top: 180px;
            font-size: 35px;
            font-style: oblique;
            font-family: cursive;
        }
        </style>   
    </head>
    <body class="navigation">
        <div class="logo">
        <h2 class="logo"></h2>
        <section class="banner">
        <img src="logo.jpg" class="logoo">
        <h2> <nav class="banner-text">Where Learning Never Ends!!!!!</h2>
        </section>
            </nav>  </div><hr>
                <div class="header"><form action="loginpage.jsp" method="post">
                     <button class="button">User Login
                        </button></form>
                
                <form action="stafflogin.jsp" method="post">
                    <button class="button">Staff_Login
                        </button>
                </form>
                     <form action="adminlogin.jsp" method="post">
                <button class="button">Admin_Login
                    </button>
                     </form></div>
    </body>
</html>
