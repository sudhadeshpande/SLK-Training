using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs;
        cs = ConfigurationManager.ConnectionStrings["InsuranceConnectionString1"].ConnectionString;
        using (SqlConnection mycon = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("select email,UPassword from registerdetails1 where email='" + txtemail.Text + "' and  UPassword='" + txtpassword.Text + "'", mycon);
            mycon.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                //session creator
                Session["email"] = txtemail.Text;
                Response.Redirect("CustomerPortal.aspx");


                lblMsg.Text = "Login Successful";

            }
            else
            {
                lblMsg.Text = "Invalid username or password";
            }
           
        }
    }

}
