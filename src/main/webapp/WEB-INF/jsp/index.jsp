<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head>
    <title>Client List</title>
    <link rel="stylesheet" href="assets/css/Home.css"/>
</head>
<body>
	<h1 class="page-title">Clients Management Dashboard</h1>
    <button class="btn btn-new" onclick="location.href='/addNew'">Add New Client</button>

    <table border="0" cellspacing="0" cellpadding="5">
        <tr>
            <th>ID</th><th>Name</th><th>Email</th><th>Nationality</th><th>Address</th>
            <th>Degree</th><th>Action</th>
        </tr>
      <c:forEach var="client" items="${clients}">
            <tr>
                <td>${client.id}</td>
                <td>${client.name}</td>
                <td>${client.email}</td>
                <td>${client.nationality}</td>
                <td>${client.address}</td>
				<td>${client.degree}</td>
				
                <td>
                    <a href="/view${client.id}"  class="btn btn-view">view Client and Comment</a>
                    <a href="/edit${client.id}" class="btn btn-edit">Edit</a>
                    <a href="/delete/${client.id}" class="btn btn-delete">Delete</a>
					
					
                </td>
				
            </tr>
        </c:forEach> 
    </table>
</body>
</html>
