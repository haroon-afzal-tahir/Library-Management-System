﻿using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

namespace Library_Management_System.DAL {
	public class DAL {
		public static char[] charsToTrim = { '*', '.', ',', '[', ']', '{', '}', '"', '_', '!', '#', '$', '%', '^', '&', '(', ')', '=', '/', '?', '|', '>', '<', ' ' };
		public static string SetConnectionString() {
			string ModifiedString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
			string ComputerName = Environment.MachineName;

			int start = ModifiedString.IndexOf('=');
			int end = ModifiedString.IndexOf(';');
			string ConfigComputerName = ModifiedString.Substring(start + 1, end - start - 1);
			return ModifiedString.Replace(ConfigComputerName, ComputerName);
		}

		public static string Log_In(string _username, string _password) {
			try {
				using (IDbConnection Db = new SqlConnection(SetConnectionString())) {
					string readSp = "LOG_IN"; // Procedure Name
					DynamicParameters values = new DynamicParameters();
					values.Add("USER_NAME", _username.Trim(charsToTrim));
					values.Add("PASSWORD", _password.Trim(charsToTrim));
					values.Add("FLAG", dbType: DbType.String, direction: ParameterDirection.Output, size: 30);

					Db.Query(readSp, values, commandType: CommandType.StoredProcedure);
					return values.Get<string>("FLAG");
				}
			}
			catch {
				return null;
			}
		}

		public static bool SignUp(string _username, string _email, string _password, int userAge, string _UserCnic, string _UserPhoneNumber, string _User_Picture_Directory, string userType) {
			try {
				using (IDbConnection Db = new SqlConnection(SetConnectionString())) {
					string readSp = "SIGN_UP";
					DynamicParameters values = new DynamicParameters();
					values.Add("USER_NAME", _username.Trim(charsToTrim));
					values.Add("Email", _email.Trim(charsToTrim));
					values.Add("PASSWORD", _password.Trim(charsToTrim));
					values.Add("USER_AGE", userAge);
					values.Add("USER_CNIC", _UserCnic.Trim(charsToTrim));
					values.Add("USER_PHONE_NUM", _UserPhoneNumber.Trim(charsToTrim));
					values.Add("USER_PICTURE_DIRECTORY", _User_Picture_Directory.Trim(charsToTrim));
					values.Add("SIGNUP_USER_TYPE", userType.Trim(charsToTrim));
					values.Add("FLAG", dbType: DbType.Int32, direction: ParameterDirection.Output);

					Db.Query(readSp, values, commandType: CommandType.StoredProcedure);
					return true;
				}
			}
			catch {
				return false;
			}
		}
	}
}