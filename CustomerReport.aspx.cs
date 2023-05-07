using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.Shared;

namespace m4_template
{
    public partial class CustomerReport : System.Web.UI.Page
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

        protected void btnShow_Click(object sender, EventArgs e)
        {
            CustomerDataSet ds = new CustomerDataSet();
            CustomerDataSetTableAdapters.DataTable1TableAdapter ta = new CustomerDataSetTableAdapters.DataTable1TableAdapter();
            ta.Fill(ds.DataTable1);
            CustomerCrystalReport cr1 = new CustomerCrystalReport();
            cr1.Load(Server.MapPath("CustomerCrystalReport.rpt"));
            cr1.SetDatabaseLogon("GroupPmb14", "cmsv69");
            cr1.SetDataSource(ds.Tables["DataTable1"]);
            CrystalReportViewer1.ReportSource = cr1;
            cr1.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "DataTable1");
        }
    }
}