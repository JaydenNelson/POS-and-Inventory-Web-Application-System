using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace m4_template
{
    public partial class Catalogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("SELECT TOP 1 * FROM Sales ORDER BY sale_id DESC ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            Session["saleID"] = (int)dr[0] + 1;
            dr.Close();
        }

        protected void loginCheck()
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('"+ Session["saleID"] + "','1','Product','Nikon XLT','7000','1','7000','"+(7000*0.15)+"','"+(7000*1.15)+"'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close(); 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','2','Product','Nikon Camera','150','1','150','" + (150 * 0.15) + "','" + (150 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','3','Product','Black Tripod','50','1','50','" + (50 * 0.15) + "','" + (50 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','4','Product','Canon Camera','15000','1','15000','" + (15000 * 0.15) + "','" + (15000 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','5','Product','Grey Tripod','300','1','300','" + (300 * 0.15) + "','" + (300 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','6','Product','SD Card','150','1','150','" + (150 * 0.15) + "','" + (150 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','7','Product','USB','80','1','80','" + (80 * 0.15) + "','" + (80 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','8','Product','A5 Frame','50','1','50','" + (50 * 0.15) + "','" + (50 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','9','Product','Camera bag','70','1','70','" + (70 * 0.15) + "','" + (70 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','10','Product','Canon Camera','7000','1','7000','" + (7000 * 0.15) + "','" + (7000 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "11','Product','DSLR','15000','1','15000','" + (15000 * 0.15) + "','" + (15000 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','12','Product','A1 Frame','400','1','400','" + (400 * 0.15) + "','" + (400 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','13','Product','USB','40','1','40','" + (40 * 0.15) + "','" + (40 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','14','Product','A3 Frame','240','1','240','" + (240 * 0.15) + "','" + (240 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','15','Product','Frame','80','1','80','" + (80 * 0.15) + "','" + (80 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=146.230.177.46;Initial Catalog=GroupPmb14;User ID=GroupPmb14;Password=cmsv69");
            connection.Open();
            SqlCommand qry;
            SqlDataReader dr;
            qry = new SqlCommand("INSERT INTO SaleItems (sale_id, serial_no,product_or_service, product_or_service_name,unit_price,quantity,cost,vat,subtotal) VALUES('" + Session["saleID"] + "','24','Product','Film','15','1','15','" + (15 * 0.15) + "','" + (15 * 1.15) + "'); ", connection);
            dr = qry.ExecuteReader();
            dr.Read();
            dr.Close();
        }

    }
}