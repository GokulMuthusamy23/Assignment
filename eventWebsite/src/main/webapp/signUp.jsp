<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="formstyle.css">
<title>Signup</title>
</head>
<body>
  <div class="wrapper">
  <h3>Sign Up </h3>
  <form action="signupAction.jsp" method="post">
  <div class="input-box">
  <input type="text" name="name" placeholder="Enter Name" required/>
  </div>
  <div class="input-box">
  <input type="text" name="email" placeholder="Enter Email" required/>
  </div>
  <div class="input-box">
  <input type="text" name="mobilenumber" name="mobilenumber" placeholder="Enter Mobil Number" required/>
  </div>
  <div class="input-box">
  <input type="password" name="password" placeholder="Enter Password" required/>
  </div>
  <button type="submit"  class="btn">SignUp</button>
  </form>    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
    <%
  String msg = request.getParameter("msg");
  if("valid".equals(msg)){%>
	  <h2>Successfully Registered</h2>
 <%}
  %>
 <%if("invalid".equals(msg)){
	 %> 
	 <h1>Some thing Went Wrong! Try Again !</h1>
<% }%> 

</body>
</html>