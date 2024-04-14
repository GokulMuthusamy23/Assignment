<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<%String email= session.getAttribute("email").toString(); %>
   <ul>
   <li><h3>eventbrite</h3></li>
    <li>
    <form action="search.jsp" method="post">
    <input type="text" name="search" size="90" placeholder="Search For Events">
    <button type="submit"><i class='bx bx-search-alt-2'></i></button>
    </form>
    </li>
   <li><a href="home.jsp">All Events </a></li>
   <li><a href="host.jsp">Host an Event </a></li>
   <select class="dropdown">
   <option value="Help">Help</option>
   <option value="FYT">Find your Tickects</option>
   </select>
   <h3><a href="logout.jsp"><%out.println(email); %></a></h3>
   </ul>
   
    

</body>
</html>