﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace m4_template
{
    public partial class CustomerBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;

            qry = new SqlCommand("SELECT * FROM WebUser WHERE Email= '" + Session["email"] + "'", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            string username = (string)dr[1];
            dr.Close();
            loggedUser.Text = username;
        }

        protected void logout()
        {
            Session.Remove("email");
        }
    }
}