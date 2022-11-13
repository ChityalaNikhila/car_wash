<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
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
<body>
<%!String str; %>

<%

try{
	String serviceID=request.getParameter("serviceID");
	String serviceName=request.getParameter("serviceName");
	String area=request.getParameter("area");
	String branchID=request.getParameter("branchID");
	String branchName=request.getParameter("branchName");
	
	Connection conn=GetConnection.Establish();
	Statement st=conn.createStatement();
	
	String query="insert into branch(serviceID,serviceName,area,branchID,branchName) values (?,?,?,?,?)";    
	PreparedStatement pstmt=conn.prepareStatement(query);
	
	pstmt.setString(1, serviceID);    
	pstmt.setString(2, serviceName);    
	pstmt.setString(3, area);    
	pstmt.setString(4, branchID);    
	pstmt.setString(5, branchName);
    int x=pstmt.executeUpdate(); 
    
    if(x==1){    
    	response.sendRedirect("serviceget.jsp");    
    	}    
    }

catch(Exception ex){
%><h2>
<% out.println("service already exists");%>
</h2>
<% 
ex.printStackTrace();
}
%>

</body>
</html>