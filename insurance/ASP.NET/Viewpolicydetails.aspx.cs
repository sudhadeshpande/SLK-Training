using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

public partial class Viewpolicydetails : System.Web.UI.Page
{
    //SqlConnection mycon;
    //SqlDataAdapter myadapter;
    //SqlCommand mycmd;
    //DataSet myds;

    //static int clickStatus = 0;   // avoid using static variable(use session variable)
    //string pno;

    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-07\\SQLEXPRESS;user id=sa;password=password@1;database=Insurance");
        Label3.Text = Session["Email"].ToString();
        string val = "select * from registerdetails1 where Email='" + Session["Email"] + "'";

        SqlDataAdapter adaptor = new SqlDataAdapter(val, con);
        DataSet myds = new DataSet();

        adaptor.Fill(myds, "registerdetails1");

        int count1 = myds.Tables["registerdetails1"].Rows.Count;

        if (count1 > 0)

        {
            Session["Customer_id"] = myds.Tables["registerdetails1"].Rows[0][0].ToString();
            txtpn.Text = myds.Tables["registerdetails1"].Rows[0]["Customer_id"].ToString();

            string val1 = "select * from Customerpolicy where Customer_id='" + Session["Customer_id"] + "'";

            SqlDataAdapter adaptor1 = new SqlDataAdapter(val1, con);
            DataSet myds1 = new DataSet();

            adaptor1.Fill(myds1, "Customerpolicy");
            int Count1 = myds1.Tables["Customerpolicy"].Rows.Count;
            TextBox4.Text = Count1.ToString();
            if (Count1 > 0)
            {

                TextBox1.Text = myds.Tables[" Customerpolicy"].Rows[0]["Customer_id"].ToString();
                TextBox2.Text = myds.Tables[" Customerpolicy"].Rows[0]["Email"].ToString();
                TextBox4.Text = myds.Tables[" Customerpolicy"].Rows[0]["typeofpolicyrequired"].ToString();
                TextBox5.Text = myds.Tables[" Customerpolicy"].Rows[0]["ShipNo"].ToString();
                TextBox7.Text = myds.Tables[" Customerpolicy"].Rows[0]["VesselName"].ToString();
                TextBox8.Text = myds.Tables[" Customerpolicy"].Rows[0]["PackingDetails"].ToString();
                TextBox9.Text = myds.Tables[" Customerpolicy"].Rows[0]["ShipPurchasedamount"].ToString();
                TextBox10.Text = myds.Tables[" Customerpolicy"].Rows[0]["ExtrachargesinRS"].ToString();
            }
        }
    }
}
