<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buypolicy.aspx.cs" Inherits="buypolicy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <style type="text/css">
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;

}

* {
  box-sizing: border-box;

}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

#Btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.Btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>
    <h1 style="text-align:center; color:brown;">Buy Policy</h1>
    <br />
    <br />
    <form id="form1" runat="server">
        <div class="row">
        <div class="col-75">
        <div class="container">
        <div class="row">
          <div class="col-50">
             <h3 style="color:chocolate;text-align:center;">Customer details</h3>
              <label for="email">Customer Full Name</label><asp:TextBox ID="txtname" runat="server" Font-Bold="True"></asp:TextBox>
              <label for="email">Email</label>
              <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
              <label for="adr">Address</label>
              <asp:TextBox ID="txtaddr" runat="server"></asp:TextBox>
              <label for="city">City</label>
              <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
               <label for="state">State</label>
                  <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
               <label for="zip">Contact No</label>
                  <asp:TextBox ID="txtcno" runat="server" MaxLength="10"></asp:TextBox>
&nbsp;<div class="row">
              <div class="col-50">
               
&nbsp;</div>
              <div class="col-50">
               
&nbsp;</div>
            </div>
          </div>
         
          <div class="col-50">
                 <h3 style="color:chocolate; text-align:center;">Ship details</h3>
            <label for="shipno">Ship No</label>
              <asp:TextBox ID="txtshipno" runat="server"></asp:TextBox>
              <label for="shipmodel">Ship Model</label>
              <asp:TextBox ID="txtsm" runat="server"></asp:TextBox>
                <label for="amount">&nbsp;Ship Purchased amount</label>
                  <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
            &nbsp;<label for="vesselname">&nbsp;Vessel Name </label>
              <asp:TextBox ID="txtvessel" runat="server"></asp:TextBox>
           
                
              <br />
            
                <label for="policy">&nbsp;Type of policy required </label>
                 <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem>Select Policy</asp:ListItem>
                       <asp:ListItem>Time policy</asp:ListItem>
                  <asp:ListItem>Voyage Policy</asp:ListItem>
                  <asp:ListItem>Valued Policy</asp:ListItem>
                  <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
              <br />
              <asp:Label ID="Label1" runat="server" Text="Sourse Portname" Font-Bold="True"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
              &nbsp;&nbsp;<br />
              <asp:TextBox ID="txtspn" runat="server"></asp:TextBox>
              <br />
              <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Destination Portname"></asp:Label>
              <br />
              <asp:TextBox ID="txtdpn" runat="server"></asp:TextBox>
              <br />
              <asp:Label ID="packngdetails" runat="server" Text="Packing Details" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtdescr" runat="server">Write brief description about packing details here...</asp:TextBox>
           
                
              <br />
              <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Extracharges in RS"></asp:Label>
              <br />
              <asp:TextBox ID="txtexcharges" runat="server"></asp:TextBox>
           
                
          </div>
           
              <asp:Button ID="Btn" runat="server" Text="Submit" OnClick="Btn_Click" />
&nbsp;<br />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
          </div>
        </div>
    </div>
      </div>
    </form>
</body>
</html>
