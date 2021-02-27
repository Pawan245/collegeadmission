<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/App_Backend/Postal.aspx.cs" Inherits="Postal" %>








<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	Reference
</title>        
     <script src="js/jquery-1.12.3.js"></script>
     <script src="js/jquery.dataTables.min.js"></script>
        <link href="jquery-ui-1.12.1/jquery-ui.min.css" type="text/css" rel="stylesheet"/>
   
    <link href="jquery-ui-1.12.1/jquery-ui.css"  type="text/css" rel="stylesheet"/>
   
  
  
    <script src="jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
    <script src="jquery-ui-1.12.1/jquery-ui.min.js"     type="text/javascript"></script>
     <script src="js/jss.js"     type="text/javascript"></script>
     


   <link rel="stylesheet" href="css/jquery.dataTables.min.css" />
	         
    	 <script>

             $(document).ready(function () {


              
                 var tu = $("#datepicker").val();
                 //   alert(tu);
                 $(function () {
                     $("#datepicker").datepicker({ dateFormat: 'dd-mm-yy' ,changeYear: true,
                changeMonth: true,
                yearRange: '-100:+0'});
 
                     tu = $("#datepicker").val();





                 });

             })
  </script>		    
    <style>



.pk{



    border:none;
   width:26px;
   height:26px;
   background-color:white;

    background-image:url(../images/Refresh.png);
}

.pke{



    border:none;
  width:20px;
   height:20px;
   background-color:white;
  
    background-image:url(../images/loading.gif) ;
    background-repeat:no-repeat;
}


        td
        {
            font-size: large;
            font-weight: bold;
        }
        .button-dummy
        {
            background: rgb(66, 184, 221);
            height: 50px;
            width: 100px;
            color: white;
            font-weight: bold;
        }
        .heading
        {
            color: red;
            font-size: larger;
            font-weight: bold;
        }
        .hlink
        {
            color: white;
            text-decoration: underline;
        }
        .hlink:hover
        {
            color: black;
        }
        .hlink2
        {
            color: white;
            font-family: Calibri;
            font-size: large;
            font-weight: bold;
        }
        .hlink22
        {
            color: black;
            font-family: Calibri;
            font-size: large;
            font-weight: bold;
        }
    </style>

   

    <link href="CSS/tracker.css" rel="stylesheet" />
     <link href="CSS/style.css" rel="stylesheet" />

    

            
    
    

    <style type="text/css">
        .modal
        {
            position: fixed;
            top: 0;
            left: 0;
            background-color: black;
            z-index: 99;
            opacity: 0.8;
            filter: alpha(opacity=80);
            -moz-opacity: 0.8;
            min-height: 100%;
            width: 100%;
        }
        .loading
        {
            font-family: Arial;
            font-size: 10pt; /*border: 5px solid #67CFF5;*/
            width: 200px;
            height: 150px;
            display: none;
            position: fixed; /*background-color: White;*/
            z-index: 999;
        }
        #sse2
        {
            background-color: #b62a26;
            height: 20px;
            padding: 10px;
            border-radius: 6px;
            box-sizing: content-box;
            width: 79%;
            border-color: #b62a26;
            border-style: solid;
            border-width: 2px;
        }
        #sses2
        {
            margin: 0 auto; /*This will make the menu center-aligned. Removing this line will make the menu align left.*/
        }
        .style1
        {
            height: 10px;
            width: 298px;
        }
        .style2
        {
            height: 26px;
            width: 298px;
        }
        .style3
        {
            height: 26px;
            width: 173px;
        }
    </style>
</head>
<body style="background-color: #E6E6E6">
    <form name="form12" id="form2" runat="server">




        <div style="height: 20px">
        </div>


      <div align="center" id="appr" runat="server" style="display:none;">
            <div style="display: table; height: 100px; overflow: hidden; background-color: White; border-radius: 6px; width: 80%">
                <img id="Img1" src="images/web.png" style="height: 90px; float: left; padding-left: 40px; padding-top: 5px" />
                <div style="display: table-cell; vertical-align: middle; width: 100%; text-align: center">
                    <div style="font-family: Calibri; font-size: xx-large; font-weight: normal; color: #b62a26">
                        College  Online Application Form
                    </div>
                </div>
             
               <div id='cssmenu'>
<ul>
   <li class='active'><a href="javascript:void();" id="btr">Logout</a></li>
   
