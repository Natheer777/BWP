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
    public partial class productCart : System.Web.UI.Page
    {
        string s, t, description = "";
        string[] arr = new string[5];
        int counter = 0;
        SqlConnection sqlcon = new SqlConnection("Data Source=SQL8001.site4now.net;Initial Catalog=db_a9b9bc_appdata;User Id=db_a9b9bc_appdata_admin;Password=hamzanbjhh632003");
        protected void cart_click(object sendr, EventArgs e)
        {
            if (dat_L.Visible == true)
                dat_L.Visible = false;
            else
                dat_L.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            namelabel.Visible = true;
            countrylabel.Visible = true;
            nametext.Visible = true;
            countrydrop.Visible = true;
            Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sqlcon.Open();

            SqlCommand sqlcmd = sqlcon.CreateCommand();
            sqlcmd.CommandType = CommandType.Text;
            sqlcmd.CommandText = "INSERT INTO Users values('" + nametext.Text + "','" + countrydrop.SelectedValue + "'," + counter + ",'" + description + "')";
            sqlcmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dat_T = new DataTable();
            dat_T.Columns.AddRange(new DataColumn[5] { new DataColumn("productName"), new DataColumn("productPrice"), new DataColumn("productDescription"), new DataColumn("productImage"), new DataColumn("id") });
            if (Request.Cookies["cook"] != null)
            {
                s = Request.Cookies["cook"].Value.ToString();
                string[] ary = s.Split('|');
                for (int i = 0; i < ary.Length; i++)
                {
                    t = ary[i].ToString();
                    string[] ary1 = t.Split(',');
                    for (int j = 0; j < ary1.Length; j++)
                    {
                        arr[j] = ary1[j].ToString();

                    }
                    description += arr[2];
                    dat_T.Rows.Add(arr[0].ToString(), arr[1].ToString(), arr[2].ToString(), arr[3].ToString(), i.ToString());
                    counter += int.Parse(ary1[1]);
                }
                pricelabel.Text = "Total price is:" + counter;
                counterlabel.Text = "count is :" + ary.Length;
            }
            dat_L.DataSource = dat_T;

            dat_L.DataBind();
            dat_L.Visible = false;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("storeProducts.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("productCart.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("addingProudcts.aspx");
        }
    }
}