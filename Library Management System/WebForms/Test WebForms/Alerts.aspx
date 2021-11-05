<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alerts.aspx.cs" Inherits="Library_Management_System.WebForms.Test_WebForms.Alerts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
</head>
<body>
	<form id="form1" runat="server">
		<%--Examples--%>
		<div>
			<div class="alert alert-primary" role="alert">
				A simple primary alert—check it out!
			</div>
			<div class="alert alert-secondary" role="alert">
				A simple secondary alert—check it out!
			</div>
			<div class="alert alert-success" role="alert">
				A simple success alert—check it out!
			</div>
			<div class="alert alert-danger" role="alert">
				A simple danger alert—check it out!
			</div>
			<div class="alert alert-warning" role="alert">
				A simple warning alert—check it out!
			</div>
			<div class="alert alert-info" role="alert">
				A simple info alert—check it out!
			</div>
			<div class="alert alert-light" role="alert">
				A simple light alert—check it out!
			</div>
			<div class="alert alert-dark" role="alert">
				A simple dark alert—check it out!
			</div>
		</div>

		<%--Link Color--%>
		<div style="margin: 20px 0px 0px 0px">
			<div class="alert alert-primary" role="alert">
				A simple primary alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
			<div class="alert alert-secondary" role="alert">
				A simple secondary alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
			<div class="alert alert-success" role="alert">
				A simple success alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
			<div class="alert alert-danger" role="alert">
				A simple danger alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
			<div class="alert alert-warning" role="alert">
				A simple warning alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
			<div class="alert alert-info" role="alert">
				A simple info alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
			<div class="alert alert-light" role="alert">
				A simple light alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
			<div class="alert alert-dark" role="alert">
				A simple dark alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
		</div>

		<%--Additional Content--%>
		<div style="margin: 20px 0px 0px 0px">
			<div class="alert alert-success" role="alert">
				<h4 class="alert-heading">Well done!</h4>
				<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
				<hr/>
				<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
			</div>
		</div>

		<%--Dismissing--%>
		<div style="margin: 20px 0px 0px 0px">
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
				<strong>Holy guacamole!</strong> You should check in on some of those fields below.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</div>
	</form>
</body>
</html>
