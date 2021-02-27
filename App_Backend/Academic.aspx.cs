using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Academic : System.Web.UI.Page
    {
     /*  protected global::System.Web.UI.HtmlControls.HtmlForm form2;
        protected global::System.Web.UI.HtmlControls.HtmlInputButton prtm;


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

                    prtm.Value = regid;

                    Class1 fr = new Class1();
                    Session["st"] = fr.getstatusx(regid.Trim());


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
            catch
            {
                Response.Redirect("Error");
            }





        }
    }
