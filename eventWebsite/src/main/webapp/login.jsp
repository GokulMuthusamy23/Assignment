
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="formstyle.css">
<title>Login</title>
</head>
<body>
  <div class="wrapper">
     <h3>LogIn</h3>
     <form action="loginAction.jsp" method="post">
     <div class="input-box">
     <input type="email" name="email" placeholder="Enter Email" required/>
     </div>
     <div class="input-box">
     <input type="password" name="password" placeholder="Enter Password" required/>
     </div>
     <button type="submit" class="btn">Login</button>
     </form>
      <h2><a href="signUp.jsp">SignUp</a></h2>
  </div>
  <%
  String msg = request.getParameter("msg");
  if("invalid".equals(msg)){
	  %>
	  <h1>Some thing Went Wrong! Try Again !</h1>
 <% }
  %>
 

</body>
</html>