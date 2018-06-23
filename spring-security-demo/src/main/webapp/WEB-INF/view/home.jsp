<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

	<!-- Add a logout button -->
	
	<form:form action="${pageContext.request.contextPath}/logout" 
				method="POST">
				
				<input type="submit" value="Logout"/> 
	</form:form>


</body>

</html>