<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" type="text/css" href="css/opensans-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/line-awesome/css/line-awesome.min.css">
	<!-- Jquery -->
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/style.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <%--Linking menu bar jsp file--%>
<%@include file="menubar.jsp"%>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String fn = request.getParameter("fn");
String ln = request.getParameter("ln");
String email = request.getParameter("email");
String inquiry = request.getParameter("inquiry");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "citycabs";
String userId = "root";
String password = "200030303487";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>



<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM contactus where firstname='"+fn+"' AND lastname='"+ln+"' AND email='"+email+"' AND inquiry='"+inquiry+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<body class="form-v4">
	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>City Cabs</h2>
				<img src="images/checkmark.gif" alt="Girl in a jacket" width="320" height="280">
				
				<p class="text-2">You've successfully submitted a ticket. Our agent will contact you as soon as possible.<br> <br> <span>Want to submit an another ticket?</span></p>
				<div class="form-left-last">
				<a href="contactus.jsp" class="register" >
				<input type="submit" name="account" class="account" value="Submit New Ticket"/>
      			</a>
				</div>
			</div>



<form class="form-detail" action="updatecontactus" method="post">
				<input type="hidden" value="<%=resultSet.getString("contactid")%>" name="contactid"/>
				<h2 style="color:#fdc315;">Submitted Successfully!</h2>
				<div class="form-group">
					<div class="form-row form-row-1">
						<label for="first_name">First Name</label>
						<input type="text" name="first_name" class="input-text" value="<%=resultSet.getString("firstname")%>">
					</div>
					
					<div class="form-row form-row-1">
						<label for="last_name">Last Name</label>
						<input type="text" name="last_name" class="input-text" value="<%=resultSet.getString("lastname")%>">
					</div>
				</div>
				
				<div class="form-row">
				 	<label for="your_email">Your Email</label>
					<input type="text" name="your_email" class="input-text" value="<%=resultSet.getString("email")%>">
				</div>
				
				<div class="form-row">
					<label for="inquiry">Enter your inquiry</label>
					<input style="width:400px; height:250px;" type="text" name="inquiry" class="input-text" value="<%=resultSet.getString("inquiry")%>">
				</div>
				
				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Update Ticket">
				</div>
				
				<div class="form-row-last">
				<a href="deletecontactus?contactid=<%= resultSet.getString("contactid")%>" class="register" >
				<input type="button" class="register" value="Delete Ticket"/>
      			</a>
                </div>    
                
                
		
			</form>




<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>


</body>
</html>