<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="eventWebsite.eventDao"%>
<%@page import="eventWebsite.event"%>



<%
eventDao ed = new eventDao();
List<event>events = ed.getAllEvents();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript"></script>
</head>
<body>
   <h2 class="eventhead">Events <span>List</span></h2>
   <% 
   if(!events.isEmpty()){
	   for(event e:events){%>
	<div class="card-container">
	 <div class="card">
	  <img src="img/<%=e.getImage()%>" class="image">
	  <div class="card-content">
	    <h2 class="name"><%=e.getName() %></h2>
	    <h3 class="date"><%=e.getDate() %></h3>
	    <h3 class="price">$<%=e.getPrice() %></h3> 
	    <div class="content"> 
	    <span class="heart" id="btnh" onclick="Toggle()"><i class='bx bxs-heart'></i></span> 
	    </div>
	  </div> 
	 </div>
	</div>
	<%}} %>
	
	 <script>
	  var heart = document.getElementById("btnh");
	   function Toggle(){
		  if(heart.style.color == "red"){
				 heart.style.color = "grey"
			 }
			 else{
				 heart.style.color = "red"	 
			 }
		 }
	 
      
    </script>
	
</body>
</html>