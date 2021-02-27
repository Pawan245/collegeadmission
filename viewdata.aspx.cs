using Newtonsoft.Json;
using Registration_process;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZXing;
using ZXing.QrCode;

public partial class viewdata : System.Web.UI.Page
{


    String genderx, honsx, castex, bloodgroupx;



    protected void Page_Load(object sender, EventArgs e)
    {
        String regid = Request.QueryString["id"].ToString();
        Class1 fg = new Class1();
        String hj = fg.getdetailsbyid("dfff", (regid.Replace(" ", "+")));

      //  Session["dry"] = fg.Decryptx(regid.Replace(" ", "+"));


        var result = JsonConvert.DeserializeObject<List<shortlistedcandidatesrecord_all_r>>(hj);

        foreach (var studentrecord in result)
        {








            txtApplName.Value = studentrecord.name;

            txtFatherName.Value = studentrecord.fathername;
            txtMotherName.Value = studentrecord.mothername;
            ImgAppl.Src = studentrecord.imgsrc;
            ddlYOP.Value = studentrecord.yearofpassing;
            txtMaxMark.Value = studentrecord.totalmarks;
            txtTotMark.Value = studentrecord.marksobtained;
            ddlGender.Value = studentrecord.gender;

            genderx = studentrecord.gender;

            ddlMt.Value = studentrecord.mothertounge;
            ddlNationality.Value = studentrecord.nationality;
            ddlReligion.Value = studentrecord.religion;
            ddlBloodGroup.Value = studentrecord.bloodgroupp;



            rbtOthersFinance.Value = studentrecord.regfeetr;
            rbtSanskrit.Value = studentrecord.admissionfeetr;





            bloodgroupx = studentrecord.bloodgroupp;
            Session["df"] = "";
            Session["dob"] = "";

            Session["state"] = "";
            Session["dist"] = "";


            Session["honsp"] = "";
            Session["subsone"] = "";

            Session["substwo"] = "";
            Session["cccs"] = "";



            Session["df"] = studentrecord.boardorunv;


            Session["dob"] = studentrecord.dobdata;
            Session["state"] = studentrecord.state;
            Session["dist"] = studentrecord.district;




            Session["honsp"] = studentrecord.honsubject;


            honsx = studentrecord.honsubject;
            Session["subsone"] = studentrecord.subone;

            Session["substwo"] = studentrecord.subtwo;
            // Session["cccs"] = studentrecord.cc;





            txtCPS.Value = studentrecord.curruntaddress;

            txtCPC.Value = studentrecord.pin;

            txtCMobNo.Value = studentrecord.mobile;
            txtCEmail.Value = studentrecord.email;


            castex = studentrecord.caste.ToUpper();

            switch (studentrecord.caste.ToUpper())
            {

                case "GENERAL":
                    rbtGeneral.Checked = true;
                    break;


                case "SC":
                    rbtSC.Checked = true;
                    break;


                case "ST":
                    rbtST.Checked = true;
                    break;



                case "BC":
                    rbtnOBC.Checked = true;
                    break;


                case "EBC":
                    rbtOther.Checked = true;
                    break;



                case "WBC":
                    rbtBCW.Checked = true;
                    break;



            }













            // ddlBoard.Value = studentrecord.boardorunv;
            //  ddlBoard.SelectedIndex = 0;
            switch (studentrecord.lastqualification)
            {

                case "ISC":
                    rbtScience.Checked = true;
                    break;


                case "ICOM":
                    rbtCommerce.Checked = true;
                    break;


                case "IA":
                    rbtArts.Checked = true;
                    break;
            }

        }




        String ert = "Regid:" + (regid.Replace(" ", "+")) + ",Gender:" + genderx + ",Caste:" + castex + ",Blood Group:" + bloodgroupx + ", Hons.:" + honsx + "";


        imgg.Src = fg.createqr("" + ert + "", 100, 100, 0);




    }
   
}







