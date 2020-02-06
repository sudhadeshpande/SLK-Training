using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class claim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = new UnobtrusiveValidationMode();
    }

    protected void btnclaim_Click(object sender, EventArgs e)
    {
        string cs;
        cs = ConfigurationManager.ConnectionStrings["InsuranceConnectionString1"].ConnectionString;
        using (SqlConnection mycon = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into claim(Policy_No,FullName,Shipno,Dofleavingsportn,DateofLoss,LossDescription,NatureofGoods ,premiumbill ) values('" + txtpno.Text + "','" + txtfn.Text + "','" + txtsno.Text + "','" +txtdate1.Text + "','" + txtdate2.Text + "','" + txtbdesc.Text + "','" + txtnogoods.Text + "','" + FileUpload1.FileBytes + "')", mycon);
            mycon.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                lblMsg.Text = "You have successfully claimed";

            }
            else
            {
                lblMsg.Text = "Error in claiming";
            }

            Response.Redirect("customerportal.aspx");
        }
    }
}
