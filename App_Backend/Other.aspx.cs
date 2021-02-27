using Newtonsoft.Json;
using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Other : System.Web.UI.Page

         {


     

     /*   protected global::System.Web.UI.HtmlControls.HtmlInputText winp;

        protected global::System.Web.UI.HtmlControls.HtmlInputText FirstName;
        protected global::System.Web.UI.HtmlControls.HtmlInputText MiddleName1;
        protected global::System.Web.UI.HtmlControls.HtmlInputText LastName2;
        protected global::System.Web.UI.HtmlControls.HtmlInputText FirstName1;
        protected global::System.Web.UI.HtmlControls.HtmlInputText MiddleName12;
        protected global::System.Web.UI.HtmlControls.HtmlInputText LastName22;
        protected global::System.Web.UI.HtmlControls.HtmlInputText FirstName10;
        protected global::System.Web.UI.HtmlControls.HtmlInputText MiddleName120;
        protected global::System.Web.UI.HtmlControls.HtmlInputText LastName220;
        protected global::System.Web.UI.HtmlControls.HtmlInputText LastName2200;

        protected global::System.Web.UI.HtmlControls.HtmlInputButton prtmmk;

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

                    String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();

                    prtmmk.Value = regid;
                    Class1 fr = new Class1();
                    String fg = fr.Selectother("jkj", regid.Trim());

                    System.Diagnostics.Debug.Write("reeeevvvvvvvv  " + fg.ToString() + "");



                    var result = JsonConvert.DeserializeObject<List<Otherdetails>>(fg);

                    foreach (var studentrecord in result)
                    {



                        Session["st"] = studentrecord.status;





                        winp.Value= studentrecord.Prizes;


                        FirstName.Value= studentrecord.NCC ;

                        MiddleName1.Value= studentrecord.Social_ork;

                        LastName2.Value=studentrecord.Computing;


                        FirstName1.Value=studentrecord.Sports;

                        MiddleName12.Value=studentrecord.Elocution ;

                        LastName22.Value=studentrecord.other;


                        FirstName10.Value=studentrecord.Periodical ;

                        MiddleName120.Value=studentrecord.How_do ;

                        LastName220.Value=studentrecord.Reason;




                        LastName2200.Value=studentrecord.How_this ;





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
