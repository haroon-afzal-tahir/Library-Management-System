<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buttons.aspx.cs" Inherits="Library_Management_System.WebForms.Test_WebForms.Buttons" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<div>
				<button type="button" class="btn btn-primary">Primary</button>
				<button type="button" class="btn btn-secondary">Secondary</button>
				<button type="button" class="btn btn-success">Success</button>
				<button type="button" class="btn btn-danger">Danger</button>
				<button type="button" class="btn btn-warning">Warning</button>
				<button type="button" class="btn btn-info">Info</button>
				<button type="button" class="btn btn-light">Light</button>
				<button type="button" class="btn btn-dark">Dark</button>

				<button type="button" class="btn btn-link">Link</button>
			</div>
			<%--Disable text wrapping
				If you don’t want the button text to wrap, you can add the .text-nowrap class to the button. In Sass, you can set $btn-white-space: nowrap to disable text wrapping for each button.--%>

			<%--Button Tags--%>
			<div>
				<a class="btn btn-primary" href="#" role="button">Link</a>
				<button class="btn btn-primary" type="submit">Button</button>
				<input class="btn btn-primary" type="button" value="Input"/>
				<input class="btn btn-primary" type="submit" value="Submit"/>
				<input class="btn btn-primary" type="reset" value="Reset"/>
			</div>
			
			<%--Outline Buttons--%>
			<div>
				<button type="button" class="btn btn-outline-primary">Primary</button>
				<button type="button" class="btn btn-outline-secondary">Secondary</button>
				<button type="button" class="btn btn-outline-success">Success</button>
				<button type="button" class="btn btn-outline-danger">Danger</button>
				<button type="button" class="btn btn-outline-warning">Warning</button>
				<button type="button" class="btn btn-outline-info">Info</button>
				<button type="button" class="btn btn-outline-light">Light</button>
				<button type="button" class="btn btn-outline-dark">Dark</button>
			</div>

			<%--Large Buttons--%>
			<div>
				<button type="button" class="btn btn-primary btn-lg">Large button</button>
				<button type="button" class="btn btn-secondary btn-lg">Large button</button>
			</div>

			<%--Small Buttons--%>
			<div>
				<button type="button" class="btn btn-primary btn-sm">Small button</button>
				<button type="button" class="btn btn-secondary btn-sm">Small button</button>
			</div>

			<%--Block Level Buttons--%>
			<div>
				<button type="button" class="btn btn-primary btn-lg btn-block">Block level button</button>
				<button type="button" class="btn btn-secondary btn-lg btn-block">Block level button</button>
			</div>

			<%--Active State--%>
			<div>
				<a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Primary link</a>
				<a href="#" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Link</a>
			</div>

			<%--Disabled State--%>
			<div>
				<button type="button" class="btn btn-lg btn-primary" disabled>Primary button</button>
				<button type="button" class="btn btn-secondary btn-lg" disabled>Button</button>

				<a class="btn btn-primary btn-lg disabled" role="button" aria-disabled="true">Primary link</a>
				<a class="btn btn-secondary btn-lg disabled" role="button" aria-disabled="true">Link</a>
			</div>

			<%--Link functionality caveat--%>
			<div>
				<a href="#" class="btn btn-primary btn-lg disabled" tabindex="-1" role="button" aria-disabled="true">Primary link</a>
				<a href="#" class="btn btn-secondary btn-lg disabled" tabindex="-1" role="button" aria-disabled="true">Link</a>
			</div>

			<%--Toggle States--%>
			<div>
				<button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false">
					Single toggle
				</button>
			</div>

			<%--Checkbox and Radio Buttons--%>
			<div>
				<div class="btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-secondary active">
						<input type="checkbox" checked> Checked
					</label>
				</div>
				<div>
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
						<label class="btn btn-secondary active">
							<input type="radio" name="options" id="option1" checked> Active
						</label>
						<label class="btn btn-secondary">
							<input type="radio" name="options" id="option2"> Radio
						</label>
						<label class="btn btn-secondary">
							<input type="radio" name="options" id="option3"> Radio
						</label>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
