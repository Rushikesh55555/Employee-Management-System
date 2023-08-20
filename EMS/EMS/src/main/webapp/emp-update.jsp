<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ems.pojo.Employee" %>
<%@ include file="nav.jsp"%>
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
						<h3>Update Employee</h3>
					</div>
					<div class="card-body">
						<%
						Employee emp = (Employee) request.getAttribute("employee");
						%>
						<form action="/update/<%=emp.getId() %>" method="post">
							<div class="mb-1">
								<label>Name</label> 
								<input type="text" name="name" value="<%=emp.getName() %>"
									class="form-control" required>
							</div>
							<div class="mb-1">
								<label>Gender</label> 
								<input type="radio" name="gender"
									value="Male" required <%=emp.getGender().equals("Male") ? "checked" : "" %>> Male 
								<input type="radio"
									name="gender" value="Female" required <%=emp.getGender().equals("Female") ? "checked" : "" %>> Female
							</div>
							<div class="mb-1">
								<label>DOB</label> <input type="date" name="dob" value="<%=emp.getDob() %>"
									class="form-control" required>
							</div>
							<div class="mb-1">
								<label>Mobile</label> <input type="text" name="mobile" value="<%=emp.getMobile() %>"
									class="form-control" required>
							</div>
							<div class="mb-1">
								<label>Email</label> <input type="email" name="email" value="<%=emp.getEmail() %>"
									class="form-control" required>
							</div>
							<div class="mb-1">
								<label>Address</label>
								<textarea rows="5" cols="20" class="form-control" name="address"
									required>
									<%=emp.getAddress() %>
							</textarea>
							</div>
							<input type="submit" value="UPDATE" class="btn btn-dark w-100">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>