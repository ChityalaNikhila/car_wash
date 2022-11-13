<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="connection.GetConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="assets/img/logo.png" type="image/icon">
<title>Car World</title>
</head>

<%

try{
	String serviceID=request.getParameter("serviceID");
	
	Connection conn=GetConnection.Establish();
	Statement st=conn.createStatement();
	String query="delete from branch where serviceID='"+serviceID+"'";  
	
    int x=st.executeUpdate(query); 
    
    if(x==1){    
    	response.sendRedirect("serviceget.jsp");
    }
}
catch(Exception ex){
%><h2>
<% out.println(ex);%>
</h2>
<% 
ex.printStackTrace();
}
%>

</body>
</html>