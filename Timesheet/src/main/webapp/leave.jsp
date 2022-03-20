<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <form >

	<h2>Leave Request List</h2>

	<table border="1" >
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>PROJECT</th>
			<th>EMAIL</th>
			<th>PHONE</th>
            <th>LEAVE DATE</th>
            <th>REASON</th>
            <th>STATUS</th>
		</tr>
		<c:forEach var="employee" items="${us}">
			<tr>
				<td>${employee.username}</td>
				<td>${employee.name}</td>
				<td>${employee.project}</td>
				<td>${employee.email}</td>
				<td>${employee.phone}</td>
		        <td>${employee.date}</td>
		        <td>${employee.reason}</td>
		        <td>${employee.status}</td>
		        <td><a href="/status?username=${employee.no}">Approve/Decline</a></td>
			</tr>
		</c:forEach>
	</table>
    </form>
</body>
</html>