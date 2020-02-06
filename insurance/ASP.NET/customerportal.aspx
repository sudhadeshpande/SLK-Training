<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerportal.aspx.cs" Inherits="customerportal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title></title>
<style>
    #Button4{
        position:absolute;
        right:2%;
        top: 3px;
        height: 35px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <asp:Button ID="Button4" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Size="15pt" ForeColor="Maroon" OnClick="Button4_Click" Text="Logout"/>
                    <h1>Marine Insurance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                    </h1>

                </div>
            </div>
            <div class="row d-flex justify-content-between">
                <div class="col-md-4 col-lg-3 p-4">
                    <img class="img-fluid d-block" src="C:/Workarea/insurance/images/buy.png" style="height:200px" ><br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Buy Policy" OnClick="Button1_Click" />
             
                   
                </div>
                <div class="col-md-4 col-lg-3 p-4">
                    <img class="img-fluid d-block" src="C:/Workarea/insurance/images/view.png"  style="height:200px"><br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="View Policy details" OnClick="Button2_Click"   />
              
                </div>
                <div class="col-md-4 col-lg-3 p-4">
                    <img class="img-fluid d-block" src="C:/Workarea/insurance/images/claim.jpg" style="height:200px"><br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Claim" OnClick="Button3_Click"  />
                             
                &nbsp;</div>

                <div class="col-md-4 col-lg-3 p-4">
                    <img class="img-fluid d-block" src="C:/Workarea/insurance/images/pay.jpg"  style="height:200px"><br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Payment" OnClick="Button5_Click" />
                  
                </div>
            </div>
        </div>
    </div>

    </div>
    </form>
</body>
</html>
