<%@ page import="com.ems.pojo.Employee" %>
<%@ include file="nav.jsp" %>

<div class="container" style="text-align:center;">
	<div class="row" style="text-align:center;">
		<div class="col-md-8 mx-auto my-3" style="text-align:center;">
			<h1 class="text-center display-4">Employee Details</h1>
			<table class="table table-borderred table-striped" style="text-align:center;">
				<tbody style="text-align:center;">
					<%
						Employee emp = (Employee)request.getAttribute("employee");
					%>
					<tr>
						<td>ID</td>
						<td><%=emp.getId() %></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><%=emp.getName() %></td>
					</tr>
					<tr>
						<td>DOB</td>
						<td><%=emp.getDob() %></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td><%=emp.getGender() %></td>
					</tr>
					<tr>
						<td>Mobile</td>
						<td><%=emp.getMobile() %></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><%=emp.getEmail() %></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><%=emp.getAddress() %></td>
					</tr>	
				</tbody>
			</table>
		</div>
	</div>
</div>