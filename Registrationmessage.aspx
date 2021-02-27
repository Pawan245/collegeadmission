<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/App_Backend/Registrationmessage.aspx.cs" Inherits="Registrationmessage" %>





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


        <div align="center">
            <div style="display: table; height: 100px; overflow: hidden; background-color: White; border-radius: 6px; width: 80%">
                <img id="Img1" src="images/web.png" style="height: 90px; float: left; padding-left: 40px; padding-top: 5px" />
                <div style="display: table-cell; vertical-align: middle; width: 100%; text-align: center">
                    <div style="font-family: Calibri; font-size: xx-large; font-weight: normal; color: #b62a26">
                        College  Online Application Form
                    </div>
                </div>
                <img id="Image3" src="images/web.png" style="height: 90px; float: right" />
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
                    <span id="Label1" class="hlink2">Registration Successful with Registrationid: <%  try { String regid = HttpContext.Current.Session["regid"].ToString(); Response.Write(regid); } catch (Exception ex) { Response.Write("haaaaaa"); } %> and Password : <%   try {             String pass = HttpContext.Current.Session["pwd"].ToString();  Response.Write(pass);  } catch (Exception ex) { Response.Write("haaaaaa"); }%></span>
                </div>

                
            </div>
        </div>

        <center>
            <span id="Label2" class="hlink22"></span>
            <a id="HyperLink7" href="Login" style="font-family:calibri;font-size:20pt;">Login</a>
        </center>
        <div style="height: 10px">
        </div>
        <div align="center">
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
        <div align="center" style="width: 100%">
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
