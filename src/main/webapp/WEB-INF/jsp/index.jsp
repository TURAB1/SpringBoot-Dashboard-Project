<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head>
    <title>Client List</title>
    <style>
        .status-perm { background: gold; padding: 2px 8px; border-radius: 4px; }
        .status-inactive { background: #ccc; padding: 2px 8px; border-radius: 4px; }
        .status-lead { background: #5cb85c; padding: 2px 8px; border-radius: 4px; color: #fff; }
    </style>
</head>
<body>
    <button onclick="location.href='/addNew'">Add New Client</button>
    <table border="1" cellspacing="0" cellpadding="5">
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
                    <a href="/view/${client.id}">Details</a>
                    <a href="/edit/${client.id}">Edit</a>
                    <a href="/delete/${client.id}">Delete</a>
                </td>
            </tr>
        </c:forEach> 
    </table>
</body>
</html>
