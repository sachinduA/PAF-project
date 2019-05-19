<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>seller page</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<c:choose>
		<c:when test="${mode=='MODE_SELLERDETAILS'}">
			<div class="container text-center">
				<h3>Seller Details</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="saveSeller">
					<input type="hidden" name="sellerId" value="${seller.sellerId }" />
					<div class="form-group">
						<label class="control-label col-md-3">User name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${seller.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fname"
								value="${seller.fname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lname"
								value="${seller.lname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Phone No </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="phone"
								value="${seller.phone }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Email </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="email"
								value="${seller.email}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Country </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="country"
								value="${seller.country }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Company</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="company"
								value="${seller.company }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${seller.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Add" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_SELLERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Sellers</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>User Name</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Phone</th>
								<th>Email</th>
								<th>Country</th>
								<th>Company</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="seller" items="${sellers }">
								<tr>
									<td>${seller.sellerId}</td>
									<td>${seller.username}</td>
									<td>${seller.fname}</td>
									<td>${seller.lname}</td>
									<td>${seller.phone}</td>
									<td>${seller.email}</td>
									<td>${seller.country}</td>
									<td>${seller.company}</td>
							
									<td><a href="/delete-seller?id=${seller.sellerId }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-seller?id=${seller.sellerId }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="saveSeller">
					<input type="hidden" name="sellerId" value="${seller.sellerId }" />
					<div class="form-group">
						<label class="control-label col-md-3">User name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${seller.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fname"
								value="${seller.fname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lname"
								value="${seller.lname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Phone </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="phone"
								value="${seller.phone }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Email </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="email"
								value="${seller.email}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Country </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="country"
								value="${seller.country }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Company</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="company"
								value="${seller.company }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${seller.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>User Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-user">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">User name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${seller.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${seller.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
					</form>
					</div>
					</c:when>
	</c:choose>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>