using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library_Management_System.DAL;

namespace Library_Management_System.WebForms.Admin {
	public partial class Sign_Up : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) {

		}

		protected void CreateAccount(object sender, EventArgs e) {
			string temp = RadioButton1.Text;
			if (RadioButton2.Checked == true)
				temp = RadioButton2.Text;

			if (DAL.DAL.SignUp(name1.Text, email1.Text, password1.Text, int.Parse(age1.Text), cnic1.Text, phoneNum1.Text, "Testing 123", temp)) {
				Response.Redirect("Dashboard.aspx"); 
			}
		}
	}
}