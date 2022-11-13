<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car World</title>
<link rel="icon" href="assets/img/logo.png" type="image/icon">
<link rel="stylesheet" href="css styles.css">
<style>
    body, html {
      height: 100%;
      margin: 0;
    }
    
    * {
      box-sizing: border-box;
    }
    .bg-text {
        background-color: #002a77;
        opacity: 0.9;
        color: white;
        font-weight: bold;
        border: 3px solid #f1f1f1;
        position: absolute;
        top:50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 2;
        width: 45%;
        height:45%;
        padding: 50px;
        text-align: center;
    }
      </style>
</head>
<body>
    <header>
        <div class="gradient">
          <div class="container">
            <h2 id="logo"><a href="Home.jsp"> Car World </a></h2>	
            <nav>
              <a href="Home.jsp" class="menu_link active"> Welcome </a>
              <a href="Home.jsp" class="menu_link"> About </a>
              <a href="User_Login.jsp" class="menu_link">User Login</a>
              <a href="Admin_Login.jsp" class="menu_link">Employee Login </a>
              <a href="Home.jsp" class="menu_link"> Contact </a>
            </nav>
          </div>
        </div>
        <div class="welcome_container">
            <h2 style="font-size: 40px;"><a href="placeget.jsp" style="color: white;">Add Places</a></h2>
            <span class="symbol"> &#10059; </span>
            <h2 style="font-size: 40px;"><a href="serviceget.jsp" style="color: white;">Add Services</a></h2>
            <span class="symbol"> &#10059; </span>
            <h2 style="font-size: 40px;"><a href="requestGet.jsp" style="color: white;">Requests for booking</a></h2>
            <span class="symbol"> &#10059; </span>
            <h2 style="font-size: 40px;"><a href="appointmentGet.jsp" style="color: white;">Appointments</a></h2>
        </div>
    </header>
    </body>
</html>