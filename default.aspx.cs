using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Store
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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