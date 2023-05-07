using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace m4_template
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            if (Password.Text == ConfirmPassword.Text)
            {
                SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
                connection.Open();
                SqlCommand qry;
                SqlDataReader dr;

                qry = new SqlCommand("UPDATE WebUser SET Password = '"+Password.Text+"' WHERE Email='"+Email.Text+"' ", connection);
                dr = qry.ExecuteReader();
                dr.Read();
                dr.Close();
                Response.Redirect("Default.aspx");
            }
            
        }
    }
}