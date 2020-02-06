using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customerportal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("buypolicy.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Claim.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
        
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("pamentdetails.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
}