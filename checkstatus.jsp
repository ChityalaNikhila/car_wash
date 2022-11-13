<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="assets/img/logo.png" type="image/icon">
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
  width: 45%;
  height:40%;
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
<form action="getstatus.jsp">
<table align="center" style="padding-top: 20px;padding-bottom: 40px;padding-left: 40px;padding-right: 40px;" cellspacing="20px">
<th style="text-align:center" colspan="2"><h1>REQUEST STATUS</h1></th>
<tr>
<td>email :</td>
<td> <input type="text" name="email"></td>
</tr>
<td style="text-align:center" colspan="2"><input type="submit" name="search" value="Search"></td>
</tr>
</table>
</form>
</div>
</body>
</html>