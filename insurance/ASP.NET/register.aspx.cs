using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

using System.Data;
using System.Data.SqlClient;
public partial class register : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)

    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" &&
               TextBox4.Text != "" && TextBox7.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
        {


            string cs;
            cs = ConfigurationManager.ConnectionStrings["InsuranceConnectionString1"].ConnectionString;
            using (SqlConnection mycon = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("insert into registerdetails1(firstname,lastname,email,contactno,city,UPassword,cpassword) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", mycon);
                mycon.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Successfully registered";

            }
        }
        else
        {
            lblMsg.Text = "All fields are Mandatory";
        }
        Response.Redirect("login.aspx");
    }
}

         