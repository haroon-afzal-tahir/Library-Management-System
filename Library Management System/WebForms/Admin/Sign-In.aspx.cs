using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library_Management_System.DAL;

namespace Library_Management_System.WebForms.Admin {
	public partial class Sign_In : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void Login(object sender, EventArgs e)
		{
			DAL.DAL.Log_In(email, password);

			Response.Redirect("Dashboard.aspx");
		}
	}
}