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
    public partial class deleteProduct : System.Web.UI.Page
    {
        string s, t;
        string[] arr = new string[4];
        int id;
        string productName, productPrice, productDescription, productImage;
        int counter = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["id"].ToString());
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
                    dat_T.Rows.Add(arr[0].ToString(), arr[1].ToString(), arr[2].ToString(), arr[3].ToString(), i.ToString());

                }

            }
            dat_T.Rows.RemoveAt(id);
            Response.Cookies["cook"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["cook"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["cook"].Expires = DateTime.Now.AddDays(-1);

            foreach (DataRow da_R in dat_T.Rows)
            {

                productName = da_R["productName"].ToString();
                productPrice = da_R["productPrice"].ToString();
                productDescription = da_R["productDescription"].ToString();
                productImage = da_R["productImage"].ToString();
                counter++;

                if (counter == 1)
                {
                    Response.Cookies["cook"].Value = productName.ToString() + "," + productPrice.ToString() + "," + productDescription.ToString() + "," + productImage.ToString();
                    Response.Cookies["cook"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Response.Cookies["cook"].Value = Request.Cookies["cook"].Value + "|" + productName.ToString() + "," + productPrice.ToString() + "," + productDescription.ToString() + "," + productImage.ToString();
                    Response.Cookies["cook"].Expires = DateTime.Now.AddDays(1);
                }
            }
            Response.Redirect("productCart.aspx");
        }
    }
}