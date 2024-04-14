<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@page import="eventWebsite.eventDao"%>
<%@page import="eventWebsite.event"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
	<%
	int z = 0;
	try {
		String search = request.getParameter("search");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eve","root","123456");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from events where name like '%" + search + "%' or price like '%" + search + "%' ");
		while (rs.next()) {
			z = 1;
	%>

	<div class="card-container">
		<div class="card">
			
			<div class="card-content">
				<h2><%=rs.getString(1)%></h2>
				<h3><%=rs.getString(2)%></h3>
				<h3>
					$<%=rs.getString(3)%></h3>
				<div class="content">
					<span class="heart" id="btnh" onclick="Toggle()"><i
						class='bx bxs-heart'></i></span>
				</div>
			</div>
		</div>
	</div>
	<%
	}
	} catch (Exception e) {
	}
	%>
	</tbody>
	</table>
	<%
	if (z == 0) {
	%>
	<h1 style="color: white; text-align: center;">Nothing to show</h1>
	<%
	}
	%>
	<br>
	<br>
	<br>
	<div class="footer">
		<p>All right reserved by BTech Days</p>
	</div>

</body>
</html>