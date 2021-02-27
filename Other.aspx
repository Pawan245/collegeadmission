<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/App_Backend/Other.aspx.cs" Inherits="Other" %>
<!DOCTYPE html>
<html>
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
        .auto-style1
        {
            height: 26px;
            width: 200px;
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
                    <li  <%if (df2 > 1 && df2 <= 2) { Response.Write("class='progtrckr-done'"); } else if(df2 > 2) { Response.Write("class='progtrckr-done'"); } else{Response.Write("class='progtrckr-todo'"); };  %> ><%if (df2 == 1) { Response.Write("<a href='CriteriaDetails' style='text-decoration: none; color: black'>Criteria Details</a>"); } else { Response.Write("<a href='Criteria' style='text-decoration: none; color: green'>Criteria Details</a>"); } %></li>
                   
                   
                    
                                          <li  <%if (df2 >2 && df2 <= 3) { Response.Write("class='progtrckr-done'"); } else if(df2 > 3) { Response.Write("class='progtrckr-done'"); } else{Response.Write("class='progtrckr-todo'"); };  %> ><%if (df2 == 3) { Response.Write("<a href='AcademicDetails' style='text-decoration: none; color: black'>Academic Details</a>"); } else if (df2==3) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); } else if (df2==4) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); }  else if (df2==5) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); }  else { Response.Write("Postal Details"); } %></li>

                                         <li  <%if (df2 > 3 && df2 <= 4) { Response.Write("class='progtrckr-done'"); } else if(df2 >= 4) { Response.Write("class='progtrckr-done'"); } else{Response.Write("class='progtrckr-todo'"); };  %> ><%if (df2 == 4) { Response.Write("<a href='OtherDetails' style='text-decoration: none; color: black'>Other Details</a>"); } else if (df2 == 5) { Response.Write("<a href='Academic' style='text-decoration: none; color: green'>Academic Details</a>"); } else { Response.Write("Academic Details"); } %></li>


                    <li    <%String df = HttpContext.Current.Session["st"].ToString();if (df.Equals("5")){ Response.Write("class='progtrckr-done'"); }  %>  ><a href="#" class="c1">OtherDetails</a></li>

                </ol>
                <div id="container">
                    

                     <div id="colCx">
                            <dl>
                                    <dt>
                                        <label>Particulars of Scholarship,Prizes,Award, etc won.<span></span></label>
                                        <input name="win" maxlength="66" id="winp" type="text" runat="server" disabled="disabled" /></dt>
                                    <dd><span class="tip"></span>
                                        <span id="win" class="validator"></span>
                                    </dd>
                                </dl>

                         </div>




                      <div id="colA">
<fieldset>
                          <legend> curricular activities:</legend>
                           
                              
                          <dl>
                                    <dt>
                                        <label>NCC/NSS:<span></span></label><input name="FirstName" maxlength="50" id="FirstName"     runat="server" disabled="disabled"  onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName" class="validator"></span>
                                        <span class="tip"</span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Social Work:<span></span></label><input name="MiddleName" maxlength="50" id="MiddleName1"  runat="server" disabled="disabled"   onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName1" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Computing Skills:<span></span></label><input name="LastName" maxlength="50" id="LastName2"   runat="server" disabled="disabled"     onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName2" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                             



                          



                          <dl>
                                    <dt>
                                        <label>Sports/Games:<span></span></label><input name="FirstName1" maxlength="50" id="FirstName1"   runat="server" disabled="disabled" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName11" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Elocution/Writing:<span></span></label><input name="MiddleName1" maxlength="50" id="MiddleName12"  runat="server" disabled="disabled" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName12" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Others:<span></span></label><input name="LastName1" maxlength="50" id="LastName22"  runat="server" disabled="disabled"   onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName22" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>


                        

    </fieldset>
                          


                  








                  
                          <fieldset>

                           <dl>
                                    <dt>
                                        <label>Periodical/Journals you prefer to read regularly:<span></span></label><input name="FirstName2" maxlength="50" id="FirstName10" runat="server" disabled="disabled" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName110" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>How do you keep updated with current affairs:<span></span></label><input name="MiddleName2" maxlength="50" id="MiddleName120" runat="server" disabled="disabled" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName120" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Reason for selecting of this particular course:<span></span></label><input name="LastName2" maxlength="50" id="LastName220" runat="server" disabled="disabled" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName220" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>



                         <dl>
                                    <dt>
                                        <label>How this choice will help in building carrer?<span></span></label><input name="LastName3" maxlength="50" id="LastName2200" runat="server" disabled="disabled" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName2200" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>


</fieldset>

                        </div>

                              <div id="colB">


 
  










                        <img src="Images/logo_2.png" id="logoPrint" alt="" width="140">
                        <div id="open" style="display: block;">
                            
                            <fieldset>
                                <legend>Attachment Details:</legend>


                                <dl>
                                    <dt>
                                        <label>Attachment Name:<span>*</span></label>
                                        <select name="ddlGender" id="ddlGenderm" runat="server" disabled="disabled">
                                             <option value="df" selected="selected">Select Attachment</option>
                                            <option value="1">Gradution Marksheet</option>
                                            <option value="2">Medical Certificate-Physically Challenged Students</option>
                                            <option value="3">Non-Creamy Layer Certificate</option>
                                             <option value="4">Post Gradution Marksheet</option>
                                             <option value="5">SSC Marksheet</option>

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>
                                 <span id="spnFilePatht"></span>
                            <!--            <span id="statustxtt">0%</span>
                                <input type="file" id="FileUpload1t" style="display: none" /><br />

                               <div class="buttonwrap">
                                <input name="btnRegistered"   value="Upload" id="addqualificationlm" class="button" type="button" onclick="bh()" style="display: none" />




                            </div> -->
          <table id="datatable190" style="width:100%" class="row-border hover order-column cell-border" border="1">
    <thead class=" btn-primary btn-lg">
        <tr>
            

             <th style="">Sr.No</th>
            <th style="">Title</th>               
        
                       
        <th style="">Delete</th>

            
             
        </tr>
       
        
    </thead>
</table>

                               
                               

                  </fieldset>            




                              </div>


                        </div>



                    </div>

                    <div class="clear"></div>

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





                            <div class="buttonwrap">
                                                                <input type="button" id="prtmmk" runat="server" value="" name="tui"  hidden="hidden" />

                                <input name="btnRegistered" value="SAVE & PROCEED" id="btnRegisteredzx" class="button" type="button" hidden="hidden" />



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


    </form>
</body>
</html>