</ul>
</div>
            </div>
        </div>
        <div style="height: 5px">
        </div>
        <div id="Div1">
            <center>
            
        </center>
        </div>

        <div align="center">
            <div id="sse2">
                <div id="sses2">
                    <span id="Label1" class="hlink2">Candidate Application Form</span>
                </div>
            </div>
        </div>
        <div align="center">

            <div style="border: 1px solid; border-radius: 6px; background-color: white; width: 80%">
                <ol class="progtrckr" data-progtrckr-steps="6">
                    


                                           <li  <%int df2 = Convert.ToInt32(HttpContext.Current.Session["st"]);if (df2 > 1 && df2 <= 1) { Response.Write("class='progtrckr-done'"); } else if(df2 >1) { Response.Write("class='progtrckr-done'"); } else{Response.Write("class='progtrckr-todo'"); };  %> ><% Response.Write("<a href='Personal' style='text-decoration: none; color: green'>Personal Details</a>"); %></li>
                    <li  <%if (df2 > 1 && df2 <= 2) { Response.Write("class='progtrckr-done'"); } else if(df2 > 2) { Response.Write("class='progtrckr-done'"); } else{Response.Write("class='progtrckr-todo'"); };  %> ><%if (df2 == 1) { Response.Write("<a href='CriteriaDetails' style='text-decoration: none; color: black'>Academic Details</a>"); } else { Response.Write("<a href='Criteria' style='text-decoration: none; color: green'>Academic Details</a>"); } %></li>
                   
                   
                    
                    
                    
                    <li    <%String df = HttpContext.Current.Session["st"].ToString();if (df.Equals("3")){ Response.Write("class='progtrckr-done'"); }  %>  ><a href="#" class="c1">Postal Details</a></li>

                     


                </ol>
                <div id="container">
                    
                       <div id="colB" class="pad">
                        <div id="loginbox">
                            <h3></h3>

                           

                             <p style="font-size:small">Note:Fields with * are mandatory.



                        </p>

                        
                        </div>
                    </div>



                    <div id="colA">











                        &nbsp;<div id="open" style="display: block">
                             <fieldset>
                                  <legend>Postal Details:</legend>
                            <fieldset>
                                <legend>Current Postal Details:</legend>
                                
                                <dl>
                                    <dt>
                                        <label>Current Address:<span>*</span></label><textarea name="dob"  id="datepicker"    disabled="disabled" runat="server"></textarea></dt>
                                    <dd><span id="tipDOB" class="validator"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Country:<span>*</span></label>
                                        <select name="ddlGender" id="ddlGender" disabled="disabled" runat="server">
                                             <option value="df" selected="selected">------------Select Country------------</option>
                                            <option value="India">India</option>
                                            <option value="Other">Other</option>
                                           

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                <dl>
                                    <dt>
                                        <label>State:<span>*</span></label>
                                        <select name="ddlBloodgroup" id="ddlbloodgroupp" disabled="disabled" runat="server">
                                              <option value="df">------------Select State------------</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>

                                <dl>
                                    <dt>
                                        <label>City:<span>*</span></label><input name="city" maxlength="50" id="ciyn" onkeyup="this.value=this.value.toUpperCase()"  type="text" readonly="true" runat="server" /></dt>
                                    <dd><span id="tipName2x" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>


                                 <dl>
                                    <dt>
                                        <label>Pin Code/Zip Code:<span>*</span></label><input name="pin" maxlength="6" id="pinn" onkeyup="this.value=this.value.toUpperCase()"  type="text" readonly="true" runat="server" /></dt>
                                    <dd><span id="pinnn" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>


                                 <dl>
                                    <dt>
                                        <label>Landline No:<span></span></label><input name="land" maxlength="10" id="land" onkeypress="return numbersOnly(event);" type="text" readonly="true" runat="server" /></dt>
                                    <dd><span id="landl" class="validator"></span>
                                        <span class="tip">(Please provide STD Code)</span>

                                    </dd>
                                </dl>


                                 <dl>
                                    <dt>
                                        <label>Mobile Number:<span>*</span></label><input name="mobile" maxlength="10" id="mobilenum" onkeypress="return numbersOnly(event);"   type="text" readonly="true" runat="server" /></dt>
                                    <dd><span id="mob" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>




                               
                               

                              





                            </fieldset>


                                 
                                <dl>
                                    <dt>
                                        <input type="checkbox" id="seter" value="Indian" name="ty"   />Tick if Permanent Postal Details are same as Current Postal Address</dt>
                                </dl>

                                  <fieldset>
                                <legend>Permanent Postal Details:</legend>
                                
                                <dl>
                                    <dt>
                                        <label>Current Address:<span>*</span></label><textarea name="pdob"  id="pdatepicker" disabled="disabled" runat="server"></textarea></dt>
                                    <dd><span id="ptipDOB" class="validator"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Country:<span>*</span></label>
                                        <select name="pddlGender" id="pddlGender" disabled="disabled" runat="server">
                                             <option value="df" selected="selected">------------Select Country------------</option>
                                          <option value="India">India</option>
                                            <option value="Other">Other</option>
                                           

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                <dl>
                                    <dt>
                                        <label>State:<span>*</span></label>
                                        <select name="pddlBloodgroup" id="pddlbloodgroupp" disabled="disabled" runat="server">
                                             <option value="df">------------Select State------------</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>

                                <dl>
                                    <dt>
                                        <label>City:<span>*</span></label><input name="pcity" maxlength="50" id="pciyn" onkeyup="this.value=this.value.toUpperCase()"  type="text"  readonly="true" runat="server"/></dt>
                                    <dd><span id="ptipName2x" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>


                                 <dl>
                                    <dt>
                                        <label>Pin Code/Zip Code:<span>*</span></label><input name="ppin" maxlength="6" id="ppinn" onkeyup="this.value=this.value.toUpperCase()"  type="text"  readonly="true" runat="server"/></dt>
                                    <dd><span id="ppinnn" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>


                                 <dl>
                                    <dt>
                                        <label>Landline No:<span></span></label><input name="pland" maxlength="10" id="pland" onkeypress="return numbersOnly(event);"  type="text" readonly="true" runat="server" /></dt>
                                    <dd><span id="plandl" class="validator"></span>
                                        <span class="tip">(Please provide STD Code)</span>

                                    </dd>
                                </dl>


                                 <dl>
                                    <dt>
                                        <label>Mobile Number:<span>*</span></label><input name="pmobile" maxlength="10" id="pmobilenum"  onkeypress="return numbersOnly(event);"  type="text" readonly="true" runat="server" /></dt>
                                    <dd><span id="pmob" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>

                                



                               
                               

                              

