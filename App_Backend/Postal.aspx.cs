using Newtonsoft.Json;
using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Postal : System.Web.UI.Page
    { 
      /*    protected global::System.Web.UI.HtmlControls.HtmlForm form2;

    protected global::System.Web.UI.HtmlControls.HtmlTextArea pdatepicker;
    protected global::System.Web.UI.HtmlControls.HtmlTextArea datepicker;

    protected global::System.Web.UI.HtmlControls.HtmlSelect pddlGender;
    protected global::System.Web.UI.HtmlControls.HtmlSelect ddlGender;

    protected global::System.Web.UI.HtmlControls.HtmlSelect pddlbloodgroupp;
    protected global::System.Web.UI.HtmlControls.HtmlSelect ddlbloodgroupp;

    protected global::System.Web.UI.HtmlControls.HtmlInputText pciyn;
    protected global::System.Web.UI.HtmlControls.HtmlInputText ciyn;

    protected global::System.Web.UI.HtmlControls.HtmlInputText ppinn;
    protected global::System.Web.UI.HtmlControls.HtmlInputText pinn;


        protected global::System.Web.UI.HtmlControls.HtmlInputText pland;
        protected global::System.Web.UI.HtmlControls.HtmlInputText land;

        protected global::System.Web.UI.HtmlControls.HtmlInputText pmobilenum;
        protected global::System.Web.UI.HtmlControls.HtmlInputText mobilenum;

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
                    String fg = fr.Selectpostal("jkj", regid.Trim());

                    System.Diagnostics.Debug.Write("reeeevvvvvvvv  " + fg.ToString() + "");



                    var result = JsonConvert.DeserializeObject<List<Postaldetails>>(fg);

                    foreach (var studentrecord in result)
                    {


            pdatepicker.Value= studentrecord.pcadd;
                        datepicker.Value= studentrecord.cadd;
            pddlGender.Value= studentrecord.pcountry;
                        ddlGender.Value= studentrecord.country; 
            pddlbloodgroupp.Value= studentrecord.pstate;
                        ddlbloodgroupp.Value= studentrecord.state; 
            pciyn.Value= studentrecord.pcity;
                        ciyn.Value= studentrecord.city;
            ppinn.Value= studentrecord.ppinn;
                        pinn.Value= studentrecord.pin ;
            pland.Value= studentrecord.plandd;
                        land.Value= studentrecord.lan ;
            pmobilenum.Value= studentrecord.pmob;
                        mobilenum.Value= studentrecord.mob ;




                        /*   gh = Session["PRTU_UOkX"].ToString();

                           HttpContext.Current.Session["PRTU_UOIHX"] = "WATER_HUB@56_8345";


                           te.InnerText = "Welcome   " + gh.ToString();*/
                        HttpContext.Current.Session.Timeout = 60;
                        /* Response.Cache.SetNoStore();

                         Response.Cache.SetCacheability(HttpCacheability.NoCache);

                         Response.AppendHeader("pragma", "no-cache");

                         Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));*/
                    }
                }
            }
            catch
            {
                Response.Redirect("Error");
            }


        }
    }
