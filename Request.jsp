<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/img/logo.png" type="image/icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car World</title>
    <link rel="stylesheet" href="css styles.css">
  <style>
body, html {
  height: 100%;
  margin: 0;
}

* {
  box-sizing: border-box;
}

.bg-image {
  background-image: url("assets/img/imgtry/p2.jpg");
  filter: blur(4px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
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
  width: 29%;
  height:70%;
  padding: 50px;
  text-align: center;
}
  </style>
<script>
    function validate() {
        var fname =document.forms.RegForm.fname.value;
        var lname =document.forms.RegForm.lname.value;
        var email =document.forms.RegForm.email.value;
        var contact =document.forms.RegForm.contact.value;
        var serviceName=document.forms.RegForm.serviceName.value;
        var regEmail=/^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/g; 
        var regPhone=/^\d{10}$/;									 
        var regName = /\d+$/g;						

        if (fname== "" || regName.test(fname)) {
            window.alert("Please enter your name properly.");
            fname.focus();
            return false;
        }
        if (lname== "" || regName.test(lname)) {
            window.alert("Please enter your name properly.");
            lname.focus();
            return false;
        }
        
        if (email == "" || !regEmail.test(email)) {
            window.alert("Please enter a valid e-mail address.");
            email.focus();
            return false;
        }
        
       
        if (contact == "" || !regPhone.test(contact)) {
            alert("Please enter valid phone number.");
            contact.focus();
            return false;
        }
       alert("Your request has been submitted successfully");
        

        return true;
    }
</script>
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
        </header>
<div class="bg-text">
<form name="RegForm" onsubmit="return validate()" action="Request to db.jsp">
    <table align="center" cellpadding="10%" cellspacing="20%" width="50%",height="50%">
<th style="text-align:center" colspan="2"><h1  style="color:white">APPOINTMENT BOOKING</h1></th>
<tr>
    <td ><label for="fname" style="color: white;">First&nbspName</label></td>

<td> <input type="text" name="fname" required></td>
</tr>
<tr>
    <td ><label for=lname" style="color: white;">Last Name</label></td>
<td> <input type="text" name="lname" required></td>
</tr>
<tr>
    <td ><label for="email"style="color: white;">Email</label></td>
<td><input type="text" name="email" required></td>
</tr>
<tr>
    <td ><label for="contact"style="color: white;">Contact</label></td>
<td><input type="text" name="contact" required></td>
</tr>
<tr>
    <td ><label for="branchName"style="color: white;">Branch Name</label></td>
<td><input type="text" name="branchName" required></td>
</tr>
<tr>
    <td ><label for="serviceName"style="color: white;">Service</label></td>
<td><input type="text" name="contact" required></td>
</tr>
<tr>
    <td ><label for="dateTime"style="color: white;">Date and Time</label></td>
<td><input type="datetime-local" name="contact" required></td>
</tr>
<tr>
<td style="text-align:center" colspan="2"><input type="submit" name="request" value="Request"></td>
</tr>
</table>
</form>
</body>
</html>