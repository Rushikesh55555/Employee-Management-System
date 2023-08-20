<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-6 mx-auto my-3">
			<div class="card">
				<div class="card-header">
					<h3>Add An Employee</h3>
					<p>
					<%= request.getAttribute("msg")!=null ? request.getAttribute("msg") : "" %>
					</p>
				</div>
				<div class="card-body">
					<form action="/add" method="post">
						<div class="mb-1">
							<label>Name</label>
							<input type="text" name="name" class="form-control" required>
						</div>
						<div class="mb-1">
							<label>Gender</label>
							<input type="radio" name="gender" value="Male" required> Male
							<input type="radio" name="gender" value="Female" required> Female
						</div>
						<div class="mb-1">
							<label>DOB</label>
							<input type="date" name="dob" class="form-control" required>
						</div>
						<div class="mb-1">
							<label>Mobile</label>
							<input type="text" name="mobile" class="form-control" required>
						</div>
						<div class="mb-1">
							<label>Email</label>
							<input type="email" name="email" class="form-control" required>
						</div>
						<div class="mb-1">
							<label>Address</label>
							<textarea rows="5" cols="20" class="form-control" name="address" required>
							</textarea>
						</div>
						<input type="submit" value="ADD" class="btn btn-dark w-100">
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>