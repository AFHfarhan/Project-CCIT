<%-- 
    Document   : login
    Created on : Apr 6, 2016, 4:47:35 PM
    Author     : Ugi Ispoyo Widodo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

                            <%
                        String user = (String)session.getAttribute("username");
                        if(user != null)
                        {
                            response.sendRedirect("index.jsp");
                        }
                        %>
<html>
<head>
<title>Login Administrator</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Baxster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	
	<link rel="shortcut icon" href="images/Logo.png"/>
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
</head> 
<body class="login-bg">
		<div class="login-body">
			<div class="login-heading">
				<h1>Login Admin & Staff</h1>
			</div>
			<div class="login-info">
            <%
                                    String result = (String)request.getAttribute("return");
                                    if(result != null)
                                    {
                                %>
                                <script language="javascript">alert("<% out.print(result); %>"); window.location = "login.jsp";</script>
                              <% } %>  
                            <form method="POST" action="proses_Login.jsp">
					<input type="text" class="user" name="username" placeholder="Username.." required="">
					<input type="password" name="password" class="lock" placeholder="Password..">
					<input type="submit" name="Sign In" value="Login">
				</form>
			</div>
		</div>
    <br>
    <br>
</body>
</html>