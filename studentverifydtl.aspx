<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/App_Backend/studentverifydtl.aspx.cs" Inherits="studentverifydtl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" language="hi"><title>
	Common Application Form
</title><link href="extra/mainc.css" rel="stylesheet" type="text/css" /><meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" /><meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" /><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /><meta http-equiv="Cache-Control" content="no-cache" /><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /><link href="/styles/chromestyle.css" type="text/css" />
    <script src="extra/jquery-1.4.2.min.js" type="text/javascript"></script>
   <link type="text/css" href="extra/basic.css" rel="stylesheet" media="screen" /><link href="extra/font-awesome.min.css" rel="stylesheet" type="text/css" />
     




    <script src="js/studentverifyjsdtl.js" type="text/javascript"></script>






    <style type="text/css"> 
#example1 {
  border: 1px solid;
  padding: 10px;
  box-shadow: 5px 10px 8px 10px #888888;
}


</style>



    <style type="text/css">
        body
        {
            margin-left: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            border: none;
            background-color: #f7f7f7;
        }
         .Uppercase
        {
            text-transform: uppercase;
        }
        .redbold
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 30px;
            font-weight: bold;
            color: #C60000;
            text-decoration: none;
            margin-bottom:8px;
            display: block;
        }
        .smlfont
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            font-weight: bold;
            color: #333333;
            text-decoration: none;
        }
        .inputitem
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            font-weight: normal;
            color: #000000;
            font-weight: bold;
            background-color: #f8f5d6;
        }
        .bordernew
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            font-weight: bold;
            color: #000000;
            text-decoration: none;
            border: 1px solid #000000;
            background-color: #f8f5d6;
            width: 230px;
            height: auto;
        }
        .countdwnrtxt2
        {
            padding-top: 5px;
            font-family: Arial, Helvetica, sans-serif;
            text-decoration: none;
            color: #000000;
            font-size: 14px;
            font-weight: bold;
        }
        input[type=radio], input[type=checkbox]
        {
            background-color: #f8f5d6;
        }
        #tableOption td
        {
            background-color: #fff;
        }
        .optionbtnNew
        {
            background-color: #75bf52; *background-color:#75bf52;background-repeat:repeat-x;text-shadow: 01px1pxrgba(0, 0, 0, 0.25);
            color: #fff;
            font-size: 13px;
            font-weight: bold;
            padding: 0px;
            width: 150px;
            cursor: pointer;
            margin-top: 5px;
            height: 29px;
            background-image: -moz-linear-gradient(top, #82d05f, #75bf52);
        }
        .optionbtnNew:hover
        {
            background-color: #6ab148; *background-color:#6ab148;background-repeat:repeat-x;background-image: -moz-linear-gradient(top, #6ab148, #6ab148);
        }
        .img-brdr img {border: 1px solid #CCCCCC !important;padding: 3px;margin-top: 8px;}
     table tr td{ position:relative;}
        #lblphototext{ position:absolute;left: 0px;width: 100%;}
        
        .whiteTxt
        {
            color: #FFF;
        }
        .redTxt
        {
            color: #ff7200;
        }
         .dotBorder.nobot-border tr:last-child td
        {
            border-bottom: 0;
            font-size: 11px;
        }
        
           i.right
        {
            float: right;
            color: #47ce0b;
            font-size: 18px;
            display: none;
        }
        i.wrong
        {
            float: right;
            color: #d81e1e;
            font-size: 18px;
            display: none;
        }
        i.inright
        {
            float: right;
            color: #47ce0b;
            font-size: 18px;
            display: none;
        }
        i.inwrong
        {
            float: right;
            color: #d81e1e;
            font-size: 18px;
            display: none;
        }
          i.eright
        {
            float: right;
            color: #47ce0b;
            font-size: 18px;
            display: none;
        }
        i.ewrong
        {
            float: right;
            color: #d81e1e;
            font-size: 18px;
            display: none;
        }
        i.einright
        {
            float: right;
            color: #47ce0b;
            font-size: 18px;
            display: none;
        }
        i.einwrong
        {
            float: right;
            color: #d81e1e;
            font-size: 18px;
            display: none;
        }
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            font-weight: normal;
            color: #FFFFFF;
            text-decoration: none;
            height: 43px;
        }
        .auto-style2 {
            height: 43px;
        }
    </style>
   
</head>
<body >
    <form name="form1"  id="example1">
<div>

</div>

<div>

</div>
   
    <div style="padding: 2px; width: 950px; margin: auto; background: #fff;">
        <table width="100%" border="0" align="center" class="dotBorder" cellpadding="5" cellspacing="0">
            <tr>
                <td valign="top">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="85" align="left" class="CAFheading" valign="top">
                                <img src="../images/BiharLogo.png" />
                            </td>
                            <td width="742" height="22" align="center" class="style2">
                                <span class="CAFheading" id="common">Common Application Form</span><br />
                                <span id="adm">for Admission to Degree Colleges Session (2018-21)</span><br />
                                <span class="normalfont" id="department" style="display: none">Bihar School Examination
                                    Board, Government of Bihar </span>
                                <br />
                            </td>
                            <td width="248" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="center" class="redbold">
                                            <label id="lblp3">
                                              <img id="imgg" runat="server" />
                                            </label>
                                        </td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td height="5">
                            </td>
                            <td valign="top">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div style="padding: 0px; width: 950px; margin: auto;">
        <table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="5">
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#cccccc">
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td>
                                            <table width="100%" class="dotBorder" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td colspan="6" class="smlfont">
                                                        <strong>
                                                            <label id="lblN1">
                                                                1.</label>
                                                            &nbsp;&nbsp;&nbsp;
                                                            <label id="lbltit">
                                                                Name of the Board from which you have passed the Intermediate exam ? 
                                                            </label>
                                                        </strong>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="280px">
                                                        <label id="lblCouncilName" style="color: #8B0000">
                                                            Name of the Examination Board <font color="#FF3333" size="3">*</font>
                                                            <br />
                                                           
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label id="lblYOP" style="color: #8B0000">
                                                            Year of Passing <font color="#FF3333" size="3">*</font> 
                                                    </td>
                                                    <td width="300px">
                                                        <label id="lblExamType" style="color: #8B0000">
                                                            Exam Type <font color="#FF3333" size="3">*</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select name="ddlBoard" id="ddlBoard" class="inputitem"  style="width:97%;">
                                                            <%

                                                                switch(Session["df"].ToString().ToUpper())
                                                                {
                                                                    case "BSEBPATNA":

                                                                HttpContext.Current.Response.Write("<option value='"+Session["df"].ToString()+"' selected='selected'>BIHAR SCHOOL EXAMINATION BOARD ,PATNA</option>");
                                                                        break;
                                                                }

                                                                 %>



</select>
                                                    </td>
                                                    <td>
                                                        <select name="ddlYOP" id="ddlYOP" class="inputitem" onchange="ExamType();" style="width:97%;" runat="server">
	<option value="0">--SELECT--</option>
                                                            	<option value="2019">2019</option>

	<option value="2018">2018</option>
	<option value="2017">2017</option>
	<option value="2016">2016</option>
	<option value="2015">2015</option>
	<option value="2014">2014</option>
	<option value="2013">2013</option>
	<option value="2012">2012</option>
	<option value="2011">2011</option>
	<option value="2010">2010</option>
	<option value="2009">2009</option>
	<option value="2008">2008</option>
	<option value="2007">2007</option>
	<option value="2006">2006</option>
	<option value="2005">2005</option>
	<option value="2004">2004</option>
	<option value="2003">2003</option>
	<option value="2002">2002</option>
	<option value="2001">2001</option>
	<option value="2000">2000</option>
	<option value="1999">1999</option>
	<option value="1998">1998</option>
	<option value="1997">1997</option>
	<option value="1996">1996</option>
	<option value="1995">1995</option>
	<option value="1994">1994</option>
	<option value="1993">1993</option>
	<option value="1992">1992</option>
	<option value="1991">1991</option>
	<option value="1990">1990</option>
	<option value="1989">1989</option>
	<option value="1988">1988</option>
	<option value="1987">1987</option>
	<option value="1986">1986</option>
	<option value="1985">1985</option>
	<option value="1984">1984</option>
	<option value="1983">1983</option>
	<option value="1982">1982</option>
	<option value="1981">1981</option>
	<option value="1980">1980</option>
	<option value="1979">1979</option>
	<option value="1978">1978</option>
	<option value="1977">1977</option>
	<option value="1976">1976</option>
	<option value="1975">1975</option>
	<option value="1974">1974</option>
	<option value="1973">1973</option>
	<option value="1972">1972</option>
	<option value="1971">1971</option>
	<option value="1970">1970</option>
	<option value="1969">1969</option>
	<option value="1968">1968</option>
	<option value="1967">1967</option>
	<option value="1966">1966</option>
	<option value="1965">1965</option>
	<option value="1964">1964</option>
	<option value="1963">1963</option>
	<option value="1962">1962</option>

</select>
                                                    </td>
                                                    <td>
                                                        <input id="rbtnAnnual" type="radio" name="Exam" value="rbtnAnnual" /><label for="rbtnAnnual">Annual / </label>
                                                        <input id="rbtnSuppl" type="radio" name="Exam" value="rbtnSuppl" /><label for="rbtnSuppl">Improvement</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label id="lblDOB" style="color: #8B0000">
                                                            Date of Birth <font color="#FF3333" size="3">*</font> </label>
                                                    </td>
                                                    <td id="tdRollCdH">
                                                        <label style="color: #8B0000">
                                                            Roll Code <font color="#FF3333" size="3">*</font></label>
                                                    </td>

                                                    <td>
                                                        <label id="lblRoll" style="color: #8B0000">
                                                            Roll Number <font color="#FF3333" size="3">*</font> </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select name="ddlDay" id="ddlDay" class="inputitem"  style="width:97%;">
	 <%

                                                                
                                                                HttpContext.Current.Response.Write("<option value='"+Session["dob"].ToString()+"' selected='selected'>"+Session["dob"].ToString()+"</option>");
                                                               

                                                                 %>


</select>
                                                       
                                                    </td>
                                                    <td id="tdRollCdF">
                                                        <input name="txtRollCode" type="text" maxlength="15" id="txtRollCode" class="inputitem" onkeypress="return RestrictSpace();" style="width:97%;" />
                                                    </td>

                                                    <td>
                                                        <input name="txtBoardRoll" type="text" maxlength="12" id="txtBoardRoll" class="inputitem" autocomplete="off" onKeyUp="return checkBoardRoll(&#39;txtBoardRoll&#39;,&#39;Special characters are not allowed&#39;);" Onblur="CHSEMark();" onkeypress="return RestrictSpace();" style="width:97%;" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td>
                                                        <table width="100%" border="0" cellpadding="2" cellspacing="0">
                                                            <tr>
                                                                <td width="85%">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                                                        <tr>
                                                                            <td bgcolor="#FFFFFF">
                                                                                <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                                                                    <tr>
                                                                                        <td width="100%" colspan="4" bgcolor="#FFFFFF">
                                                                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tr>
                                                                                                    <td height="3px">
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td width="3%">
                                                                                                        <strong>
                                                                                                            <label id="lblN2">
                                                                                                                2.
                                                                                                            </label>
                                                                                                        </strong>
                                                                                                    </td>
                                                                                                    <td width="25%">
                                                                                                        <strong>
                                                                                                            <label id="lblApplicantName" style="color: #8B0000">
                                                                                                                Applicant's Name <font color="#FF3333" size="3">*</font></label></strong>
                                                                                                    </td>
                                                                                                    <td width="72%">
                                                                                                        <input name="txtApplName" type="text" maxlength="100" id="txtApplName" class="inputitem Uppercase" autocomplete="off" onKeyUp="return CheckSpeCharacter(&#39;txtApplName&#39;,&#39;Special characters are not allowed&#39;);" onkeydown="return checkNumber(&#39;txtApplName&#39;);" style="width:100%;"  runat="server"/>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td height="3px">
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <strong>
                                                                                                            <label id="lblN3">
                                                                                                                3.
                                                                                                            </label>
                                                                                                        </strong>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <strong>
                                                                                                            <label id="lblFname" style="color: #8B0000">
                                                                                                                Father's Name <font color="#FF3333" size="3">*</font></label></strong></td>
                                                                                                    <td>
                                                                                                        <input name="txtFatherName" type="text" maxlength="100" id="txtFatherName" class="inputitem Uppercase" autocomplete="off" onKeyUp="return CheckSpeCharacter(&#39;txtFatherName&#39;,&#39;Special characters are not allowed&#39;);" onkeydown="return checkNumber(&#39;txtFatherName&#39;);" style="width:100%;"  runat="server"/>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td height="3px">
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <strong>
                                                                                                            <label id="lblN4">
                                                                                                                4.
                                                                                                            </label>
                                                                                                        </strong>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <strong>
                                                                                                            <label id="lblMname" style="color: #8B0000">
                                                                                                                Mother's Name <font color="#FF3333" size="3">*</font></label></strong></td>
                                                                                                    <td>
                                                                                                        <input name="txtMotherName" type="text" maxlength="100" id="txtMotherName" class="inputitem Uppercase" autocomplete="off" onKeyUp="return CheckSpeCharacter(&#39;txtMotherName&#39;,&#39;Special characters are not allowed&#39;);" onkeydown="return checkNumber(&#39;txtMotherName&#39;);" style="width:100%;" runat="server" />
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr id="trCouncilMark">
	<td>
                                                                                                        <strong></strong>
                                                                                                    </td>
</tr>

                                                                                                <tr id="trMarkVerify" style="display: none">
                                                                                                    <td>
                                                                                                    </td>
                                                                                                    <td id="Td1" colspan="2">
                                                                                                        <input type="hidden" name="hdnMarkVerification" id="hdnMarkVerification" />
                                                                                                    </td>

                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td width="130" align="center" valign="top" class="img-brdr" style="padding: 3px;
                                                        cursor: hand;">
                                                        <div id='imgSpan'>
                                                            <label id="lblphototext">
                                                                Upload your photo <font color="#FF3333" size="3">*</font>
                                                            </label>
                                                        </div>
                                                        <br />
                                                        <img id="ImgAppl" onclick="return OpenUpload();" src="../images/noimage.JPG" style="height:130px;width:130px;border-width:0px;cursor: pointer" runat="server" />
                                                        <br />
                                                        <span style="font-size: x-small; font-weight: bold; color: #8B0000">(JPG, JPEG, GIF,BMP or PNG
                                                            files only)</span>
                                                    </td>
                                                    <td valign="top">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="10">
                </td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF">
                    <table width="100%" border="0" class="dotBorder" cellspacing="0" cellpadding="2">
                        <tr>
                            <td width="1%">
                                <strong>
                                    <label id="lblN9">
                                        5.
                                    </label>
                                </strong>
                            </td>
                            <td width="99%">
                                <label id="lbl9" style="color: #8B0000">
                                    <strong>Details of Mark Secured in Intermediate Examination | </strong>
                                </label>
                                <font color="#FF3333" size="3">*</font> &nbsp;<span class="redtxtind"><strong>&nbsp;</strong></span>
                                <div style="color: Blue; font-weight: bold" id="dv9">
                                  
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="2" class="dotBorder">
                                    <tr>
                                        <td width="1%" valign="top" bgcolor="#1567A1" class="whitetxt">
                                            <strong>
                                                <label id="lblN9a">
                                                    a.
                                                </label>
                                            </strong>
                                        </td>
                                        <td width="100%" colspan="2">
                                            <input id="rbtArts" type="radio" name="PrevStrem" value="rbtArts" onclick="showHideChemistry();clearMarks();" runat="server" /><label for="rbtArts">Arts</label>
                                            <input id="rbtScience" type="radio" name="PrevStrem" value="rbtScience" onclick="showHideChemistry();clearMarks();" runat="server" /><label for="rbtScience">Science</label>
                                            <input id="rbtCommerce" type="radio" name="PrevStrem" value="rbtCommerce" onclick="showHideChemistry();clearMarks();" runat="server"  /><label for="rbtCommerce">Commerce</label>
                                          
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#1567A1">
                                        </td>
                                        <td width="100%" valign="top" colspan="2">
                                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
                                                <tr>
                                                    <td bgcolor="#666666" class="whitetxt">
                                                        <strong>Maximum Mark
                                                            </strong>&nbsp;</td>
                                                    <td bgcolor="#666666" class="whitetxt">
                                                        <strong>Total Mark Secured
                                                            </strong>
                                                    </td>
                                                    <td bgcolor="#666666" class="whitetxt" id="tdComp12"  style="display:none;">
                                                        <strong>Compulsory(1+2)</strong>

                                                    </td>
                                                    <td bgcolor="#666666" class="whitetxt" id="tdComp3"  style="display:none;">
                                                        <div id="divBseb">
                                                            <strong>
                                                                <span id="lblBseb">Compulsory 3</span>
                                                            </strong>
                                                        </div>
                                                        <div id="divOther" style="display: none;">
                                                            <strong>
                                                                <span id="lblOther">English / Hindi</span>
                                                            </strong>
                                                        </div>
                                                    </td>
                                                    <td id="tdChemistryH" bgcolor="#666666" class="whitetxt" style="display:none;">
                                                        <strong>Chemistry</strong></td>

                                                    <td bgcolor="#666666" class="whitetxt" id="tdMathH"  style="display:none;">
                                                        <strong>Mathematics</strong></td>
                                                    <td bgcolor="#666666" class="whitetxt" id="tdBiologyH"  style="display:none;">
                                                        <strong>Biology</strong></td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="#FFFFFF">
                                                        <input name="txtMaxMark" type="text" maxlength="4" id="txtMaxMark" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtMaxMark&#39;,&#39;Please write only numeric values for MARKS&#39;,4);" onblur="return BoardMarkCheck();" style="width:97%;"  runat="server"/>
                                                    </td>
                                                    <td bgcolor="#FFFFFF">
                                                        <input name="txtTotMark" type="text" maxlength="4" id="txtTotMark" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtTotMark&#39;,&#39;Please write only numeric values for MARKS&#39;,4);" style="width:97%;"  runat="server"/>
                                                    </td>
                                                    <td bgcolor="#FFFFFF" id="tdNRBMIL"  style="display:none;">
                                                        <input name="txtMath" type="text" maxlength="3" id="txtMath" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtMath&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:97%;" />
                                                    </td>
                                                    <td bgcolor="#FFFFFF" id="tdEnglish"  style="display:none;">
                                                        <input name="txtEnglish" type="text" maxlength="3" id="txtEnglish" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtEnglish&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:97%;" />
                                                    </td>
                                                    
                                                    <td id="tdChemistryB" bgcolor="#FFFFFF" style="display:none;">
                                                        <input name="txtScience" type="text" maxlength="3" id="txtScience" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtScience&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:97%;" />
                                                    </td>

                                                    <td id="tdMathB" bgcolor="#FFFFFF" style="display:none;">
                                                        <input name="txtMathematics" type="text" maxlength="3" id="txtMathematics" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtMathematics&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:97%;" />
                                                    </td>

                                                    <td id="tdBiologyB" bgcolor="#FFFFFF" style="display:none;">
                                                        <input name="txtBiology" type="text" maxlength="3" id="txtBiology" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtBiology&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:97%;" />
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="7" style="color: Blue; font-weight: bold; background:white;" id="dv10">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top" bgcolor="#1567A1" class="whitetxt">
                                            <strong>
                                                <label id="lblN9b">
                                                    b.
                                                </label>
                                            </strong>
                                        </td>
                                        <td>
                                            <label id="lbl9b" style="color: #8B0000">
                                                Have you passed Intermediate Exam Compartmentally?
                                                <br />
                                            </label>
                                        </td>
                                        <td>
                                            <input id="rbtCompartmentalN" type="radio" name="rbtComaprtmental" value="rbtCompartmentalN" checked="checked" onclick="highlightOSA();hideComp(&#39;tblComp&#39;);" />
                                            <span id="CompN">No&nbsp; </span>
                                            <input id="rbtCompartmentalY" type="radio" name="rbtComaprtmental" value="rbtCompartmentalY" onclick="highlightOSA();showComp(&#39;tblComp&#39;);" />
                                            <span id="CompY">Yes </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" valign="top">
                                            <div id="tblComp" style="display: none;">
                                                <table width="100%" border="0" cellspacing="1" bgcolor="#FFFFFF" cellpadding="2">
                                                    <tr>
                                                        <td bgcolor="#666666" class="whitetxt">
                                                            Name of the Subject&nbsp;<font color="#FF3333" size="3">*</font>
                                                        </td>
                                                        <td bgcolor="#666666" class="whitetxt">
                                                            Fail &nbsp;Mark in Previous Exam&nbsp;<font color="#FF3333" size="3">*</font>
                                                        </td>
                                                        <td bgcolor="#666666" class="whitetxt">
                                                            Pass Mark in Compartmental Exam&nbsp;<font color="#FF3333" size="3">*</font>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <input name="txtCompSubject1" type="text" maxlength="50" id="txtCompSubject1" class="inputitem" onKeyUp="return CheckSpeCharacter(&#39;txtCompSubject1&#39;,&#39;Special characters are not allowed&#39;);" style="width:150px;" />
                                                        </td>
                                                        <td>
                                                            <input name="txtCompFMark1" type="text" maxlength="3" id="txtCompFMark1" class="inputitem" onKeyUp="return NumericValidation(&#39;txtCompFMark1&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:30px;" />
                                                        </td>
                                                        <td>
                                                            <input name="txtCompPMark1" type="text" maxlength="3" id="txtCompPMark1" class="inputitem" onKeyUp="return NumericValidation(&#39;txtCompPMark1&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:30px;" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <input name="txtCompSubject2" type="text" maxlength="50" id="txtCompSubject2" class="inputitem" onKeyUp="return CheckSpeCharacter(&#39;txtCompSubject2&#39;,&#39;Special characters are not allowed&#39;);" style="width:150px;" />
                                                        </td>
                                                        <td>
                                                            <input name="txtCompFMark2" type="text" maxlength="3" id="txtCompFMark2" class="inputitem" onKeyUp="return NumericValidation(&#39;txtCompFMark2&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:30px;" />
                                                        </td>
                                                        <td>
                                                            <input name="txtCompPMark2" type="text" maxlength="3" id="txtCompPMark2" class="inputitem" onKeyUp="return NumericValidation(&#39;txtCompPMark2&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:30px;" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <input name="txtCompSubject3" type="text" maxlength="50" id="txtCompSubject3" class="inputitem" onKeyUp="return CheckSpeCharacter(&#39;txtCompSubject3&#39;,&#39;Special characters are not allowed&#39;);" style="width:150px;" />
                                                        </td>
                                                        <td>
                                                            <input name="txtCompFMark3" type="text" maxlength="3" id="txtCompFMark3" class="inputitem" onKeyUp="return NumericValidation(&#39;txtCompFMark3&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:30px;" />
                                                        </td>
                                                        <td>
                                                            <input name="txtCompPMark3" type="text" maxlength="3" id="txtCompPMark3" class="inputitem" onKeyUp="return NumericValidation(&#39;txtCompPMark3&#39;,&#39;Please write only numeric values for MARKS&#39;,3);" style="width:30px;" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="10">
                </td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF">
                    <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#cccccc">
                        <tr>
                            <td bgcolor="#ffffff">
                                <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                    <tr>
                                        <td height="25">
                                            <strong>
                                                <label id="lblN71">
                                                    6.</label>
                                            </strong>
                                        </td>
                                        <td>
                                            <strong>
                                                <label id="lbleduinst">
                                                    Record of educational institution last attended from which you have passed Intermediate
                                                    Examination </label>
                                                
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <table width="100%" class="dotBorder" border="0" cellspacing="0" cellpadding="2">
                                                <tr>
                                                    <td width="2%" bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN71a">
                                                                a.</label>
                                                        </strong>
                                                    </td>
                                                    <td width="18%">
                                                        <label id="lblschname" style="color: #8B0000">
                                                            Name of the College&nbsp;<font color="#FF3333" size="3">*</font>
                                                            </label>
                                                    </td>
                                                    <td>
                                                        <input name="txtschname" type="text" maxlength="300" id="txtschname" class="inputitem Uppercase" autocomplete="off" style="width:265px;" />
                                                    </td>
                                                    <td width="2%" bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN71b">
                                                                b.</label>
                                                        </strong>
                                                    </td>
                                                    <td width="25%">
                                                        <label id="lblschloc" style="color: #8B0000">
                                                            Location of the College &nbsp;<font color="#FF3333" size="3">*</font>
                                                            </label>
                                                    </td>
                                                    <td width="25%">
                                                        <input name="txtschloc" type="text" maxlength="300" id="txtschloc" class="inputitem Uppercase" autocomplete="off" style="width:200px;" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="#1567A1" class="auto-style1">
                                                        <strong>
                                                            <label id="lblN71c">
                                                                c.</label>
                                                        </strong>
                                                    </td>
                                                    <td class="auto-style2">
                                                        <label id="lblinsDist" style="color: #8B0000">
                                                            District &nbsp;<font color="#FF3333" size="3">*</font>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style2">
                                                        <select name="ddlinstDistrict" id="ddlinstDistrict" class="inputitem" style="width:155px;">
	<option value="0">--SELECT--</option>
	<option value="10">ARARIA</option>
	<option value="41">ARWAL</option>
	<option value="36">AURANGABAD</option>
	<option value="26">BANKA</option>
	<option value="23">BEGUSARAI</option>
	<option value="25">BHAGALPUR</option>
	<option value="32">BHOJPUR</option>
	<option value="33">BUXAR</option>
	<option value="16">DARBHANGA</option>
	<option value="5">EAST CHAMPARAN</option>
	<option value="37">GAYA</option>
	<option value="18">GOPALGANJ</option>
	<option value="39">JAMUI</option>
	<option value="40">JEHANABAD</option>
	<option value="34">KAIMUR</option>
	<option value="13">KATIHAR</option>
	<option value="24">KHAGDIYA</option>
	<option value="11">KISHANGANJ</option>
	<option value="28">LAKHISARAI</option>
	<option value="14">MADHEPURA</option>
	<option value="8">MADHUBANI</option>
	<option value="27">MUNGER</option>
	<option value="17">MUZAFFARPUR</option>
	<option value="30">NALANDA</option>
	<option value="38">NAWADA</option>
	<option value="31">PATNA</option>
	<option value="12">PURNIYA</option>
	<option value="35">ROHTAS</option>
	<option value="15">SAHARSHA</option>
	<option value="22">SAMASTIPUR</option>
	<option value="OTHER">OTHER</option>
	<option value="20">SARAN</option>
	<option value="29">SHEKHPURA</option>
	<option value="6">SHEOHAR</option>
	<option value="7">SITAMADHI</option>
	<option value="19">SIWAN</option>
	<option value="9">SUPAUL</option>
	<option value="21">VAISHALI</option>
	<option value="4">WEST CHAMAPRAN</option>

</select>
                                                        <input name="txtdist" type="text" maxlength="240" id="txtdist" class="inputitem Uppercase" autocomplete="off" onkeydown="return checkNumber(&#39;txtdist&#39;);" style="width:200px;display: none" />
                                                        
                                                    </td>
                                                </tr>
                                                </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="10">
                </td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF">
                    <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#cccccc">
                        <tr>
                            <td bgcolor="#ffffff">
                                <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                    <tr>
                                        <td height="25">
                                            <strong>
                                                <label id="Label3">
                                                    7.</label>
                                            </strong>
                                        </td>
                                        <td>
                                            <strong>
                                                <label id="Label4">
                                                    Personal Details </label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <table width="100%" class="dotBorder" border="1" cellpadding="2">
                                                <tr>
                                                    <td>
                                                        <label id="lblGender" style="color: #8B0000">
                                                            Gender</label>&nbsp;<font color="#FF3333" size="3">*</font>
                                                    </td>
                                                    <td>
                                                        <label id="lblMt" style="color: #8B0000">
                                                            Mother Tongue&nbsp;
                                                        </label>
                                                        &nbsp;<font color="#FF3333" size="3">*</font>
                                                    </td>
                                                    <td width="">
                                                        <label id="lblNat" style="color: #8B0000">
                                                            Nationality 
                                                        </label>
                                                        <font color="#FF3333" size="3">*</font>
                                                    </td>
                                                    <td>
                                                        <label id="lblReligion">
                                                            Religion (Optional) </label>
&nbsp;</td>
                                                    <td>
                                                        <label id="lblBloodGroup">
                                                            Blood Group(Optional)&nbsp;
                                                        </label>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                           <input type="text" name="ddlGender" id="ddlGender" class="inputitem" onchange="loadColleges();clearDDL();DisableWBC();" style="width:80%;" runat="server" />

                                                    </td>
                                                    <td>
                                                           <input type="text" name="ddlMt" id="ddlMt" class="inputitem" style="width:80%;" runat="server" />

                                                    </td>
                                                    <td>
                                                           <input type="text" name="ddlNationality" id="ddlNationality" class="inputitem" style="width:80%;" runat="server" />
	
                                                    </td>
                                                    <td>
                                                           <input type="text" name="ddlReligion" id="ddlReligion" class="inputitem" style="width:80%;" runat="server" />
	
                                                    </td>
                                                    <td>
                                                        <input type="text" name="ddlBloodGroup" id="ddlBloodGroup" class="inputitem" style="width:80%;" runat="server" />
	
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="10">
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#cccccc">
                        <tr>
                            <td bgcolor="#ffffff" style="height: 150px">
                                <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                    <tr>
                                        <td height="25">
                                            <strong>
                                                <label id="lblN6">
                                                    8.
                                                </label>
                                            </strong>
                                        </td>
                                        <td>
                                            <strong>
                                                <label id="lbladdress">
                                                    Correspondence Address</label></strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <table width="100%" class="dotBorder" border="0" cellspacing="0" cellpadding="2">
                                                <tr>
                                                    <td width="2%" bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN6a">
                                                                a.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td width="12%">
                                                        <label id="lblState" style="color: #8B0000">
                                                            State <font color="#FF3333" size="3">*</font>
                                                        </label>
&nbsp;</td>
                                                    <td width="23%">
                                                        <select name="ddlCState" id="ddlCState" class="inputitem"  style="width:175px;">
	 <%

                                                                
                                                                HttpContext.Current.Response.Write("<option value='"+Session["state"].ToString()+"' selected='selected'>"+Session["state"].ToString()+"</option>");
                                                               

                                                                 %>


</select>
                                                    </td>
                                                    <td width="2%" bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN6b">
                                                                b.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td width="15%">
                                                        <label id="lblDistrict" style="color: #8B0000">
                                                            District <font color="#FF3333" size="3">*</font></label><font color="#FF3333" size="3">*</font>
                                                    </td>
                                                    <td width="20%">
                                                        <select name="ddlCDist" id="ddlCDist" class="inputitem" onchange="fillBlock(ddlCDist);resetOptionByCDid();AssignDistHiddenVal()" style="width:155px;">
	<%

                                                                
                                                                HttpContext.Current.Response.Write("<option value='"+Session["dist"].ToString()+"' selected='selected'>"+Session["dist"].ToString()+"</option>");
                                                               

                                                                 %>


</select>
                                                        <input type="hidden" name="hdfDist" id="hdfDist" />
                                                        <input type="hidden" name="hdfDistName" id="hdfDistName" />
                                                    </td>
                                                    <td width="2%" bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN6c">
                                                                c.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td width="20%">
                                                        <label id="lblBlock" style="color: #8B0000">
                                                            Block 
                                                        </label>
&nbsp;</td>
                                                    <td width="20%">
                                                        <select name="ddlCBlock" id="ddlCBlock" class="inputitem" onChange="AssignBlockHiddenVal()" style="width:155px;">
	<option value="0">--SELECT--</option>

</select>
                                                        <input type="hidden" name="hdfBlock" id="hdfBlock" />
                                                        <input type="hidden" name="hdfBlockName" id="hdfBlockName" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN6d">
                                                                d.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td colspan="2">
                                                        <label id="lblHouseNo" style="color: #8B0000">
                                                            House No., Street/Village, Post Office, Police Station Name <font color="#FF3333"
                                                                size="3">*</font></label></td>
                                                    <td colspan="3">
                                                        <textarea name="txtCPS" rows="2" cols="20" id="txtCPS" class="inputitem Uppercase" autocomplete="off"    runat="server"       style ="width:97%;min-height: 50px;">
</textarea>
                                                    </td>
                                                    <td bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN6e">
                                                                e.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td>
                                                        <label id="lblpin">
                                                            PIN Code
                                                            <br />
                                                        </label>
&nbsp;</td>
                                                    <td>
                                                        <input name="txtCPC" type="text" maxlength="6" id="txtCPC" class="inputitem" autocomplete="off"  style="width:150px;"  runat="server"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN6f">
                                                                f.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td>
                                                        <label id="lblMobileNo" style="color: #8B0000">
                                                            Mobile No. <font color="#FF3333" size="3">*</font> &nbsp;
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input runat="server" name="txtCMobNo" type="text" maxlength="10" id="txtCMobNo" class="inputitem" autocomplete="off" onkeyup="return NumericValidation(&#39;txtCMobNo&#39;,&#39;Please write only numeric values for Mobile No.&#39;,10);" Onblur="CheckMobNo();" onpaste="return false;" onCopy="return false" onCut="return false" onDrag="return false" onDrop="return false" style="width:150px;" />
                                                        <i class="fa fa-check right" aria-hidden="true"></i><i class="fa fa-times wrong"
                                                            aria-hidden="true"></i><i class="fa fa-check inright" aria-hidden="true"></i>
                                                        <i class="fa fa-times inwrong" aria-hidden="true"></i>
                                                    </td>
                                                    <td bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN6g">
                                                                g.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td>
                                                        <label id="lblEmail" style="color: #8B0000">
                                                            e-Mail <font color="#FF3333" size="3">*</font></label></td>
                                                    <td>
                                                        <input runat="server" name="txtCEmail" type="text" maxlength="30" id="txtCEmail" class="inputitem" autocomplete="off" onblur="return checkEmail(&#39;txtCEmail&#39;);" onpaste="return false;" onCopy="return false" onCut="return false" onDrag="return false" onDrop="return false" style="width:150px;" />
                                                        <i class="fa fa-check eright" aria-hidden="true"></i><i class="fa fa-times ewrong"
                                                            aria-hidden="true"></i><i class="fa fa-check einright" aria-hidden="true"></i>
                                                        <i class="fa fa-times einwrong" aria-hidden="true"></i>
                                                    </td>
                                                    <td bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN6h">
                                                                h.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td>
                                                        <label id="lbltelephone">
                                                            Telephone No.(Optional)
                                                            </label>
                                                    </td>
                                                    <td>
                                                        <input name="txtCTCode" type="text" maxlength="5" id="txtCTCode" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtCTCode&#39;,&#39;Please write only numeric values for Area Code&#39;,5);" style="width:40px;" />
                                                        -
                                                        <input name="txtCTeleNo" type="text" maxlength="7" id="txtCTeleNo" class="inputitem" autocomplete="off" onKeyUp="return NumericValidation(&#39;txtCTeleNo&#39;,&#39;Please write only numeric values for Phone No.&#39;,7);" style="width:100px;" />
                                                        <br />
                                                        <label id="lblAreaCode">
                                                            STD Code
                                                        abel>
                                                        &nbsp;- &nbsp;
                                                        <label id="lblphone">
                                                            Phone No
                                                        </label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="10">
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#cccccc">
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                    <tr>
                                        <td width="2%" height="25" valign="top">
                                            <strong>
                                                <label id="lblN7">
                                                    9.
                                                </label>
                                            </strong>
                                        </td>
                                        <td width="98%">
                                            <strong>
                                                <label id="lblReservation">
                                                    Reservation Details 
                                                </label>
                                            </strong>
                                            <table align="right">
                                                <tr>
                                                    <td style="color: Red; font-weight: bold; display: none;">
                                                        <label id="lblFees">
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="dotBorder nobot-border">
                                                <tr>
                                                    <td width="2%" bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN7a">
                                                                a.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td style="font-size: 11px;">
                                                        <input id="rbtGeneral" type="radio" name="ResCategory1" value="rbtGeneral"  runat="server" />
                                                        <span id="GENERAL">General</span></td>
                                                    <td style="font-size: 11px;">
                                                        <input id="rbtSC" type="radio" name="ResCategory1" value="rbtSC"  runat="server" />
                                                        <span id="SC">Schedule Caste (SC)</span></td>
                                                    <td style="font-size: 11px;">
                                                        <label>
                                                            <input id="rbtST" type="radio" name="ResCategory1" value="rbtST"  runat="server" />
                                                            <span id="ST">Schedule Tribe (ST)</span></label></td>
                                                    <td style="font-size: 11px;">
                                                        <input id="rbtnOBC" type="radio" name="ResCategory1" value="rbtnOBC"  runat="server" />
                                                        <span id="OBC">Backward Class (BC)</span></td>
                                                    <td>
                                                        <input id="rbtOther" type="radio" name="ResCategory1" value="rbtOther" runat="server" />
                                                        <span id="OTHER">Extremly Backward Class (EBC)</span></td>
                                                    <td>
                                                        <input id="rbtBCW" type="radio" name="ResCategory1" value="rbtBCW"  runat="server" />
                                                        <span id="WBC">Women Backward Class (WBC)</span></td>
                                                </tr>
                                            </table>
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="dotBorder">
                                                <tr>
                                                    <td width="2%" bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN7b">
                                                                b.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td colspan="5">
                                                        
                                                        <span id="PHOH">Specially Abled </span>
                                                        <input id="chkPHOHN" type="radio" name="PHOH" value="chkPHOHN" checked="checked" onclick="highlitespecialyEnabled();" />
                                                        <span id="Span2">No</span><input id="chkPHOHY" type="radio" name="PHOH" value="chkPHOHY" onclick="highlitespecialyEnabled();" />
                                                        <span id="Span1">Yes</span></td>
                                                </tr>
                                                <tr>
                                                    <td width="2%" bgcolor="#1567A1" class="whitetxt">
                                                        <strong>
                                                            <label id="lblN7c">
                                                                c.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td width="22%">
                                                        <input id="rbtESM" type="radio" name="ResCategory2" value="rbtESM" onclick="highlightCat2();" />
                                                        <span id="ESM">Ex-Service Man (ESM)</span>
                                                    </td>
                                                    <td width="22%" style="display:none">
                                                        <input id="rbtCoM" type="radio" name="ResCategory2" value="rbtCoM" onclick="highlightCat2();" />
                                                        <span id="CoM">Children of Martyrs (CoM)</span>
                                                    </td>
                                                    <td width="28%" style="display:none">
                                                        <input id="rbtSDP" type="radio" name="ResCategory2" value="rbtSDP" onclick="highlightCat2();" />
                                                        <span id="SDP">Serving Defence Personnel (SDP)</span>
                                                    </td>
                                                    <td width="18%" colspan="2">
                                                        <input id="rbtNon" type="radio" name="ResCategory2" value="rbtNon" checked="checked" onclick="highlightCat2();" />
                                                        <span id="NoN">None</span>
 
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="10">
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#cccccc">
                        <tr>
                            <td align="right" bgcolor="#FFFFFF">
                                <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                    <tr>
                                        <td width="10" valign="top">
                                            <strong>10.</strong>
                                        </td>
                                        <td align="left">
                                            <label id="lblinf">
                                                <strong>Fee Details & Admission Details
                                                    </strong>
                                            </label>
                                        </td>
                                    </tr>
                                    
                                    
                                    
                                    <tr>
                                        <td align="left" width="100%" colspan="2">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="2" class="dotBorder">
                                                <tr >
                                                    <td bgcolor="#1567a1" class="whitetxt" style="height: 32px; width: 1%;">
                                                        <strong>
                                                            <label id="lbla">
                                                                a.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td style="width: 150px;">
                                                       <label id="lblColType"> Reg Fee Transaction ID/Admission Fee ID
                                                            </label>
                                                        <font color="#FF3333" size="3">*</font>
                                                    </td>
                                                    <td colspan="4">
                                                        <input id="rbtOthersFinance" type="text" name="A"  class="inputitem"  runat="server"/>
                                                       / <input id="rbtSanskrit" type="text" name="A" class="inputitem" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="#1567a1" class="whitetxt" style="width: 1%;">
                                                        b<strong><label id="lblb">.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td width="43%">
                                                        Honors Paper<label id="lblDname" style="color: #8B0000"><font color="#FF3333" size="3">*</font></label>
                                                    </td>
                                                    <td colspan="4" style="width: 40%;">
                                                        <div style="float: left; width: 30%; margin-top: 6px;">
                                                            <select name="ddlCollegeDistrict" id="ddlCollegeDistrict" class="inputitem"  style="width:155px;">
	<%                                                             
                                                                HttpContext.Current.Response.Write("<option value='"+Session["honsp"].ToString()+"' selected='selected'>"+Session["honsp"].ToString()+"</option>");
                                                               

                                                                 %>


</select>
                                                        </div>
                                                        <div style="float: left; width: 70%;">
                                                            <div>
                                                                <span id="Heading1" style="font-size: 11px; font-weight: bold;"></span>&nbsp;<span
                                                                    id="cutoffST1" style="font-size: 11px;"></span> &nbsp;<span id="cutoffSC1" style="font-size: 11px;"></span>&nbsp;<span
                                                                        id="cutoffGen1" style="font-size: 11px;"></span>
                                                            </div>
                                                            <div style="margin-left: 105px;">
                                                                <span id="Heading2" style="font-size: 11px; font-weight: bold;"></span>&nbsp;<span
                                                                    id="cutoffST2" style="font-size: 11px;"></span>&nbsp;<span id="cutoffSC2" style="font-size: 11px;"></span>
                                                                &nbsp;<span id="cutoffGen2" style="font-size: 11px;"></span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="#1567A1" class="whitetxt" style="height: 32px; width: 1%;">
                                                        c<strong><label id="lblc">.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td>
                                                        Sub. 1 paper;<font color="#FF3333" size="3">*</font>
                                                    </td>
                                                    <td style="width:20%; height: 32px">
                                                        <select name="ddlCollegeDistrict" id="ddlCollegeDistricth" class="inputitem" onchange="loadColleges();resetOptionByCDid();" style="width:155px;">
	<%

                                                                
                                                                HttpContext.Current.Response.Write("<option value='"+Session["subsone"].ToString()+"' selected='selected'>"+Session["subsone"].ToString()+"</option>");
                                                               

                                                                 %>


</select>

                                                    </td>
                                                    <td width="7%" bgcolor="#1567A1" class="whitetxt" style="width: 2%; height: 32px">
                                                        d<strong><label id="lbld">.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td width="20%">
                                                        Sub 2 paper<label id="lblStream" style="color: #8B0000"><font color="#FF3333" size="3">*</font></label>
                                                    </td>
                                                    <td style="width: 25%; height: 32px">
                                                        <select name="ddlStream" id="ddlStream" class="inputitem" onchange="fillfElective(ddlCollege,ddlStream);loadCutOffMark();return RestrictStream();" style="width:113px;">
	<%

                                                                
                                                                HttpContext.Current.Response.Write("<option value='"+Session["substwo"].ToString()+"' selected='selected'>"+Session["substwo"].ToString()+"</option>");
                                                               

                                                                 %>


</select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="#1567A1" class="whitetxt" style="height: 32px; width: 1%;">
                                                        e<strong><label id="lble">.
                                                            </label>
                                                        </strong>
                                                    </td>
                                                    <td>
                                                        Compulsory paper<font color="#FF3333" size="3">*</font>
                                                    </td>
                                                    <td colspan="4" style="width: 36%; height: 32px">
                                                        <select name="ddlELE1" id="ddlELE1" class="inputitem" onchange="ColVacancy();" style="width:165px;">
	<option value="0">-- SELECT --</option>

</select>
                                                    </td>
                                                </tr>
                                            </table>
                                           
                                            <table border="0" align="center" cellpadding="10" cellspacing="0">
                                                <tr>
                                                    <td align="center">
                                                        <input type="button" name="Button1" value="Verify" " id="studentvr" class="submitBtn" style="height: 30px;line-height: 17px; cursor: pointer;" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="5">
                </td>
            </tr>
        </table>
    </div>
    

     
    </form>
</body>
</html>


