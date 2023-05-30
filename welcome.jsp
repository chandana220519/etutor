<%-- 
    Document   : welcome
    Created on : 11 May, 2023, 9:01:10 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">                                                     
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet"></script>
    
    </head>
    <style>
        *
        {
            margin:0;
            padding: 0;
        }
        .banner
        {
            background: url(blue.jpg);
            background-size: cover;
            background-position: center;
           min-height: 100vh;
           
            
        }
        .logo{
            width: 75px;
            position: absolute;
            top: 2%;
            left: 1%;
            background: transparent;
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
        
        .button{
            margin: 90px auto 0;
        }
            .button a{
                
            
            width: 180px;
            display: inline-block;
            margin: 0 20px;
            padding: 10px 0;
            color: white;
            border: .7px solid white;
            margin-bottom: 100px;
            position: relative;
            z-index: 1;
            text-decoration: none;
            transition: color .5s;
            font-style:  initial;
            }
      .button a span
            {
                width: 45%;
                height: 100%;
                position: absolute;
                z-index: -1;
                top: 0;
                left: 0;
                background: lightskyblue;
                transition: .5s;
                text-decoration: none;
            }
        
             .button a:hover span
             {
                 width: 100%;
                 
             }
        .navigation
        {
            width: 220px;
            height: 100vh;
            position: fixed;
            right: -0px;
            top: 0;
            z-index: 2;
             text-decoration: none;
            color: white;
            background: transparent;
            transition: .5s;
            
            
        }
        nav ul li
        {
            list-style: none;
            margin: 50px 20px;
               text-decoration: none;
            color: white;
            font-size: 15px;
        }
        nav ul li a{
            text-decoration: none;
            color: white;
        }
        
        .menubtn
        {
            width: 50px;
            height: 50px;
            background: transparent;
            text-align: center;
            position: fixed;
            right: 30px;
            top: 20px;
            border-radius: 3px;
            z-index: 3;
            cursor: pointer;
        }
        .menubtn img{
            width: 35px;
            margin-top: 15px;
            background: transparent;
        }
        .dropdown-menu{
            background: transparent;
            color: white;
        }
        .menu{
            
            width: 50px;
            height:50px;
            color: white;
                
        }
    </style>
    <body>
        <section class="banner">
            <img src="logo.jpg" class="logo">
            <div class="banner-text">
                <h1>Strive for Progress&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; not Perfection</h1>
                <div class="button">
                    <a href="frontpage.jsp"><span></span>Find Out</a>
                     
            </div>
        </section>
        <div class="navigation">
            <nav>
                    <div class="btn-group">
              
            <ul class="dropdown-menu">
                    <li><a href="#" class="dropdown-item"><b>Home</b></a></li>
                    <li><a href="#" class="dropdown-item"><b>About Us</b></a></li>
                    <li><a href="#" class="dropdown-item"><b>Contact Us</b></a></li>
            </ul>
            </nav>
        
        <div class="btn btn-outline-primary dropdown-toggle btn-sm" data-bs-toggle="dropdown">
            <img src="menu.png" class="menu" >
        </div></div>
        <script>
           
        </script>
    </body>
</html>
