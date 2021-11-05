<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Button Groups.aspx.cs" Inherits="Library_Management_System.WebForms.Test_WebForms.Button_Groups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
</head>
<body>
	<form id="form1" runat="server">
		<div>

			<%--Basic Example--%>
			<div class="btn-group" role="group" aria-label="Basic example">
				<button type="button" class="btn btn-secondary">Left</button>
				<button type="button" class="btn btn-secondary">Middle</button>
				<button type="button" class="btn btn-secondary">Right</button>
			</div>

			<%--Button Toolbar--%>
			<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
				<div class="btn-group mr-2" role="group" aria-label="First group">
					<button type="button" class="btn btn-secondary">1</button>
					<button type="button" class="btn btn-secondary">2</button>
					<button type="button" class="btn btn-secondary">3</button>
					<button type="button" class="btn btn-secondary">4</button>
				</div>
				<div class="btn-group mr-2" role="group" aria-label="Second group">
					<button type="button" class="btn btn-secondary">5</button>
					<button type="button" class="btn btn-secondary">6</button>
					<button type="button" class="btn btn-secondary">7</button>
				</div>
				<div class="btn-group" role="group" aria-label="Third group">
					<button type="button" class="btn btn-secondary">8</button>
				</div>
			</div>

			<%--Button Toolbar With Additional Content--%>
			<div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
				<div class="btn-group mr-2" role="group" aria-label="First group">
					<button type="button" class="btn btn-secondary">1</button>
					<button type="button" class="btn btn-secondary">2</button>
					<button type="button" class="btn btn-secondary">3</button>
					<button type="button" class="btn btn-secondary">4</button>
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<div class="input-group-text" id="btnGroupAddon">@</div>
					</div>
					<input type="text" class="form-control" placeholder="Input group example" aria-label="Input group example" aria-describedby="btnGroupAddon">
				</div>
			</div>

			<div class="btn-toolbar justify-content-between" role="toolbar" aria-label="Toolbar with button groups">
				<div class="btn-group" role="group" aria-label="First group">
					<button type="button" class="btn btn-secondary">1</button>
					<button type="button" class="btn btn-secondary">2</button>
					<button type="button" class="btn btn-secondary">3</button>
					<button type="button" class="btn btn-secondary">4</button>
				</div>
				<div class="input-group">
					<div class="input-group-prepend">
						<div class="input-group-text" id="btnGroupAddon2">@</div>
					</div>
					<input type="text" class="form-control" placeholder="Input group example" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				</div>
			</div>

			<%--Sizing--%>
			<div class="btn-group btn-group-lg" role="group" aria-label="...">...</div>
			<div class="btn-group" role="group" aria-label="...">...</div>
			<div class="btn-group btn-group-sm" role="group" aria-label="...">...</div>

			<%--Nesting--%>
			<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
				<button type="button" class="btn btn-secondary">1</button>
				<button type="button" class="btn btn-secondary">2</button>

				<div class="btn-group" role="group">
					<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						Dropdown
					</button>
					<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
						<a class="dropdown-item" href="#">Dropdown link</a>
						<a class="dropdown-item" href="#">Dropdown link</a>
					</div>
				</div>
			</div>

			<%--Vertical Variation--%>
			<div class="btn-group-vertical">
				...
			</div>
		</div>
	</form>
</body>
</html>
