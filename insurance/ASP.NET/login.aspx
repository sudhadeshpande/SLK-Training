<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <style type="text/css">
    body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* Style inputs */
#txtemail,#txtpassword {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
  #Button1,#Button2[type=submit] {
             background-color: #4CAF50;
             color: white;
             padding: 12px 20px;
             border: none;
             cursor: pointer;
         }
/* Style the container/contact section */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
        </style>
</head>
    <body>
    <form id="form1" runat="server">
         <div class="container">
  <div style="text-align:center">
  </div>
        <div class="row">
    <div class="column">
      <img src="C:/Workarea/insurance/images/login1.jpg" style="width:100%">
    </div>
    <div >
         <div class="column">
        <h1>Login</h1>
    <div style="height: 274px">
    
        Email<br />
        <br />
        <asp:TextBox ID="txtemail"  runat="server"></asp:TextBox>
        <br />
        <br />
        Password<br />
        <br />
        <asp:TextBox ID="txtpassword"  runat="server" TextMode="Password"></asp:TextBox>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
        <a href="register.aspx">Register Here</a><br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
&nbsp;</div>
             </div>
        </div>
            </div>
             </div>
    </form>
</body>
</html>
