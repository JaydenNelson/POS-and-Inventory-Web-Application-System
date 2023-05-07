using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace m4_template
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;

            qry = new SqlCommand("SELECT * FROM WebUser WHERE Email= '" + Session["email"] + "'", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            string username = (string)dr[1];
            string isAdmin = (string)dr[5];
            dr.Close();
            if (isAdmin != "Y")
            {
                Response.Redirect("Default.aspx");
            }
            loggedUser.Text = "Welcome " + username+" .Hope you have a good day.";
            Label1.Text = username;
        }

        protected void logout()
        {
            Session.Remove("email");
        }
    }
}