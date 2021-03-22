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

    }
    protected void btnsubmit2_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnsubmit2_Click1(object sender, EventArgs e)
    {
        if (txtfullname.Text == "")
        {
            lblmsg.Text = "Enter your full name";
            txtfullname.Focus();
            return;
        }
        if (txtaddress.Text == "")
        {
            lblmsg.Text = "Enter your address";
            txtaddress.Focus();
            return;
        }
        if (txtpincode.Text == "")
        {
            lblmsg.Text = "Enter your pincode";
            txtpincode.Focus();
            return;
        }
        if (txtmobileno.Text == "")
        {
            lblmsg.Text = "Enter your mobile no";
            txtmobileno.Focus();
            return;
        }
        if (txtemailid.Text == "")
        {            lblmsg.Text = "Enter your email id";
            txtemailid.Focus();
            return;
        }
        if (txtpwd.Text == "")
        {
            lblmsg.Text = "Enter your password";
            txtpwd.Focus();
            return;
        }
        if (txtconfirmpwd.Text == "")
        {
            lblmsg.Text = "Confirm password";
            txtconfirmpwd.Focus();
            return;
        }
        
        string cs = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        SqlConnection cnn = new SqlConnection(cs);
        string sql = "insert into logininfo(fullname,address,mobileno,email_id,pincode,password,entrydate)values('" + txtfullname.Text + "','" + txtaddress.Text + "'," + txtmobileno.Text + ",'" + txtemailid.Text + "'," + txtpincode.Text + ",'" + txtpwd.Text + "','" + DateTime.Now.ToString() + "')";
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
            lblmsg.Text = "not saved";
        }
        else
            txtfullname.Text = "";
        txtaddress.Text = "";
        txtpincode.Text = "";
        txtmobileno.Text = "";
        txtemailid.Text = "";
        txtusername.Focus();
        Session["loginemail_id"] = txtemailid.Text;
            lblmsg.Text = "Your Account is created Susseccfully";
    }


    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        string sql="select * from logininfo where email_id='"+txtusername.Text+"'and password='"+txtpassword.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(sql,cs);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        if (ds.Tables["a"].Rows.Count > 0)
        {
            Session["loginemail_id"] = txtusername.Text;
            Response.Redirect("checkout2.aspx");
        }
        else
        {
            Label1.Text = "Invailid email or password";
        }

    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
}