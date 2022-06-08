<%@page import="com.ty.dto.Applicant"%>
<%@page import="java.util.List"%>
<%@page import="com.ty.service.ApplicantService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>WELCOME TO APPLICANTS DETAILS</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Age</th>
			<th>Gender</th>
			<th>PUC</th>
		</tr>

		<%
		List<Applicant> applicants = (List<Applicant>) request.getAttribute("hello");
		%>

		<%
		for (Applicant applicant : applicants) {
		%>

		<tr>
			<th><%=applicant.getId()%></th>
			<th><%=applicant.getName()%></th>
			<th><%=applicant.getEmail()%></th>
			<th><%=applicant.getPhone()%></th>
			<th><%=applicant.getAge()%></th>
			<th><%=applicant.getGender()%></th>
			<th><%=applicant.getPuc() %></th>
		</tr>

		<%
		}
		%>
	</table>
</body>
</html>
