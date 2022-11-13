<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title >Car World</title>
<link rel="icon" href="assets/img/logo.png" type="image/icon">
<link rel="stylesheet" href="css styles.css">
<script>
    function validate() {
        var branchID=document.forms.RegForm.branchID.value;
        var branchName=document.forms.RegForm.branchName.value;
        var reg1=/^\d$/;						

        if (branchName== "" || reg1.test(branchName)) {
            window.alert("Please enter branchName properly.");
            branchName.focus();
            return false;
        }
        if (branchID== "" || reg1.test(branchID)) {
            window.alert("Please enter branchID properly.");
            branchID.focus();
            return false;
        }
        }
        
       alert("Place has been added successfully");
        

        return true;
    }
</script>

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
<form name="RegForm" action="add place db.jsp" method="post">
<table align="center" cellpadding="10%" cellspacing="20%" width="50%",height="50%">
    <p style="text-align: center;font-size: larger;">ADD PLACE</p>
<tr>
    <td ><label for="branchID"style="color: white;">Branch Id</label></td>
<td><input type="text" name="branchID"required></td>
</tr>
<tr>
    <td ><label for="branchName"style="color: white;">Branch Name</label></td>
<td><input type="text"name="branchName"required></td>
</tr>
<tr>
    <td colspan="2" align="center"><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
</div>
</body>
</html>