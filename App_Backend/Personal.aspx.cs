using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Registration_process;

   public partial class Personal : System.Web.UI.Page
    {
     /*   protected global::System.Web.UI.HtmlControls.HtmlForm form2;
       protected global::System.Web.UI.HtmlControls.HtmlInputText FirstName;
        protected global::System.Web.UI.HtmlControls.HtmlInputText MiddleName1;
        protected global::System.Web.UI.HtmlControls.HtmlInputText LastName2;

       protected global::System.Web.UI.HtmlControls.HtmlInputText datepicker;
        protected global::System.Web.UI.HtmlControls.HtmlSelect ddlGender;
        protected global::System.Web.UI.HtmlControls.HtmlSelect ddlbloodgroupp;
        protected global::System.Web.UI.HtmlControls.HtmlInputText mothertounge;

        protected global::System.Web.UI.HtmlControls.HtmlInputRadioButton sex;
        protected global::System.Web.UI.HtmlControls.HtmlInputRadioButton sex1;
        protected global::System.Web.UI.HtmlControls.HtmlInputRadioButton sex2;
        protected global::System.Web.UI.HtmlControls.HtmlInputRadioButton ot;



        protected global::System.Web.UI.HtmlControls.HtmlInputText txtEmail;
        protected global::System.Web.UI.HtmlControls.HtmlInputText txtEmail2;

        protected global::System.Web.UI.HtmlControls.HtmlInputText MotherName;

        protected global::System.Web.UI.HtmlControls.HtmlSelect ddlpoccu;
        protected global::System.Web.UI.HtmlControls.HtmlInputText TxtPemail;
        protected global::System.Web.UI.HtmlControls.HtmlInputText txtConfirmPassword;
        protected global::System.Web.UI.HtmlControls.HtmlInputText txtAc;



        protected global::System.Web.UI.HtmlControls.HtmlInputText txtifsc;
        protected global::System.Web.UI.HtmlControls.HtmlInputText mobilenumt;



        protected global::System.Web.UI.HtmlControls.HtmlImage myUploadedImg;
        protected global::System.Web.UI.HtmlControls.HtmlImage myUploadedImgx;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl appr;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl dq1;
        protected global::System.Web.UI.HtmlControls.HtmlGenericControl dq2;*/



        protected void Page_Load(object sender, EventArgs e)
        {


            string hy, hu = "WATER_HUB@56_834599T", gh, ht;

            try
            {

                ht = Session["PRTU_UOkT"].ToString();

                if (ht != hu)
                {

                    Response.Redirect("Error");
                }


                else
                {



                    try
                    {

                        String fgn = HttpContext.Current.Session["TY"].ToString();

                        if(fgn.Equals("0"))
                        {
                            appr.Style.Add("display", "none");
                            dq1.Style.Add("display", "none");
                            dq2.Style.Add("display", "none");

                        }


                    }
                    catch(Exception ex)
                    {
                        appr.Style.Add("display", "block");
                        dq1.Style.Add("display", "block");
                        dq2.Style.Add("display", "block");

                    }




                    String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();

                    System.Diagnostics.Debug.Write(regid);

                     Class1 fr = new Class1();
                       String fg = fr.Selectn("jkj", regid.Trim());
                


                    var result = JsonConvert.DeserializeObject<List<Receivert>>(fg);


                    foreach (var studentrecord in result)
                       {

                           String firstname = studentrecord.firstname;

                        FirstName.Value = firstname;
                       // System.Diagnostics.Debug.Write(firstname);
                        String middlename = studentrecord.middlename;

                        MiddleName1.Value = middlename;
                           String  lastname = studentrecord.lastname;
                        LastName2.Value = lastname;
                     
                           String    dob = studentrecord.dob;
                        datepicker.Value = dob;
                           String   gender = studentrecord.gender;
                    //  ddlGender.Value = gender;


                    Session["kk"] = gender;
                           String    bllodgroup = studentrecord.bllodgroup;
                      //  ddlbloodgroupp.Value = bllodgroup;

                    Session["kkt"] = bllodgroup;



                  //  String bllodgroupg = studentrecord.d;


                    Session["kktm"] = studentrecord.caste;

                    Session["kktmk"] = studentrecord.dis;
                    String    mt = studentrecord.mt;

                        mothertounge.Value = mt;
                           String     nation = studentrecord.nation;


                        switch(nation)
                        {
                            case "Indian":


                                sex.Checked = true;
                                break;

                            case "NRI":


                                sex1.Checked = true;
                                break;

                            case "Foreigner":


                                sex2.Checked = true;
                                break;

                            case "Other":


                                ot.Checked = true;
                                break;

                            default:
                                break;
                        }

                           String     eid = studentrecord.eid;


                        txtEmail.Value = eid;
                        txtEmail2.Value = eid;
                           String     mothername = studentrecord.mothername;

                        MotherName.Value = mothername;
                           String     poccu = studentrecord.poccu;
                        ddlpoccu.Value = poccu;
                           String    pemail = studentrecord.pemail;


                        TxtPemail.Value = pemail;
                           String    aadhar = studentrecord.aadhar;
                        txtConfirmPassword.Value = aadhar;
                           String    bank = studentrecord.bank;
                        txtAc.Value = bank;
                           String    ifsc = studentrecord.ifsc;

                        txtifsc.Value = ifsc;
                           String    photo = studentrecord.photo;
                        myUploadedImg.Src = photo;

                           String    sign = studentrecord.sign;
                        myUploadedImgx.Src = sign;
                           String   status = studentrecord.status;

                    mobilenumt.Value= studentrecord.mobilenumber;





                    String areaa = studentrecord.area;


                    switch (areaa)
                    {
                        case "Urban":


                            urban.Checked = true;
                            break;

                        case "Rural":


                            rural.Checked = true;
                            break;

                       

                       

                        default:
                            break;
                    }




                    FatherName.Value= studentrecord.fathername;

                    bankname.Value = studentrecord.bankname;





                }








                /*   gh = Session["PRTU_UOkX"].ToString();

                   HttpContext.Current.Session["PRTU_UOIHX"] = "WATER_HUB@56_8345";


                   te.InnerText = "Welcome   " + gh.ToString();*/
                HttpContext.Current.Session.Timeout = 600;
                    /* Response.Cache.SetNoStore();

                     Response.Cache.SetCacheability(HttpCacheability.NoCache);

                     Response.AppendHeader("pragma", "no-cache");

                     Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));*/
                }
            }
            catch
            {
                Response.Redirect("Error");
            }




        }
    }
