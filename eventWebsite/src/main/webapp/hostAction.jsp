<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String date=request.getParameter("date");
String price = request.getParameter("price");
String image = request.getParameter("img");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eve","root","123456");
	PreparedStatement ps=con.prepareStatement("insert into events values(?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, date);
	ps.setString(3, price);
	ps.setString(4, image);
	ps.executeUpdate();
	response.sendRedirect("host.jsp?msg=done");
}
catch(Exception e) {
	response.sendRedirect("host.jsp?msg=wrong");
}



%>