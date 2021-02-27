<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/App_Backend/Personal.aspx.cs" Inherits="Personal" %>
<%@ Import Namespace=" Registration_process" %>
<%@ Import Namespace="Newtonsoft.Json" %>




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


              
               /*  var tu = $("#datepicker").val();
               
                 $(function () {
                     $("#datepicker").datepicker({ dateFormat: 'dd-mm-yy' ,changeYear: true,
                changeMonth: true,
                yearRange: '-100:+0'});
 
                     tu = $("#datepicker").val();





                 });

             })*/
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


.c1{
    text-decoration: none; color:green;
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
    <li class='active'><a href="javascript:nm();"  id="btr">Logout</a></li>
   
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
                    <li    <%String df = HttpContext.Current.Session["st"].ToString();if (df.Equals("1")){ Response.Write("class='progtrckr-done'"); }  %>   ><a href="#" class="c1">Personal Details</a></li>
                    <li  <%int df2 = Convert.ToInt32(HttpContext.Current.Session["st"]);if (df2 > 1 && df2 <= 2) { Response.Write("class='progtrckr-done'"); } else if(df2 > 2) { Response.Write("class='progtrckr-done'"); } else{Response.Write("class='progtrckr-todo'"); };  %> ><%if (df2 == 1) { Response.Write("<a href='CriteriaDetails' style='text-decoration: none; color: black'>Academic Details</a>"); } else { Response.Write("<a href='Criteria' style='text-decoration: none; color: green'>Academic Details</a>"); } %></li>
                   
                   <li  <%if (df2 > 2 && df2 <= 3) { Response.Write("class='progtrckr-done'"); } else if(df2 > 3) { Response.Write("class='progtrckr-done'"); } else{Response.Write("class='progtrckr-todo'"); };  %> ><%if (df2 == 2) { Response.Write("<a href='PostalDetails' style='text-decoration: none; color: black'>Postal Details</a>"); } else if (df2==3) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); }  else if (df2==4) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); } else if (df2==5) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); }  else { Response.Write("Postal Details"); } %></li>

                  
                </ol>
                <div id="container">
                    <div id="colB" class="pad">
                        <div id="loginbox">
                            <h3>Uploaded Documents</h3>

                            <div id="restrictappmessage">



                                <fieldset>
                                    <legend>Applicant's Photo:</legend>

                                    <dl>
                                        <dt>


                                            <input type="file" id="f_UploadImage" hidden="hidden"  /><br />
                                            <img id="myUploadedImg" alt="" style="width: 180px;"  runat="server"/>

                                            <input type="button" name="uploadx" value="Upload" id="picload" hidden="hidden" />
                                        </dt>

                                        <dt id="statustxt">0%</dt>


                                    </dl>
                                    <dl>
                                        <dt>(Allowed Type:.jpeg,.jpg,.png | Allowed Max size :150 KB)</dt>
                                    </dl>
                                </fieldset>


                            </div>



                            <div>

                                <fieldset>
                                    <legend>Applicant's Signature:</legend>

                                    <dl>
                                        <dt>
 <input type="file" id="f_UploadImagex" hidden="hidden"  /><br />
                                            <img id="myUploadedImgx" alt="" style="width: 180px;"  runat="server" />

                                            <input type="button" name="uploadx" value="Upload" id="picloadx" hidden="hidden"/></dt>
                                         <dt id="statustxtx">0%</dt>
                                    </dl>
                                    <dl>
                                        <dt>(Allowed Type:.jpeg,.jpg,.png | Allowed Max size :150 KB)</dt>
                                    </dl>
                                </fieldset>


                            </div>
                              <p style="font-size:small">Note:Fields with * are mandatory.<br/>Note:Full Name in Capitals as it appears on the Last Marksheet.



                        </p>
                       
                        </div>
                        
                    </div>


                    <div id="colA">











                        &nbsp;<div id="open" style="display: block">

                            <fieldset>
                                <legend>Personal Details:</legend>
                                <p style="display: none;">Please go through the <a href="Default.aspx">Guidelines</a> before Filling the Application Form</p>
                                <p class="impfieldmsg">Fields marked with the asterisk (*) are mandatory</p>
                                <p align="center"><span id="lblMsg" class="impfieldmsg"></span></p>
                                <dl>
                                    <dt>
                                        <label>First Name:<span>*</span></label><input name="FirstName" maxlength="50" id="FirstName" onkeyup="this.value=this.value.toUpperCase()"  type="text" readonly="true" runat="server" /></dt>
                                    <dd><span id="tipName" class="validator"></span>
                                        <span class="tip">Name should be as per Educational Documents</span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Middle Name:<span></span></label><input name="MiddleName" maxlength="50" id="MiddleName1" onkeyup="this.value=this.value.toUpperCase()"  type="text" readonly="true"  runat="server" /></dt>
                                    <dd><span id="tipName1" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                               
                                <dl>
                                    <dt>
                                        <label>Last Name:<span></span></label><input name="LastName" maxlength="50" id="LastName2" onkeyup="this.value=this.value.toUpperCase()"  type="text" readonly="true"  runat="server" /></dt>
                                    <dd><span id="tipName2" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>


                                 <dl>
                                    <dt>
                                        <label>Mobile Number:<span>*</span></label><input name="mobile" maxlength="10" id="mobilenumt" onkeypress="return numbersOnly(event);"   type="text" readonly="true" runat="server" /></dt>
                                    <dd><span id="mobt" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>




                                <dl>
                                    <dt>
                                        <label>Date of Birth:<span>*</span></label><input name="dob" type="text" id="datepicker" readonly="true"  runat="server" /><img class="ui-datepicker-trigger" src="Images/Calendar.png" alt="..." title="..." /></dt>
                                    <dd><span id="tipDOB" class="validator"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Gender:<span>*</span></label>
                                        <select name="ddlGender" id="ddlGender"   disabled="disabled">
                                             <option value="df" selected="selected">----------Select Gender----------</option>
                                               <%
                                       
                                      
                                       
                                       
                                       
                                       
                                       
                                        Class1 fr = new Class1();


                                       // String df = ret();


                                       String fg = fr.getallgenderbyprogramid("2");


                                       var result = JsonConvert.DeserializeObject<List<programdata>>(fg);

                                       foreach (var studentrecord in result)
                                       {
                                         Response.Write(" <option value='"+studentrecord.id+"'>"+studentrecord.name+"</option>");


                                       }

                                       %>




                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                <dl>
                                    <dt>
                                        <label>Blood Group:<span>*</span></label>
                                        <select name="ddlBloodgroup" id="ddlbloodgroupp" disabled="disabled" >
                                             
                                              <option value="df" selected="selected">----------Select Blood Group----------</option>
                                            <%
                                       
                                      
                                       
                                       
                                       
                                       
                                       
                                        Class1 frd = new Class1();


                                       // String df = ret();


                                       String fgg = frd.getallbloodbyprogramid("2");


                                       var resultg = JsonConvert.DeserializeObject<List<blddtl>>(fgg);

                                       foreach (var studentrecord in resultg)
                                       {
                                         Response.Write(" <option value='"+studentrecord.id+"'>"+studentrecord.name+"</option>");


                                       }

                                       %>


                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                
                                 <dl>
                                    <dt>
                                        <label>Caste:<span>*</span></label>
                                    <select name="ddlGendert" id="ddlGendert" disabled="disabled">
                                            <option value="df" selected="selected">----------Select Caste----------</option>
                                              <%
                                       
                                      
                                       
                                       
                                       
                                       
                                       
                                        Class1 frdd = new Class1();


                                       // String df = ret();


                                       String fggd = frdd.getallcastebyprogramid("2");


                                       var resultgd = JsonConvert.DeserializeObject<List<genderdtl>>(fggd);

                                       foreach (var studentrecord in resultgd)
                                       {
                                         Response.Write(" <option value='"+studentrecord.id+"'>"+studentrecord.name+"</option>");


                                       }

                                       %>
                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                <dl>
                                    <dt>
                                        <label>Disability:<span></span></label>
                                      <select name="ddlBloodgroupt" id="ddlbloodgrouppt" disabled="disabled">
                                            <option value="df" selected="selected">----------Select Disability----------</option>
                                                                                         <%
                                       
                                      
                                       
                                       
                                       
                                       
                                       
                                        Class1 frddd = new Class1();


                                       // String df = ret();


                                       String fggdd = frddd.getalldisabilityprogramid("2");


                                       var resultgdd = JsonConvert.DeserializeObject<List<dsbtl>>(fggdd);

                                       foreach (var studentrecord in resultgdd)
                                       {
                                         Response.Write(" <option value='"+studentrecord.id+"'>"+studentrecord.name+"</option>");


                                       }

                                       %>

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>













                                <dl>
                                    <dt>
                                        <label>Mother Tongue:<span></span></label><input name="mothertoungetxtName" maxlength="50" id="mothertounge" onkeyup="this.value=this.value.toUpperCase()"  type="text" readonly="true"  runat="server" /></dt>
                                    <dd><span id="tipName2x" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>



                                <dl>
                                    <dt>
                                        <label>Nationality:</label><input type="radio" id="sex" value="Indian" name="ty"   disabled="disabled"  runat="server" />Indian<input type="radio" id="sex1" value="NRI" name="ty"  disabled="disabled"   runat="server"/>NRI<input type="radio" id="sex2" value="Foreigner" name="ty" disabled="disabled"  runat="server" />Foreigner<input type="radio" id="ot" value="Other" name="ty" disabled="disabled"  runat="server" />Other</dt>
                                </dl>


                                
                                 <dl>
                                    <dt>
                                        <label>Area:</label><input type="radio" id="urban" value="Urban" name="tkk"   disabled="disabled" runat="server"/>Urban<input type="radio" id="rural" value="Rural" name="tkk"  disabled="disabled" runat="server"/>Rural</dt>
                                </dl>


                                <dl>
                                    <dt>
                                        <label>Email ID:<span>*</span></label><input name="txtEmail" maxlength="34" id="txtEmail"  type="text" readonly="true"  runat="server"  /></dt>
                                    <dd><span id="tiptxtEmail" class="validator"></span>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Confirm Email ID:<span>*</span></label><input name="txtEmail2" maxlength="34" id="txtEmail2"  type="text"  readonly="true"  runat="server"/></dt>
                                    <dd><span id="tiptxtEmail2" class="validator"></span><span class="tip">Credentals will be sent to this E-mail ID</span>
                                    </dd>

                                </dl>
                                
                                  <dl>
                                    <dt>
                                       <label>Father's Name:<span>*</span></label><input name="FatherName" maxlength="16" id="FatherName"  type="text" readonly="true"  runat="server"/>
                                    </dt>
                                    
                                </dl>

                                <dl>
                                    <dt>
                                       <label>Mother's Name:<span>*</span></label><input name="MotherName" maxlength="16" id="MotherName"  type="text"  readonly="true"   runat="server"/>
                                    </dt>
                                    
                                </dl>

                                <dl>
                                    <dt>
                                        <label>Parent's Occupation:<span>*</span></label>
                                        <select name="ddlpocc" id="ddlpoccu" disabled="disabled"  runat="server">
                                              <option value="df">----------Select Occupation----------</option>
                                            <option value="Business">Business</option>
                                            <option value="Government Jobs">Government Jobs</option>
                                            <option value="Other">Other</option>

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                <dl>
                                    <dt>
                                        <label>Parent's E-Mail ID<span>*</span></label><input name="Txtpemail" maxlength="16" id="TxtPemail" class="validator"   type="text" readonly="true"  runat="server"/>
                                    </dt>
                                    <dd>
                                        <span id="tippassword" class="validator"></span>
                                        <span class="tip"></span>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Adhar Number:<span></span></label><input name="txtAdhar" maxlength="16" id="txtConfirmPassword"  type="text"  readonly="true"  runat="server" /></dt>
                                    <dd><span id="tipAdhar" class="validator"></span>
                                    </dd>
                                </dl>

                                <dl>
                                    <dt>
                                        <label>Bank Account Number:<span>*</span></label><input name="txtAc" maxlength="16" id="txtAc" type="text" readonly="true"  runat="server" /></dt>
                                    <dd><span id="tipAc" class="validator"></span>
                                    </dd>
                                </dl>

                                <dl>
                                    <dt>
                                        <label>IFSC CODE:<span>*</span></label><input name="txtifsc" maxlength="16" id="txtifsc"  type="text"  readonly="true"  runat="server" /></dt>
                                    <dd><span id="tipifsc" class="validator"></span>
                                    </dd>
                                </dl>


                                 <dl>
                                    <dt>
                                        <label>Bank Name:<span>*</span></label><input name="bankname" maxlength="16" id="bankname"  type="text"  readonly="true" runat="server"/></dt>
                                    <dd><span id="tipifscuu" class="validator"></span>
                                    </dd>
                                </dl>
                              <!--  <dl>
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


                            <div class="buttonwrap">
                                <input name="btnRegistered" value="SAVE & PROCEED" id="btnRegistered" class="button" type="button" hidden="hidden" />




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


    </form>


    <script>

            $("#ddlGender").val('<%Response.Write(Session["kk"].ToString());%>');
            $("#ddlbloodgroupp").val('<%Response.Write(Session["kkt"].ToString());%>');

                    $("#ddlGendert").val('<%Response.Write(Session["kktm"].ToString());%>');
            $("#ddlbloodgrouppt").val('<%Response.Write(Session["kktmk"].ToString());%>');
    </script>



</body>
</html>

