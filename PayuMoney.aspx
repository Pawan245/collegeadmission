<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/App_Backend/PayuMoney.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html >
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >
    <form id="form1" runat="server" >
    <div>
    


    <div id ="frmError" runat="server">
     
      </div>
      <div class='container'>
    <div class='row' style='padding-top:25px; padding-bottom:25px;'>
        <div class='col-md-12'>
            <div id='mainContentWrapper'>
                <div class="col-md-8 col-md-offset-2">
                    <h2 style="text-align: center;">
                        Registration Fee
                    </h2>

                     <div id="isProduction" style="padding: 7px 10px -5px;background: #f96464; text-align: center">
            <p id="isProductionError" style="padding : 7px 10px "><b>THIS IS A  PayUMoney TEST . PLEASE DO NOT USE YOUR LIVE CARD OR BANK ACCOUNT HERE !! Use PayUMoney Test Card</b>  </p>
        </div>
                    <hr/>
                    <a href="#" class="btn btn-info" style="width: 100%;">Pay</a>
                    <hr/>
                    <div class="shopping_cart">


                         <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Total Amount</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="items">
                                                <div class="col-md-9">
                                                    <table class="table table-striped">
                                                       
                                                        <tr>
                                                            <td>
                                                                <ul>
                                                                    <li><%Response.Write("\u20B9 "); %>Item Price</li>
                                                                    
                                                                </ul>
                                                            </td>
                                                            <td>
         <asp:TextBox ID="amount" runat="server"  Text="1000" ReadOnly="true"/></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
    
   <input type="hidden" runat="server" id="key" name="key" />
      <input type="hidden" runat="server" id="hash" name="hash"  />
            <input type="hidden" runat="server" id="txnid" name="txnid" />


 <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <div style="text-align: center; width:100%;"><a style="width:100%;"
                                                                                        data-toggle="collapse"
                                                                                        data-parent="#accordion"
                                                                                        href="#collapseTwo"
                                                                                        class=" btn btn-success"
                                                                                        onclick="$(this).fadeOut(); $('#payInfo').fadeIn();">Continue
                                            to Billing Information»</a></div>
                                    </h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Contact
                                            and Billing Information</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Help us keep your account safe and secure, please verify your billing
                                            information.</b>
                                        <br/><br/>



      <table class="table table-striped" style="font-weight: bold;">
        <tr>
          <td><b>*Mandatory Parameters</b></td>
        </tr>
        <tr>
         
          
         
          <td>*First Name: </td>
          <td>
           <asp:TextBox ID="firstname" runat="server"  /></td>
        </tr>
        <tr>
          <td>*Email: </td>
          <td>
           <asp:TextBox ID="email" runat="server" /></td>
            </tr>
          <tr>
          <td>*Phone: </td>
          <td>
          <asp:TextBox ID="phone" runat="server" /></td>
        </tr>
        <tr style="display:none">
          <td>*Product Info: </td>
          <td colspan="3">
          <asp:TextBox ID="productinfo" runat="server" Text="test"   ReadOnly="true"  /></td>
        </tr>
       <tr style="display:none">
          <td>*Success URI: </td>
          <td colspan="3">
          <asp:TextBox ID="surl" runat="server" Text="http://www.webmazy.com/payumoney/ResponseHandling" TextMode="Url" ReadOnly="true" /></td>
        </tr>
        <tr style="display:none">
          <td>*Failure URI: </td>
          <td colspan="3">
          <asp:TextBox ID="furl" runat="server" Text="http://www.webmazy.com/payumoney/ResponseHandling" TextMode="Url" ReadOnly="true" /></td>
        </tr>
     <!--  <tr>
          <td><b>Optional Parameters</b></td>
        </tr>
        <tr>
          <td>Last Name: </td>
          <td>
          <asp:TextBox ID="lastname" runat="server" /></td>
          <td>Cancel URI: </td>
          <td>
           <asp:TextBox ID="curl" runat="server" /></td>
         
        </tr>
        <tr>
          <td>Address1: </td>
          <td>
            <asp:TextBox ID="address1" runat="server" /></td>
          <td>Address2: </td>
          <td>
          <asp:TextBox ID="address2" runat="server" /></td>
        </tr>
        <tr>
          <td>City: </td>
          <td>
          <asp:TextBox ID="city" runat="server" /></td>
          <td>State: </td>
          <td>
          <asp:TextBox ID="state" runat="server" /></td>
        </tr>
        <tr>
          <td>Country: </td>
          <td>
          <asp:TextBox ID="country" runat="server" /></td>
          <td>Zipcode: </td>
          <td>
            <asp:TextBox ID="zipcode" runat="server" /></td>
        </tr>
        <tr>
          <td>UDF1: </td>
          <td>
           <asp:TextBox ID="udf1" runat="server" /></td>
          <td>UDF2: </td>
          <td>
           <asp:TextBox ID="udf2" runat="server" /></td>
        </tr>
        <tr>
          <td>UDF3: </td>
          <td>
           <asp:TextBox ID="udf3" runat="server" /></td>
          <td>UDF4: </td>
          <td>
           <asp:TextBox ID="udf4" runat="server" /></td>
        </tr>
        <tr>
          <td>UDF5: </td>
          <td>
           <asp:TextBox ID="udf5" runat="server" /></td>
          <td>PG: </td>
          <td>
           <asp:TextBox ID="pg" runat="server" /></td>
        </tr> 
		<tr>
		<td>Service Provider: </td>
          <td>
           <asp:TextBox ID="service_provider" runat="server" Text="payu_paisa"/></td>
		</tr> 
        <tr>
        -->
            <td colspan="4"></td>
            
        </tr>
      </table>
     <br />
      <asp:Button ID="submit" Text="submit" Width="100px"  runat="server"  OnClick="submit_Click"  />


</div>
                                    </div>
                                </div>
                       
    </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        
          </div>
    </form>
</body>
</html>
