using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Store
{
    public partial class addingProudcts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void insertClick(object sendr, EventArgs e)
        {
            SqlDataSource1.InsertParameters["productName"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("productName")).Text;

            SqlDataSource1.InsertParameters["productPrice"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("productPrice")).Text;

            SqlDataSource1.InsertParameters["productDescription"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("productDescription")).Text;

            SqlDataSource1.InsertParameters["productImage"].DefaultValue = @"images\" +
           ((FileUpload)GridView1.FooterRow.FindControl("productImage")).FileName;
            SqlDataSource1.Insert();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("storeProducts.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("productCart.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("addingProudcts.aspx");
        }
    }
}
