<%@ Page Language="C#" AutoEventWireup="true" CodeFile="claim.aspx.cs" Inherits="claim" %>

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
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
#btnclaim {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
    <h1>Claim form</h1>
    <p>Please fill in this form to Claim</p>
    <hr>
    <label for="policyno">policy No</label>
        <asp:TextBox ID="txtpno" runat="server"></asp:TextBox>
&nbsp;<label for="fname">Full Name</label>
        <asp:TextBox ID="txtfn" runat="server"></asp:TextBox>
&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Ship no"></asp:Label>
        <br />
        <asp:TextBox ID="txtsno" runat="server"></asp:TextBox>
&nbsp;<br />
        <label for="bootstrap-datepicker" >Date of leaving the sourse porto name</label><br>
        <asp:TextBox ID="txtdate1" runat="server" TextMode="Date"></asp:TextBox>
        <br><br>

        <br />

     <label for="bootstrap-datepicker" >Date of Loss</label><br>
        <asp:TextBox ID="txtdate2" runat="server" TextMode="Date"></asp:TextBox>
        <br><br>
 
        <br />
 
     <label>Brief description (includes cause of loss or damage)</label>
        <asp:TextBox ID="txtbdesc" runat="server"></asp:TextBox>
&nbsp;<label>Nature of goods </label>
        <br />
        <asp:TextBox ID="txtnogoods" runat="server"></asp:TextBox>
&nbsp;<br />

     <label for="upload">Lastly paid premium bill&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </label>
        &nbsp;<br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:Button ID="btnclaim" runat="server" Text="Claim" OnClick="btnclaim_Click" />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
  </div>
    </div>
    </form>
</body>
</html>
