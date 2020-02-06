using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" &&
                   TextBox4.Text != "" && TextBox5.Text != "")
            {


                string cs;
                cs = ConfigurationManager.ConnectionStrings["InsuranceConnectionString1"].ConnectionString;
                using (SqlConnection mycon = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("insert into contactedcustomeedetails(firstname,lastname,city,contactno,rSubject) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", mycon);
                    mycon.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Thank You for your information  </br> will contact you soon";

                }
                Response.Redirect("Homepage.aspx");
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
    }

   
}
