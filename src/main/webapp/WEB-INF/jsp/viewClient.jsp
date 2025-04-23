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
      
	</div>
	<div class="comment-section">
		<h3>Comments</h3>

		<form action="/client/${client.id}/comment" method="post" style="margin-bottom: 20px;">
		    <textarea name="content" rows="3" class="comment-input" required></textarea>
		    <button type="submit" class="btn-comment">Add Comment</button>
		</form>

		<c:forEach var="comment" items="${comments}">
		    <div class="comment-display">
		        <p >${comment.content}</p>
		        <small class="post-time">Posted on ${comment.createdAt}</small>
				<a href="/comment/${comment.id}/delete?clientId=${client.id}"
				   class="btn-delete-comment"
				   onclick="return confirm('Delete this comment?');">
				   Delete Comment
				</a>
		    </div>
		</c:forEach>
		<button onClick="location.href='/'"  class="btn-back">Back to List</button>	
	</div>
			
</body>
</html>