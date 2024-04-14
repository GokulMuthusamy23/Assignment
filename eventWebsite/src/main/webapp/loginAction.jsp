
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
			try {
				int z=0;
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eve","root","123456");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");
				while(rs.next()) {
					z=1;
					session.setAttribute("email", email);
					response.sendRedirect("home.jsp");
				}
			}
			catch(Exception e) {
				out.println(e);
				response.sendRedirect("login.jsp?msg=invalid");
			}
			
		%>