<!--
                                <dl>
                                    <dt>
                                        <label>Please enter the code shown below<span>*</span></label>
                                        <input name="txtCode" maxlength="6" id="txtSecureCode" type="text" /></dt>
                                    <dd><span class="tip"></span>
                                        <span id="SptxtSecureCode" class="validator"></span>
                                    </dd>
                                </dl>

                                <dl>
                                    <dt>
                                        <label>Secure Code</label>
                                        <img src="" id="imgCaptcha" runat="server" />
                                        <dd><span class="tip">Refresh Code
                                            <input name="Button12" type="button" id="Button12" class="pk" /></span></dd>
                                    </dt>

                                    <dd><span id="captcha" class="validator"></span>
                                        <span id="rftxtSecureCode" class="validator" style="display: none;">Enter captcha  !</span>
                                    </dd>


                                    <dd><span class="validator">
                                        <span id="Span1" class="tip"></span>


                                    </span></dd>


                                </dl>

-->
                                <div style="height: 10px">
                                    <p style="text-align: center;" hidden="hidden" id="bj">
                                        <img src="Images/loadu.gif" /></p>
                                </div>



                            </fieldset>
</fieldset>
                            <div class="buttonwrap">
                                <input name="btnRegistered" value="SAVE & PROCEED" id="btnRegisterednt" class="button" type="button" hidden="hidden" />




                            </div>
                        </div>



                    </div>

                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div style="height: 10px">
        </div>
       <div align="center" runat="server" id="dq1"  style="display:none;">
            <div style="background-color: #555555; padding-left: 30px; border-style: solid; border-width: 2px; border-radius: 6px; width: 78%"
                align="left">
                <div style="height: 5px">
                </div>
                <table>
                    <tr>
                        <td style="font-family: Calibri; font-size: medium; text-align: left; width: 200px">
                            <a id="hphome" class="hlink" href="Home.aspx" target="_blank">Home</a>
                        </td>
                        <td style="font-family: Calibri; font-size: medium; text-align: left; width: 200px">
                            <a id="hpsitemap" class="hlink" href="SiteMap.aspx" target="_blank">Sitemap</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: medium; text-align: left; width: 200px">
                            <a id="hpabous" class="hlink" href="AboutUs.aspx" target="_blank">About Us</a>
                        </td>
                        <td style="font-family: Calibri; font-size: medium; text-align: left; width: 200px">
                            <a id="HyperLink3" class="hlink" href="Help.aspx" target="_blank">Help & FAQs</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: medium; text-align: left; width: 200px">
                            <a id="hpcontact" class="hlink" href="ContactUs.aspx" target="_blank">Contact Us</a>
                        </td>
                        <td style="font-family: Calibri; font-size: medium; text-align: left; width: 200px">
                            <a id="HyperLink6" class="hlink" href="TermsAndConditions.aspx" target="_blank">Terms & Conditions</a>
                        </td>
                    </tr>
                </table>
                <div style="height: 5px">
                </div>
            </div>
        </div>
       <div align="center" style="width: 100%;display:none" runat="server" id="dq2"  >
            <div style="display: table; overflow: hidden; background-color: #0099FF; width: 100%; border-radius: 6px; background-color: #b62a26; width: 80%">
                <div style="display: table-cell; vertical-align: middle; width: 100%; text-align: center">
                    <div style="font-family: Calibri; font-size: medium; font-weight: normal; color: white">
                        This website belongs to Online Application
                    <br />
                        Site Created and Maintained by
                        <br />
                        Site is best viewed in Google Chrome, Internet Explorer 9.0 and above at 1024 x
                    768 resolution<br />
                    </div>
                </div>
            </div>
        </div>
        <div style="height: 5px">
        </div>
        <div class="loading" align="center">
            <img src="Images/poj.gif" style="width: 40px; height: 40px" />
        </div>
 <script>




         function numbersOnly(event) {
        var key = (event.hasOwnProperty('charCode')) ? event.charCode : event.which;
        // Return "true" for all numbers and the delete (a.k.a., backspace) key.
        return ((key >= 48 && key <= 57) || key == 8 || key == 32 || key == 9) ? true : false;
         }
      </script>


    </form>
</body>
</html>

