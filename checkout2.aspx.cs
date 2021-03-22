using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class checkout2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            lblloginemailid.Text = Session["loginemail_id"].ToString();
        }
    }
    
    protected void txtplaceorder_Click(object sender, EventArgs e)
    {
        if (txtfirstname.Text == "")
        {
            lblmsg.Text = "Enter your Full Name";
            txtfirstname.Focus();
            return;
        }
        if (txtlastname.Text == "")
        {
            lblmsg.Text = "Enter your Last Name";
            txtlastname.Focus();
            return;
        }
        if (txtaddress.Text == "")
        {
            lblmsg.Text = "Enter your Address";
            txtaddress.Focus();
            return;
        }
        if (txtbillingpostcode.Text == "")
        {
            lblmsg.Text = "Enter your Pincode";
            txtbillingpostcode.Focus();
            return;
        }
        if (txtmobileno.Text == "")
        {
            lblmsg.Text = "Enter your Mobile number";
            txtmobileno.Focus();
            return;
        }
        if (txtemailaddress.Text == "")
        {
            lblmsg.Text = "Enter your Email-id";
            txtemailaddress.Focus();
            return;
        }
        if (txtfirstname2.Text == "")
        {
            lblmsg.Text = "Enter your Full Name";
            txtfirstname2.Focus();
            return;
        }
        if (txtlastname2.Text == "")
        {
            lblmsg.Text = "Enter your Last Name";
            txtlastname2.Focus();
            return;
        }
        if (txtaddress3.Text == "")
        {
            lblmsg.Text = "Enter your Address";
            txtaddress3.Focus();
            return;
        }
        if (txtbillingpostcode2.Text == "")
        {
            lblmsg.Text = "Enter your Pincode";
            txtbillingpostcode2.Focus();
            return;
        }
        if (txtmobileno2.Text == "")
        {
            lblmsg.Text = "Enter your Mobile number";
            txtmobileno2.Focus();
            return;
        }
        if (txtemailaddress2.Text == "")
        {
            lblmsg.Text = "Enter your Email-id";
            txtemailaddress2.Focus();
            return;
        }
        RadioButton rb=null;
        string value = "1";
         if (rbpaytm.Checked == true)
        {
            rb = rbpaytm;
            value = rbpaytm.Text;
        }
        else if (rbtCOD.Checked == true)
        {
            rb = rbtCOD;
            value = rbtCOD.Text;
        }
        else if (rbbankdetails.Checked == true)
        {
            rb = rbbankdetails;
            value = rbbankdetails.Text;
        }

        string cs = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        SqlConnection cnn = new SqlConnection(cs);
        string sql = "insert into billingdetails(country,firstname,lastname,companyname,address,apartment,town,state,zip,emailid,mobileno,paymentmode,entrydate)values('" + ddlcountry.Text + "','" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtcompany.Text + "','" + txtaddress.Text + "','" + txtaddress2.Text + "','" + txtbillingcity.Text + "','" + txtbillingstate.Text + "'," + txtbillingpostcode.Text + ",'" + txtemailaddress.Text + "'," + txtmobileno.Text + ",'" + rb.Text + "','" + DateTime.Now.ToString() + "')";
        SqlCommand cm = new SqlCommand();
        cm.Connection = cnn;
        cm.CommandType = CommandType.Text;

        cm.CommandText = sql;
        int a = 0;
        cnn.Open();
        a = cm.ExecuteNonQuery();
        cnn.Close();
        if (a == 0)
        {
            lblmsg.Text = "Not saved";
        }
        else
        {
            lblmsg.Text = "Your Delails Saved";
        }


        string sql1 = "insert into shiptodifferentaddress(country,firstname,lastname,companyname,address,apartment,town,state,zip,emailid,mobileno,ordernote,entrydate)values('" + DropDownList1.Text + "','" + txtfirstname2.Text + "','" + txtlastname2.Text + "','" + txtcompany2.Text + "','" + txtaddress3.Text + "','" + txtaddress4.Text + "','" + txtbillingcity2.Text + "','" + txtbillingstate2.Text + "'," + txtbillingpostcode2.Text + ",'" + txtemailaddress2.Text + "'," + txtmobileno2.Text + ",'" + txtordercomment.Text + "','" + DateTime.Now.ToString() + "')";
        SqlCommand cm1 = new SqlCommand();
        cm1.Connection = cnn;
        cm1.CommandType = CommandType.Text;

        cm1.CommandText = sql1;

        cnn.Open();
        a = cm1.ExecuteNonQuery();
        cnn.Close();
        if (a == 0)
        {
            lblmsg.Text = "not saved";
        }
        else
        {
          
        }
        if (rbpaytm.Checked == true)
        {
            Session["paymentmode"] = "paytm";
        }
        else if (rbtCOD.Checked == true)    
        {
            Session["paymentmode"] = "COD";
        }
        else if (rbbankdetails.Checked==true)
        {
            Session["paymentmode"] = "bank";
        }
        Response.Redirect("placeorder.aspx");
       
    }
    protected void Checkbox_CheckedChanged(object sender, EventArgs e)
    {
        if (Checkbox.Checked == true)
        {
            txtfirstname2.Text = txtfirstname.Text;

        }
        else
        {
            txtfirstname2.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtlastname2.Text = txtlastname.Text;

        }
        else
        {
            txtlastname2.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtcompany2.Text = txtcompany.Text;

        }
        else
        {
            txtcompany2.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtaddress3.Text = txtaddress.Text;

        }
        else
        {
            txtaddress3.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtaddress4.Text = txtaddress2.Text;

        }
        else
        {
            txtaddress4.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtbillingcity2.Text = txtbillingcity.Text;

        }
        else
        {
            txtbillingcity2.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtbillingstate2.Text = txtbillingstate.Text;

        }
        else
        {
            txtbillingstate2.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtbillingpostcode2.Text = txtbillingpostcode.Text;

        }
        else
        {
            txtbillingpostcode2.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtbillingpostcode2.Text = txtbillingpostcode.Text;

        }
        else
        {
            txtbillingpostcode2.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtemailaddress2.Text = txtemailaddress.Text;

        }
        else
        {
            txtemailaddress2.Text = "";
        }
        if (Checkbox.Checked == true)
        {
            txtmobileno2.Text = txtmobileno.Text;

        }
        else
        {
            txtmobileno2.Text = "";
        }
        
    }

   
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
}