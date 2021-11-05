<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Badges.aspx.cs" Inherits="Library_Management_System.WebForms.Test_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
</head>
<body>
	<form id="form1" runat="server">
		<%--Button With Badges--%>
		<div>
			<button type="button" class="btn btn-primary"> Notifications 
				<span class="badge badge-light">4</span>
			</button>
		</div>

		<%--Button With Badges--%>
		<div>
			<button type="button" class="btn btn-primary"> Profile
				<span class="badge badge-light">9</span>
				<span class="sr-only">unread messages</span>
			</button>
		</div>


		<%--Contextual Variations--%>
		<div>
			<span class="badge badge-primary">Primary</span>
			<span class="badge badge-secondary">Secondary</span>
			<span class="badge badge-success">Success</span>
			<span class="badge badge-danger">Danger</span>
			<span class="badge badge-warning">Warning</span>
			<span class="badge badge-info">Info</span>
			<span class="badge badge-light">Light</span>
			<span class="badge badge-dark">Dark</span>
		</div>


		<%--Pill Badges--%>
		<div>
			<span class="badge badge-pill badge-primary">Primary</span>
			<span class="badge badge-pill badge-secondary">Secondary</span>
			<span class="badge badge-pill badge-success">Success</span>
			<span class="badge badge-pill badge-danger">Danger</span>
			<span class="badge badge-pill badge-warning">Warning</span>
			<span class="badge badge-pill badge-info">Info</span>
			<span class="badge badge-pill badge-light">Light</span>
			<span class="badge badge-pill badge-dark">Dark</span>
		</div>


		<%--Links--%>
		<div>
			<a href="#" class="badge badge-primary">Primary</a>
			<a href="#" class="badge badge-secondary">Secondary</a>
			<a href="#" class="badge badge-success">Success</a>
			<a href="#" class="badge badge-danger">Danger</a>
			<a href="#" class="badge badge-warning">Warning</a>
			<a href="#" class="badge badge-info">Info</a>
			<a href="#" class="badge badge-light">Light</a>
			<a href="#" class="badge badge-dark">Dark</a>
		</div>
	</form>
</body>
</html>
