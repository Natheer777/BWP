using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace My_Store
{
    public partial class proudctDescription : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection("Data Source=SQL8001.site4now.net;Initial Catalog=db_a9b9bc_appdata;User Id=db_a9b9bc_appdata_admin;Password=hamzanbjhh632003");
        int id;
        string productName, productPrice, productDescription, productImage;



        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["Id"].ToString());
            sqlcon.Open();

            SqlCommand sqlcmd = sqlcon.CreateCommand();
            sqlcmd.CommandType = CommandType.Text;
            sqlcmd.CommandText = "select * from Proudcts where Id=" + id;
            sqlcmd.ExecuteNonQuery();
            DataTable dat_T = new DataTable();
            SqlDataAdapter dat_A = new SqlDataAdapter(sqlcmd);
            dat_A.Fill(dat_T);
            Repeater1.DataSource = dat_T;
            Repeater1.DataBind();

            sqlcon.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlcon.Open();

            SqlCommand sqlcmd = sqlcon.CreateCommand();
            sqlcmd.CommandType = CommandType.Text;
            sqlcmd.CommandText = "select * from Proudcts  where Id=" + id;
            sqlcmd.ExecuteNonQuery();
            DataTable dat_T = new DataTable();
            SqlDataAdapter dat_A = new SqlDataAdapter(sqlcmd);
            dat_A.Fill(dat_T);
            foreach (DataRow dat_R in dat_T.Rows)
            {

                productName = dat_R["productName"].ToString();
                productPrice = dat_R["productPrice"].ToString();
                productDescription = dat_R["productDescription"].ToString();
                productImage = dat_R["productImage"].ToString();
            }

            sqlcon.Close();
            if (Request.Cookies["cook"] == null)
            {
                Response.Cookies["cook"].Value = productName.ToString() + "," + productPrice.ToString() + ","
                    + productDescription.ToString() + "," + productImage.ToString();
                Response.Cookies["cook"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["cook"].Value = Request.Cookies["cook"].Value + "|" + productName.ToString() + ","
                    + productPrice.ToString() + "," + productDescription.ToString() + "," + productImage.ToString();
                Response.Cookies["cook"].Expires = DateTime.Now.AddDays(1);
            }
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("storeProducts.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("productCart.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("addingProudcts.aspx");
        }
    }
}