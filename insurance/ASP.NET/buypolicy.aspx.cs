using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class buypolicy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = new UnobtrusiveValidationMode();

    }


    protected void Btn_Click(object sender, EventArgs e)
    {
        string cs;
        cs = ConfigurationManager.ConnectionStrings["InsuranceConnectionString1"].ConnectionString;
        using (SqlConnection mycon = new SqlConnection(cs))
        {

            string cno = "select * from registerdetails1 where Email='" + Session["Email"] + "'";

            SqlDataAdapter adaptor = new SqlDataAdapter(cno, mycon);

            DataSet myds = new DataSet();

            adaptor.Fill(myds, "registerdetails1");

            int count = myds.Tables["registerdetails1"].Rows.Count;

            if (count > 0)

            {

                Session["Customer_id"] = myds.Tables["registerdetails1"].Rows[0]["Customer_id"].ToString();

            }

            SqlCommand cmd = new SqlCommand("insert into Customerpolicy(CustomerFullName ,Email ,cAddress ,City,cState ,ContactNo ,ShipNo ,ShipModel ,ShipPurchasedamount,VesselName ,Typeofpolicyrequired ,SoursePortname  ,DestinationPortname ,PackingDetails ,ExtrachargesinRS,Customer_id ) values('" + txtname.Text + "','" + txtemail.Text + "','" + txtaddr.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtcno.Text + "','" + txtshipno.Text + "','" + txtsm.Text + "','" + txtamount.Text + "','" + txtvessel.Text + "','" + DropDownList1.Text + "','" + txtspn.Text + "','" + txtdpn.Text + "','" + txtdescr.Text + "','" + txtexcharges.Text + "','" + Session["Customer_id"] + "')", mycon);
            mycon.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                lblMsg.Text = "Congratulations for buying a new policy";

            }
            else
            {
                lblMsg.Text = "Error in buying policy";
            }
            Response.Redirect("customerportal.aspx");
        }
    }
    }

