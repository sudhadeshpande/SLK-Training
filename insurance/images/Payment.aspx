<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

.btn {
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
 <div>   
<h2 style="color: mediumblue; text-align: center;" >Payment for Policy</h2>

<div class="row">
  <div class="col-75">
    <div class="container">
        <form id="form1" runat="server">
      
        <div class="row">
          <div class="col-50">
            <h3>Policy Holder Details</h3>
            <label for="Policy Number"><i class="fa fa-number"></i>Policy Number<label>
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<label for="fname"><i class="fa fa-user"></i>Full Name</label>
              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<label for="email"><i class="fa fa-envelope"></i>Email</label>
              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<label for="adr"><i class="fa fa-address-card-o"></i>Address</label>
              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;<label for="city"><i class="fa fa-institution"></i>City</label>
              <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<div class="row">
              <div class="col-50">
                <label for="state">State</label>
                  <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;</div>
              <div class="col-50">
                <label for="zip">Zip</label>
                  <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;</div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
              <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;<label for="ccnum">Credit card number</label>
              <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;<label for="expmonth">Exp Month</label>
              <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;<div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                  <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;</div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                  <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
&nbsp;<br />
                  <asp:Button ID="Btn" runat="server" BackColor="#33CC33" BorderColor="#00CC66" Font-Bold="True" Font-Size="15pt" ForeColor="Black" OnClick="Btn_Click" Text="Submit" Width="847px" />
                  <br />
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="lblMsg" runat="server"></asp:Label>
              </div>
            </div>
          </div>
          
        </div>
    
        &nbsp;</form>
    </div>
    </form>
</body>
</html>
