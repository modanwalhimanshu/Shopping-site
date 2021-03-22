using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtsubmit_Click(object sender, EventArgs e)
    {
        
        string cs = ConfigurationManager.ConnectionStrings["Myconn"].ConnectionString;
        SqlConnection cnn = new SqlConnection(cs);
        string sql="insert into contactinfo(name,email,subject,entrydate)values('"+txtname.Text+"','"+txtemail.Text+"','"+txtsubject.Text+"','"+DateTime.Now.ToString()+"')";
        SqlCommand cm = new SqlCommand();
        cm.Connection=cnn;
        cm.CommandType=CommandType.Text;
       
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
            lblmsg.Text = "Your query Send";
        }
    }
}