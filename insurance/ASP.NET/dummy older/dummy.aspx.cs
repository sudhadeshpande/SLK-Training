using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dummy_older_dummy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = new UnobtrusiveValidationMode();
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
}