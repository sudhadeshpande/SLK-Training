using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class pamentdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = new UnobtrusiveValidationMode();
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        string cs;
        cs = ConfigurationManager.ConnectionStrings["InsuranceConnectionString1"].ConnectionString;
        using (SqlConnection mycon = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into Payment(policyno,fullname,email,nameoncreditcard,premiumamount,cardno,expmonth,expyear,cvv) values('" + txtpn.Text + "','" + txtfn.Text + "','" + txtem.Text + "','" + txtnoc.Text + "','" + txtamount.Text + "','" + txtccn.Text + "','" + txtem.Text + "','" + txtey.Text + "','" + txtcvv.Text +  "')", mycon);
            mycon.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                lblMsg.Text = "Payment Successful";

            }
            else
            {
                lblMsg.Text = "Error while doing Payment";
            }
            Response.Redirect("customerportal.aspx");
        }
    }
}

