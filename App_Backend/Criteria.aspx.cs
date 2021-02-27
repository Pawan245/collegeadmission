using Newtonsoft.Json;
using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Criteria : System.Web.UI.Page
    {
      /*  protected global::System.Web.UI.HtmlControls.HtmlForm form2;
      
        protected global::System.Web.UI.HtmlControls.HtmlSelect lastqulafication;
        protected global::System.Web.UI.HtmlControls.HtmlSelect ddlGender;


        protected global::System.Web.UI.HtmlControls.HtmlSelect ddlbloodgroupp;


       

        protected global::System.Web.UI.HtmlControls.HtmlInputRadioButton sex;
        protected global::System.Web.UI.HtmlControls.HtmlInputRadioButton sex1;
        



     

        protected global::System.Web.UI.HtmlControls.HtmlSelect ddlpoccu;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl appr;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl dq1;
        protected global::System.Web.UI.HtmlControls.HtmlGenericControl dq2;
        */


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

                        if (fgn.Equals("0"))
                        {
                            appr.Style.Add("display", "none");
                            dq1.Style.Add("display", "none");
                            dq2.Style.Add("display", "none");

                        }


                    }
                    catch (Exception ex)
                    {
                        appr.Style.Add("display", "block");
                        dq1.Style.Add("display", "block");
                        dq2.Style.Add("display", "block");

                    }





                    //HttpContext.Current.Session["st"] = "2";
                    String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();


                    Class1 fr = new Class1();
                    String fg = fr.Selectcreteria("jkj", regid.Trim());

                    System.Diagnostics.Debug.Write("reeeevvvvvvvv  " + fg.ToString() + "");



                    var result = JsonConvert.DeserializeObject<List<Creteria>>(fg);

                    foreach (var studentrecord in result)
                    {
                        String firstname = studentrecord.lastqulaficationn;

                    lastqulafication.Value = firstname;
                        System.Diagnostics.Debug.Write("rtt"+firstname+"");
                        String middlename = studentrecord.examname;

                    FirstName.Value = middlename;


                        String lastname = studentrecord.boardunivn;
                    boardorunivercity.Value = lastname;

                        String dob = studentrecord.totalmarks;
                    LastName2.Value = dob;

                        String nation = studentrecord.obtainmarks;



                    datepickert.Value = nation;
                    String per = studentrecord.percentage;
                    mothertounge.Value = per;
  String passmonthh = studentrecord.passingmonth;
                    ddlGender.Value = passmonthh;


  String passingyear = studentrecord.passingyear;
                    txtEmail.Value = passingyear;


  String passingcls = studentrecord.passingclass;
                    ddlGender2.Value = passingcls;


  String marksheetn = studentrecord.marksheetno;
                    txtEmail2.Value = marksheetn;



                        String status = studentrecord.status;




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
            catch(Exception ex)
            {


                System.Diagnostics.Debug.Write("reeee  " + ex.ToString() + "");

                Response.Redirect("Error");
            }




        }



    }
