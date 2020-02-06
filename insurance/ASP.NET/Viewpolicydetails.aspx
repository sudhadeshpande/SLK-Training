<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Viewpolicydetails.aspx.cs" Inherits="Viewpolicydetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title></title>
    <style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2 style="color:brown;">View your policy details&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </h2>
        <asp:Label ID="Label1" runat="server" Text="Policy No" Font-Bold="True"></asp:Label>
    &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtpn" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Customer_id"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
        <br />

      
        <br />
        Policy Type<br />
        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Ship No<br />
        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        Vessel name<br />
        <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Packing details<br />
        <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        Ship purchase amount in RS<br />
        <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Extra charges<br />
        <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />


        <br />


    </div>
    </form>
</body>
</html>
