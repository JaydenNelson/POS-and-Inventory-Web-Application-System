using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace m4_template
{
    public partial class AdminEmployees : System.Web.UI.Page
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
            loggedUser.Text = username;
        }

        protected void logout()
        {
            Session.Remove("email");
        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;

            qry = new SqlCommand("INSERT INTO EMPLOYEE(login_id,name,phone_no,email,address,monthly_salary) VALUES('" + txtlogin_id.Text + "','" + txtname.Text + "','" + txtphone_no.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "','" + Convert.ToInt32(txtmonthlysalary.Text) + "')", connection);
            dr = qry.ExecuteReader();
            dr.Close();
        }
    }
}