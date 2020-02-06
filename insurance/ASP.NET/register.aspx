<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">


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
#TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#TextBox7 {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
  color:cadetblue;
}

#Button1,#Button2,#Button3[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}
  
asp[type=submit]:hover {
  background-color: #45a049;
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
   
    <form id="form1" runat="server" >
        
         <div class="container">
  <div style="text-align:center">
    <h2>Register</h2>
    <p> Create a new account</p>
  </div>
        <div class="row">
    <div class="column">
      <img src="C:/Workarea/insurance/images/register.jpg" style="width:100%; height:600px">
    </div>
    <div >
         <div class="column">
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
    
             <asp:RequiredFieldValidator  runat="server" ControlToValidate="TextBox1" ErrorMessage="Your name is required" ForeColor="Red"></asp:RequiredFieldValidator>
    
        <br />
        <br />
             Last Name
        <asp:TextBox ID="TextBox2"   runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="last name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
             Email
        
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email Id is required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
             <br />
             <br />
             Contact No<br />
             <asp:TextBox ID="TextBox4"   runat="server" MaxLength="10"  ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="conatct number is required" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <br />
             City<br />
             <asp:TextBox ID="TextBox7"  runat="server"></asp:TextBox>
             <br />
             <br />
             Password<br />
             <asp:TextBox ID="TextBox5"  runat="server" TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="password is required" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <br />
             Confirm Password<br />
             <asp:TextBox ID="TextBox6"   runat="server" TextMode="Password"></asp:TextBox>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password didn't match" ForeColor="Red"></asp:CompareValidator>
             <br />
             <br />

        
        <asp:Button ID="Button1" runat="server" Text="Regitser" OnClick="Button1_Click" BorderStyle="Solid" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
            
             <asp:Label ID="lblMsg" runat="server" ForeColor="Blue"></asp:Label>
        <br />
        <br />
    </div>
    </div>
            
               </form>
        
</body>
</html>
