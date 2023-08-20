<%@ page import="com.ems.pojo.Employee, java.util.*" %>
<%@ include file="nav.jsp" %>

<div class="container">
	<div class="row">
		<div class="col-md-8 mx-auto my-3">
			<h1 class="text-center display-4">All Employees</h1>
			<%
				if(session.getAttribute("msg")!=null){
					%>
						<div class="alert alert-info alert-dismissible fade show" role="alert">
  							<%=session.getAttribute("msg") %>
  							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					<%
					session.setAttribute("msg", null);
				}
			%>
			<table class="table table-borderred">
				<thead class="bg-dark text-light">
					<tr>
						<th>Name</th>
						<th>Email</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<Employee> employees = (List<Employee>)request.getAttribute("employees");
						for(Employee e : employees){
					%>
						<tr>
							<td><%=e.getName() %></td>
							<td><%=e.getEmail() %></td>
							<td>
								<a href="/details/<%=e.getId() %>" class="btn btn-sm btn-info">Details</a>
								<a href="/update/<%=e.getId() %>" class="btn btn-sm btn-warning">Update</a>
								<a href="/delete/<%=e.getId() %>" class="btn btn-sm btn-danger">Delete</a>
							</td>
						</tr>
					<% } %>
				</tbody>
			</table>
		</div>
	</div>
</div>