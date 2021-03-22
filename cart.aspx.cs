using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string pimgname = Request.QueryString["imgname"];
            string price = Request.QueryString["price"];
            string productname = Request.QueryString["productname"];
            lblprice.Text = price;
            lblproductname.Text = productname;
            lbltotalamt.Text = price;
            imgproduct.ImageUrl = "~/img/"+ pimgname +".jpg";
        }
    }
    protected void btncheckout_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
    protected void btnplus_Click(object sender, EventArgs e)
    {
        int qty = int.Parse(txtquantity.Text);
        qty = qty + 1;
        txtquantity.Text = Convert.ToString(qty);
        int tamt = int.Parse(lblprice.Text);
         tamt = tamt * qty;
         lbltotalamt.Text = Convert.ToString(tamt);
    }
    protected void btnminus_Click(object sender, EventArgs e)
    {
        int qty = int.Parse(txtquantity.Text);
        qty = qty + 1- 2;
        txtquantity.Text = Convert.ToString(qty);
        int tamt = int.Parse(lblprice.Text);
        tamt = tamt * qty;
        lbltotalamt.Text = Convert.ToString(tamt);
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
}