﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerRegister.aspx.cs" Inherits="CustomerRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>customer register</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <style>
        * {
             box-sizing: border-box;
          }
        .navbar-brand
        {
            color:indianred;
            font-family:Broadway;
            font-size:xx-large;
            font-weight:bolder;
            background-color:white;
            width: 150px;
            height: 55px;
        }
        body
                               {
                                     background-color:#1a5874;
                               }
        marquee{
                        color:white;
                        font-size:x-large;
                        font-style:italic;
                        font-family:Brush Script MT;
                    }
         footer {
      background-color: #1a5874;
      color:white;
      padding: 25px;
      float:left;
      margin-top:10px;
      margin-bottom:200px;
      width:100%;
    }

                    .fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}
                    .fa:hover {
    opacity: 0.9;
}
               .fa-facebook {
  background: #1a5874;
  color: white;
}

.fa-twitter {
  background: #1a5874;
  color: white;
}


.fa-linkedin {
  background: #1a5874;
  color: white;
}

.fa-youtube {
  background: #1a5874;
  color: white;
}
                    .fa-instagram {
  background: #1a5874;
  color: white;
}
form{
    width:75%;
    margin-left:200px;
}

         </style>
</head>
<body>
    <marquee>Quality Is Our Policy.....</marquee>
    <nav class="navbar navbar-inverse" style="width:100%;">
        <div class="container-fluid" style="margin-left:200px; width:72%;">
            <div class="navbar-header">
                <a class="navbar-brand" href="InsuranceHome.aspx" style="color:red; background-color:white;"><i>RKR</i></a>
            </div>
            <ul class="nav navbar-nav">
                <li style="font-weight:bolder"><a href="CustomerLogin.aspx">CLAIM A POLICY</a></li>
                <li style="font-weight:bolder"><a href="CustomerLogin.aspx">DO PAYMENT</a></li>
                <li style="font-weight:bolder"><a href="ContactUs.aspx">CONTACT US</a></li>
                <li style="font-weight:bolder"><a href="#">SEARCH</a></li>
            </ul>
                
        </div>
    </nav>  
    <form id="form1" runat="server" class="well form-horizontal">
    <div class="form-group">
        <h1 style="color:white;">WELCOME</h1>
        <asp:Label ID="lblWelcome" runat="server" Text="Welcome" style="color:white;"></asp:Label>
        <hr />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br />
        <br />
         <h2 align="center"><b>Registration Form</b></h2><hr/>
        

        <div class="input-group">
         <asp:Label ID="lblInstitution" runat="server" Text="Institution Name" class="col-md-7 control-label"></asp:Label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="tbInstitution" runat="server" class="form-control" placeholder="Enter Institutionname"></asp:TextBox>
            </div>

         <br />
         <br />

        <div class="input-group">
         <asp:Label ID="lblRole" runat="server" Text="Role" class="col-md-4 control-label"></asp:Label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="ddlRole" runat="server" class="form-control selectpicker">
             <asp:ListItem>Business Owner</asp:ListItem>
             <asp:ListItem>CEO-President</asp:ListItem>
             <asp:ListItem>Finance Manager</asp:ListItem>
             <asp:ListItem>Other</asp:ListItem>
         </asp:DropDownList>
            </div>

         <br />
         <br />

        <div class="input-group">
            <asp:Label ID="lblState" runat="server" Text="State" class="col-md-4 control-label"></asp:Label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="ddlState" runat="server" class="form-control selectpicker">
             <asp:ListItem>Karnataka</asp:ListItem>
             <asp:ListItem>Kerala</asp:ListItem>
             <asp:ListItem>TamilNadu</asp:ListItem>
             <asp:ListItem>AndhraPradesh</asp:ListItem>
             <asp:ListItem>Maharashtra</asp:ListItem>
            </asp:DropDownList>
            </div>

        <br />
         <br />

        <div class="input-group">
         <asp:Label ID="lblSpecialization" runat="server" Text="Specialization" class="col-md-4 control-label"></asp:Label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="ddlSpecialization" runat="server" class="form-control selectpicker" AutoPostBack="True" OnSelectedIndexChanged="ddlSpecialization_SelectedIndexChanged">
             <asp:ListItem>Private Colleges And Universities</asp:ListItem>
             <asp:ListItem>Private Secondary Schools</asp:ListItem>
         </asp:DropDownList>
            <br />
            <br />
             <br />
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="lblPolicytype" runat="server" Text="PolicyType"></asp:Label>
            <br />
           

         <br />
         <br />

            <asp:DropDownList ID="ddlPolicytype" runat="server" CssClass="form-control selectpicker">
                <asp:ListItem>Premium1</asp:ListItem>
                <asp:ListItem>Premium2</asp:ListItem>
            </asp:DropDownList>
            </div>

            <br />
            <br />

            <div class="input-group">
         <asp:Label ID="lblinsamount" runat="server" Text="Insurance Amount" class="col-md-7 control-label"></asp:Label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="tbinsamount" runat="server" class="form-control" placeholder="Enter Insurance amount"></asp:TextBox>
            </div>
        <br />
        <br />

            <div class="input-group">
            <asp:Label ID="lblinstime" runat="server" Text="InsuranceTime" class="col-md-4 control-label"></asp:Label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="ddlinstime" runat="server" class="form-control selectpicker">
             <asp:ListItem>10</asp:ListItem>
             <asp:ListItem>15</asp:ListItem>
             <asp:ListItem>20</asp:ListItem>
             <asp:ListItem>25</asp:ListItem>
             <asp:ListItem>30</asp:ListItem>
            </asp:DropDownList>
            </div>

         <br />
         <br />
        <div class="input-group">
        <asp:Label ID="lblPremium" runat="server" Text="Premium" class="col-md-4 control-label"></asp:Label><br /><br />
    
       
            <asp:RadioButtonList ID="rblPremium" runat="server">
                <asp:ListItem Text="Premium1" Value="Premium1"/>
                <asp:ListItem Text="Premium2" Value="Premium2"/>
            </asp:RadioButtonList>
    
       
            </div>

         <br />
         <br />

        
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" class="btn btn-warning" OnClick="btnSubmit_Click" />
    </div>
    </form>

    <div>
                <footer class="container-fluid text-center">

                    <hr />
                    <a href="#" class="fa fa-linkedin"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-youtube"></a>

                    
                    <br />
                    <table style="color:white;width:70%;margin-left:200px">
                        <tr>
                            <td>Things you must know</td>
                            <td>Home</td>
                            <td>Privacy Policy</td>
                        </tr>
                        <tr>
                            <td>Why Insurance?</td>
                            <td>Report</td>
                            <td>FAQs</td>
                        </tr>
                        <tr>
                            <td>Welcome kit</td>
                            <td>Feedback</td>
                            <td>Careers</td>
                        </tr>
                    </table>
                    <br />
                    <p>Copyright   2020 RKR. All rights reserved. </p>

                </footer>
       </div>

    <nav class="navbar navbar-inverse navbar-fixed-bottom" style="width:100%;">
            <div class="container-fluid1" style="margin-left:200px; width:72%;">
                
                    <ul class="nav navbar-nav" style="margin-left:200px;">
                        <li style="width:400px; font-weight:bolder"><a href="CustomerLogin.aspx">CUSTOMER PORTAL</a></li>
                        <li style="width:400px;font-weight:bolder"><a href="AgentLogin.aspx">AGENT PORTAL</a></li>
                    </ul>
           </div>
        </nav>
</body>
</html>
