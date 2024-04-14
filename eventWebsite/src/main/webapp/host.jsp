<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="formstyle.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Event Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg)){
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<div class="wrapper">
<form action="hostAction.jsp" method="post">
<h3>Event Details</h3>
<div class="input-box">
<input type="text" name="name" placeholder="Enter The Event Name" required>
</div>
<div class="input-box">
<input type="text" name="date" placeholder="Enter The Event Date" required>
</div>
<div class="input-box">
<input type="text" name="price" placeholder="Enter Ticket Price" required>
</div>
<div class="input-box">
<input type="text" name="img" placeholder="Enter Event Related Image" required>
</div>
<button type="submit" class="btn">Done</button>
</form>
<h2><a href="home.jsp">Home</a></h2>
</div>
</body>
</html>