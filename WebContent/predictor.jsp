<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Predictor</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/simple-sidebar.css" rel="stylesheet">
</head>
<body>
	<%
		String name = (String) session.getAttribute("username");
		if (name == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<div class="d-flex" id="wrapper">

		<!-- Sidebar -->
		<%@ include file = "template.jsp" %>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">


			<div class="container-fluid">
				<h1 class="mt-4">Predictor</h1>
				<form method="POST" action="SendJSON">
					<div class="form-group">
						<input type="text" class="form-control" id="bmi" name="bmi"
							placeholder="BMI" required>
					</div>

					<div class="form-group">
						<input type="text" class="form-control" name="glucose"
							id="glucose" placeholder="Glucose" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="bp" name="bp"
							placeholder="Blood Pressure" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="pregnancies"
							name="pregnancies" placeholder="Pregnancies" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="pedigree"
							name="pedigree" placeholder="Pedigree Function" required>
					</div>

					<div class="form-group">
						<p>Result:</p>
					</div>

					<button class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>
</body>
</html>