﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="~/App_Backend/Academic.aspx.cs" Inherits="Academic" %>



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
                 //   alert(tu);
                 $(function () {
                     $("#datepicker").datepicker({ dateFormat: 'dd-mm-yy' ,changeYear: true,
                changeMonth: true,
                yearRange: '-100:+0'});
 
                     tu = $("#datepicker").val();





                 });*/

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
                   
                   
                    
                                          <li  <%if (df2 >2 && df2 <= 3) { Response.Write("class='progtrckr-done'"); } else if(df2 > 3) { Response.Write("class='progtrckr-done'"); } else{Response.Write("class='progtrckr-todo'"); };  %> ><%if (df2 == 3) { Response.Write("<a href='AcademicDetails' style='text-decoration: none; color: black'>Academic Details</a>"); } else if (df2==3) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); } else if (df2==4) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); } else if (df2==5) { Response.Write("<a href='Postal' style='text-decoration: none; color:green'>Postal Details</a>"); }   else { Response.Write("Postal Details"); } %></li>

                    

                    <li    <%String df = HttpContext.Current.Session["st"].ToString();if (df.Equals("4")){ Response.Write("class='progtrckr-done'"); }  %>  ><a href="#" class="c1">Academic Details</a></li>
                     <li  <%if (df2>4) { Response.Write("<a class='progtrckr-done'"); } else {Response.Write("class='progtrckr-todo'"); };  %>><%if (df2 == 4) { Response.Write("<a href='OtherDetails' style='text-decoration: none; color: black'>Other Details</a>"); } else if (df2 == 5) { Response.Write("<a href='Other' style='text-decoration: none; color:green'>Other Details</a>"); }  %></li>

                                         
                </ol>
                <div id="container">

                   
                    <div id="colC">











                        <img src="Images/logo_2.png" id="logoPrint" alt="" width="140">
                        <div id="open" style="display: block;">
                            
                            <fieldset>
                                <legend>Academic Details:</legend>
                               <div class="buttonwrap">
                                <input name="btnRegistered" value="ADD QUALIFICATIONS" id="addqualification" class="button" type="button" onclick="bh()"  hidden="hidden"/>




                            </div> 
          <table id="datatable190" style="width:100%" class="row-border hover order-column cell-border" border="1">
    <thead class=" btn-primary btn-lg">
        <tr>
            

             <th style="">Exam</th>
            <th style="">Board/University</th>
             <th style="">Passing Month</th>
                                     
            
                  
                        
            <th style="">Passing Year</th>
           
          <th style="">Edit</th>
                       
        <th style="">Delete</th>

            
             
        </tr>
       
        
    </thead>
</table>

                               
                               

                              

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

                           
                            <div class="buttonwrap">
                                <input name="btnRegistered" value="SAVE & PROCEED" id="btnRegisteredwe" class="button" type="button" runat="server" hidden="hidden" />

                                <input type="button" id="prtm" runat="server" value=""  hidden="hidden" />



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



    <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close" onclick="ht()">&times;</span>
    <p style="text-align:center;font-size:x-large">Add Qualification</p>

   <form id="fm">


       
                                <fieldset>
                                   
 <legend>Add Qualification:</legend>
                                     <dl>
                                    <dt>
                                        <label>Last Qualification<span>*</span></label>
                                        <select name="lastqulaficationn" id="lastqulafication">
                                             <option value="df" selected="selected">----------Select Last Qualification----------</option>
                                             <option value="SSC">SSC</option>
                                            <option value="HSC">HSC</option>
                                            <option value="Any_Gradute">Any Gradute</option>

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                    <dl>
                                    <dt>
                                        <label>Exam Name:<span>*</span></label><input name="FirstName" maxlength="50" id="FirstName" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName" class="validator"></span>
                                        <span class="tip">Name should be as per Educational Documents</span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Board/University Name:<span>*</span></label><input name="MiddleName" maxlength="50" id="MiddleName1" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName1" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <label>Special Subjects:<span></span></label><input name="LastName" maxlength="50" id="LastName2" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName2" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>

                                <dl>
                                    <dt>
                                        <label>Obtain Marks/Percentage/Grade Points:<span>*</span></label><input name="dob" type="text" id="datepicker" /></dt>
                                    <dd><span id="tipDOB" class="validator"></span>

                                    </dd>
                                </dl>
                                <dl>

                                 
                                    <dt>
                                        <label>Out of Marks/Percentage/Grade Points:<span>*</span></label><input name="mothertoungetxtName" maxlength="50" id="mothertounge" onkeyup="this.value=this.value.toUpperCase()"  type="text" /></dt>
                                    <dd><span id="tipName2x" class="validator"></span>
                                        <span class="tip"></span>

                                    </dd>
                                </dl>
                                         <dl>
                                    <dt>
                                        <label>Passing Month:<span>*</span></label>
                                        <select name="ddlGender" id="ddlGender">
                                             <option value="df" selected="selected">----------Select Passing Month----------</option>
                                            <option  value='Janaury'>Janaury</option>
    <option value='February'>February</option>
    <option value='March'>March</option>
    <option value='April'>April</option>
    <option value='May'>May</option>
    <option value='June'>June</option>
    <option value='July'>July</option>
    <option value='August'>August</option>
    <option value='September'>September</option>
    <option value='October'>October</option>
    <option value='November'>November</option>
    <option value='December'>December</option>

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                    
                                <dl>
                                    <dt>
                                        <label>Passing Year:<span>*</span></label><input name="txtEmail" maxlength="34" id="txtEmail"  type="text" /></dt>
                                    <dd><span id="tiptxtEmail" class="validator"></span>
                                    </dd>
                                </dl>

      <dl>
                                    <dt>
                                        <label>Passing Class:<span>*</span></label>
                                        <select name="ddlGender2" id="ddlGender2">
                                             <option value="df" selected="selected">----------Select Passing Class----------</option>
                                            <option value="1">First Class</option>
                                            <option value="2">Second Class</option>
                                            <option value="3">Third Class</option>

                                        </select></dt>
                                    <dd><span class="tip"></span></dd>
                                </dl>


                                    
                                <dl>
                                    <dt>
                                        <label>Seat No:<span>*</span></label><input name="txtEmail2" maxlength="34" id="txtEmail2"  type="text" /></dt>
                                    <dd><span id="tiptxtEmail2" class="validator"></span>
                                    </dd>
                                </dl>


                                    
                                </fieldset>



   </form>         
     <div style="height: 10px">
                                    <p style="text-align: center;" hidden="hidden" id="bj2">
                                        <img src="Images/loadu.gif" /></p>
                                </div>
 <div style="text-align:center ;height: 20px">      
<input type="button" id="sdk"  name="Refreshttk" value="Submit"/>
            </div>
  </div>

   

</div>


<script>

    function bh() {
        var modal = document.getElementById('myModal');
        modal.style.display = "block";
        $("#t1").focus();

        
    }

    function ht()
    {
        var modal = document.getElementById('myModal');

        modal.style.display = "none";
    }


    function htx() {
        var modal = document.getElementById('myModalx');

        modal.style.display = "none";
    }
</script>


        
    <style>
        .modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 15% auto; /* 15% from the top and centered */
    padding: 20px;
    border: 1px solid #888;
    width: 60%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
    </style>
</body>
</html>

