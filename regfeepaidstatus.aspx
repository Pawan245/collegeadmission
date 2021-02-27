<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regfeepaidstatus.aspx.cs" Inherits="regfeepaidstatus" %>
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
   <script src="assets/js/jquery-2.1.4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.2.61/jspdf.min.js" type="text/javascript"></script> 



</head>
<body>
    <form runat="server" id="form1" >


        <input type="hidden" runat="server" id="key" name="key" />
      <input type="hidden" runat="server" id="hash" name="hash"  />
            <input type="hidden" runat="server" id="txnid" name="txnid" />
    <div class="page"  id="fty">
        <div class="header">
            <div class="title">
          <!--  <img src="images/payumoney.png" alt="PayUmoney Logo" /> -->
                <h1>
                  Payment: <% HttpContext.Current.Response.Write(Request.Form["status"].ToString()); %>
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
    <span class="text"><label>Transaction Number:</label></span>
    <span><% HttpContext.Current.Response.Write(Request.Form["txnid"].ToString()); %></span>
    </div>  




    <div class="dv">
    <span class="text"><label>Amount:</label></span>
    <span><% HttpContext.Current.Response.Write(Request.Form["amount"].ToString()); %></span>    
    </div> 
       
     
    <div class="dv">
    <span class="text"><label>Payment Mode:</label></span>
    <span><% HttpContext.Current.Response.Write(Request.Form["mode"].ToString()); %></span>
    </div>  
    

       
       
    <div class="dv">
    <span class="text"><label>Payment Date:</label></span>
    <span><% HttpContext.Current.Response.Write(Request.Form["addedon"].ToString()); %></span>
    </div>  
    

       

   
    <div class="dv">
    <span class="text"><label>Bank Name:</label></span>
    <span><% HttpContext.Current.Response.Write(Request.Form["bankcode"].ToString()); %></span>
    </div>  
    


        
    <div class="dv">
    <span class="text"><label>Card Number:</label></span>
    <span><% 

              try
              {


                  HttpContext.Current.Response.Write(Request.Form["cardnum"].ToString());


              }
              catch(Exception ex)
              {
   HttpContext.Current.Response.Write("N/A");
              }



                  %></span>
    </div>  
    

   
   
</div>


     <div style="margin-top:56px;text-align:center"><a style="text-decoration:none"  class="submitButton" href="javascript:myprint();" id="pr">Print</a>

         <a style="text-decoration:none"  class="submitButton" href="statusrecord" id="prc">Dashboard</a>


     </div>


        </div>

        <div id="editor"></div>
         
        <div class="clear">
            
	
        </div>
    </div>
    <div class="footer">
        <script>







    function myprint() {



        alert("kkkk");
        var doc = new jsPDF();
var specialElementHandlers = {
    '#editor': function (element, renderer) {
        return true;
    }
};


    doc.fromHTML($('#fty').html(), 15, 15, {
        'width': 170,
            'elementHandlers': specialElementHandlers
    });
    doc.save('sample-file.pdf');

    }


</script>

    </div>
    </form>
</body>
</html>

 
