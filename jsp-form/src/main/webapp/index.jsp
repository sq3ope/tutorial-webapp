<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<body>
<h2>Simple JSP Form</h2>

<c:if test="${not empty param.first_name}">
	<ul>
		<li><p><b>First Name:</b>
		   <c:out value="${param.first_name}"></c:out>
		</p></li>
		<li><p><b>Last  Name:</b>
		   <c:out value="${param.last_name}"></c:out>
		</p></li>
	</ul>
</c:if>

<form action="index.jsp" method="POST">
	First Name: <input type="text" name="first_name">
	<br />
	Last Name: <input type="text" name="last_name" />
	<input type="submit" value="Submit" />
</form>

</body>
</html>
