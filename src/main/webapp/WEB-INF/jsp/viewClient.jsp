<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head><title>View Client</title></head>
<body>
    <h2>Client Details</h2>
    <p><strong>ID:</strong> ${client.id}</p>
    <p><strong>Name:</strong> ${client.name}</p>
    <p><strong>Email:</strong> ${client.email}</p>
    <p><strong>Nationality:</strong> ${client.nationality}</p>
    <p><strong>Address:</strong> ${client.address}</p>
    <p><strong>Degree:</strong> ${client.degree}</p>
    <button onClick="location.href='/'">Back to List</button>
</body>
</html>