<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>           
<%@ page isELIgnored="false" %>

<html>
<body>
<h2>Simple JSP Form</h2>


<ul>
	<c:if test="${not empty form.firstName}">
		<li><p><b>First Name:</b>
		   <c:out value="${form.firstName}"></c:out>
		</p></li>
	</c:if>
	<c:if test="${not empty form.lastName}">
		<li><p><b>Last  Name:</b>
		   <c:out value="${form.lastName}"></c:out>
		</p></li>
	</c:if>
</ul>


<form:form method="post" commandName="form" action="hello">
	First Name: <form:input path="firstName" />
	<br />
	Last Name: <form:input path="lastName" />
	<input type="submit" value="Submit" />
</form:form>

</body>
</html>
