<%@page import="java.sql.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobilenumber = request.getParameter("mobilenumber");
String password = request.getParameter("password");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eve","root","123456");
	PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobilenumber);
	ps.setString(4, password);
	ps.executeUpdate();
	response.sendRedirect("signUp.jsp?msg=valid");
}
catch(Exception e){
	out.println(e);
	response.sendRedirect("signUp.jsp?msg=invalid");
}
%>