<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head><title>Client Form</title></head>
<body>
    <h2>${client.id == 0 ? 'Add New Client' : 'Edit Client'}</h2>
    <form action="/save" method="post">
        <input type="hidden" name="id" value="${client.id}" />
        <label>Name:</label><input type="text" name="name" value="${client.name}" required /><br/>
        <label>Email:</label><input type="email" name="email" value="${client.email}" required /><br/>
        <label>Nationality:</label><input type="text" name="nationality" value="${client.nationality}" required /><br/>
        <label>Address:</label><input type="text" name="address" value="${client.address}" required /><br/>
        <label>Degree:</label><input type="text" name="degree" value="${client.degree}" required /><br/>
        <button type="submit">Save</button>
        <button onclick="location.href='/'" type="button">Cancel</button>
    </form>
</body>
</html>
