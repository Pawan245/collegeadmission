<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/App_Backend/registraionfeepayment.aspx.cs" Inherits="registraionfeepayment" %>
<!DOCTYPE>
<html>
<head runat="server">
    <style type="text/css">
span.text 
{
	float:left;
	width:180px;
}

div.dv
{
	margin-bottom:5px;
}

</style>
    <title></title>
    <link href="extra/Sitet.css" rel="stylesheet" type="text/css" />
   

</head>
<body>
    <form runat="server" id="form1" >


        <input type="hidden" runat="server" id="key" name="key" />
      <input type="hidden" runat="server" id="hash" name="hash"  />
            <input type="hidden" runat="server" id="txnid" name="txnid" />
    <div class="page">
        <div class="header">
            <div class="title">
          <!--  <img src="images/payumoney.png" alt="PayUmoney Logo" /> -->
                <h1>
                  Payment <% HttpContext.Current.Response.Write(""); %>
                </h1>
            </div>
            <div class="loginDisplay">
                
            </div>
            <div class="clear hideSkiplink">
                
            </div>
        </div>
        <div class="main">          

 <div>    
    <div class="dv">
    <span class="text"><label>Amount:</label></span>
    <span><input type="text" id="amount" name="amount" runat="server"  disabled="disabled"/></span>    
    </div> 
       
     
    <div class="dv">
    <span class="text"><label>Product Info:</label></span>
    <span><input type="text" id="pinfo" name="pinfo" placeholder="Product Info" value="Registration fee" disabled="disabled" /></span>
    </div>  
    

     <div class="dv">
    <span class="text"><label> <input type="checkbox" id="tandc" runat="server"/> <a href="termsandconditions" target="_blank"   >Terms and Conditions</a></label></span>
   
    </div>   




     <div style="margin-top:56px;text-align:center"><asp:Button ID="submit" Text="Accept & Proceed" Width="180px"  runat="server"   OnClick="submit_Click"  /></div>
   
</div>




        </div>


         
        <div class="clear">

            
	
        </div>
    </div>
    <div class="footer">
        
    </div>
    </form>
</body>
</html>

 