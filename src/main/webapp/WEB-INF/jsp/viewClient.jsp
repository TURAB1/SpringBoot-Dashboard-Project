<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head>
	<title>View Client</title>
	<link rel="stylesheet" href="assets/css/viewClient.css"/>
	
</head>
<body>
	
	<div class="details-container">
	    <h2>Client Details</h2>
	    <p><span class="label">ID:</span> ${client.id}</p>
	    <p><span class="label">Name:</span> ${client.name}</p>
	    <p><span class="label">Email:</span> ${client.email}</p>
	    <p><span class="label">Nationality:</span> ${client.nationality}</p>
	    <p><span class="label">Address:</span> ${client.address}</p>
	     <p><span class="label">Degree:</span> ${client.degree}</p>
        <button onClick="location.href='/'"  class="btn-back">Back to List</button>
	</div>	
</body>
</html>