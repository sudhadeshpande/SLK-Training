<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pamentdetails.aspx.cs" Inherits="pamentdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
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

#btn {
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

.btn:hover {
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
    <form id="form1" runat="server">
    <div>
   <h2 style="color: mediumblue; text-align: center;" >Payment for Policy</h2>

<div class="row">
  <div class="col-75">
    <div class="container">
               <div class="row">
          <div class="col-50">
            <h3 style="color:cadetblue;">Policy Holder Details</h3>
            <label for="Policy Number"><i class="fa fa-number"></i>Policy Number<label>
              <asp:TextBox ID="txtpn" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="Red" ControlToValidate="txtpn" ErrorMessage="Policy no is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<label for="fname"><i class="fa fa-user"></i>Full Name</label>
              <asp:TextBox ID="txtfn" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderColor="Red" ControlToValidate="txtfn" ErrorMessage="Name details are required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<label for="email"><i class="fa fa-envelope"></i>Email</label>
              <asp:TextBox ID="txte" runat="server"></asp:TextBox>
&nbsp;
&nbsp;
&nbsp;<div class="row">
              <div class="col-50">
                &nbsp;&nbsp;</div>
            </div>
         
          <div class="col-50">
            <h3 >Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label><label for="ccnum"><asp:TextBox ID="txtnoc" runat="server"></asp:TextBox>
              <br />
              <label for="cname">Premium amount<br />
              <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
              </label>
              <br />
              Credit card number</label>
              <asp:TextBox ID="txtccn" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BorderColor="Red" ControlToValidate="txtccn" ErrorMessage="credit card no is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<label for="expmonth">Exp Month</label>
              <asp:TextBox ID="txtem" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BorderColor="Red" ControlToValidate="txtem" ErrorMessage="exp month is required it is on credit car" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                  <asp:TextBox ID="txtey" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BorderColor="Red" ControlToValidate="txtey" ErrorMessage="exp year is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                  <asp:TextBox ID="txtcvv" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BorderColor="Red" ControlToValidate="txtcvv" ErrorMessage="cvv is required it is at the backside of the card " ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</div>
            </div>
          </div>
          
        </div>
     </div>

        <asp:Button ID="btn" runat="server" Text="Pay" OnClick="btn_Click" />
      <asp:Label ID="lblMsg" runat="server"></asp:Label>
&nbsp;
    </div>
    </form>
</body>
</html>
