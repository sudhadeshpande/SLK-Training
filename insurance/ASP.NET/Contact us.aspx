<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact us.aspx.cs" Inherits="Contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* Style inputs */
#TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5 {
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
     <form id="form1" runat="server">
          <div class="container">
   <div style="text-align:center">
        <h2>Contact Us</h2>
    <p> leave us a message:</p>
  </div>
      <div class="row">
    <div class="column">
      <img src="C:/Workarea/insurance/images/contact.jpg" style="width:100%">
        <h4> Contact Details:</h4>
           <p>9th cross,Devanahalli,<br />
               Pujanhalli<br />
               Airport Road<br />
                Bengaluru<br />
                     560010<br /></p> 
        
    </div>
    <div class="column">
        <label for="fname">First Name</label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="Page_Load"></asp:TextBox>
&nbsp;<label for="lname">Last Name</label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<label for="fname">City</label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<label for="number">Contact number</label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;<label for="subject">Subject</label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click" Text="Clear"  style="position:absolute; right:45px; " BackColor="#33CCFF" ForeColor="#003366"/>
        <br />
      <asp:Label ID="lblMsg" runat="server"></asp:Label>
      <br />

</form>
</body>
</html>
