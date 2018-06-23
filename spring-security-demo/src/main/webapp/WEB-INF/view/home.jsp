<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>Evil Ltd. Home Page</title>
</head>

<body>
	<h2>Evil Ltd. Company Home Page</h2>
	<hr>
	
	<p>
	Welcome to the Evil Ltd. home page!
	</p>

<hr>
<!-- Display user name and role -->
	<p>
	
			User: <security:authentication property="principal.username"/>
			<br><br>
			Role(s): <security:authentication property="principal.authorities"/>
	
	</p>

<hr>
	<!-- Add a link to /leaders .. for the managers -->
	<p>
	
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		(Only for Manager)
	
	</p>

	<!-- Add a link to /systems .. only for the admins -->
	<p>
	
		<a href="${pageContext.request.contextPath}/systems">Leadership Meeting</a>
		(Only for Manager)
	
	</p>


<hr>

	<!-- Add a logout button -->
	
	<form:form action="${pageContext.request.contextPath}/logout" 
				method="POST">
				
				<input type="submit" value="Logout"/> 
	</form:form>


</body>

</html>