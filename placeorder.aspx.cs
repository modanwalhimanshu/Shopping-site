using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["paymentmode"].ToString() == "paytm")
            {
                pnlpaytm.Visible = true;
            }
        
        
            if (Session["paymentmode"].ToString() == "COD")
            {
                pnlCOD.Visible = true;
            }
        
            if (Session["paymentmode"].ToString() == "bank")
            {
                pnlbankdetail.Visible = true;
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("confirmorder.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("confirmorder.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("confirmorder.aspx");
    }
    protected void txtlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
}