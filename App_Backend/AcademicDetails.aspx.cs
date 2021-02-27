using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class AcademicDetails : System.Web.UI.Page
    {
      /*  protected global::System.Web.UI.HtmlControls.HtmlInputButton prt;

        protected global::System.Web.UI.HtmlControls.HtmlImage imgCaptcha;*/
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

                    String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();

                    prt.Value = regid;
                    Class1 fr = new Class1();
                    String fg = fr.getstatusx(regid.Trim());


                    if (fg.Trim().Equals("3"))
                    {

                        if (!IsPostBack)
                        {
                            FillCapctha();


                        }
                        /*   gh = Session["PRTU_UOkX"].ToString();

                           HttpContext.Current.Session["PRTU_UOIHX"] = "WATER_HUB@56_8345";


                           te.InnerText = "Welcome   " + gh.ToString();*/
                        HttpContext.Current.Session.Timeout = 60;
                        /* Response.Cache.SetNoStore();

                         Response.Cache.SetCacheability(HttpCacheability.NoCache);

                         Response.AppendHeader("pragma", "no-cache");

                         Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));*/


                    }
                    else
                    {
                        Response.Redirect("Error");

                    }
                }
            }
            catch
            {
                Response.Redirect("Error");
            }




        }

        void FillCapctha()
        {

            //Button3.Visible = true;

            try
            {


                Random random = new Random();
                string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ#$%&";
                StringBuilder captcha = new StringBuilder();
                for (int i = 0; i < 6; i++)
                    captcha.Append(combination[random.Next(combination.Length)]);
                Session["captcha"] = captcha.ToString();

                // hj = captcha.ToString();

                imgCaptcha.Src = "Default2?" + DateTime.Now.Ticks.ToString();
                //  s = "Default2.aspx?" + DateTime.Now.Ticks.ToString();

            }
            catch
            {

                // throw;
            }
        }




        [WebMethod(EnableSession = true)]


        public static string savet(string datar)
        {



            System.Diagnostics.Debug.Write(datar);


            string Test;
            Test = string.Empty;

            try
            {


                if (datar != String.Empty)
                {

                   
                        String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();
                        Class1 df = new Class1();
                        return (df.setupedu(datar, regid));

                    
                }

            }
            catch (Exception ex)
            {


                Test = "error";





            }


            return Test.ToString();

        }








        [WebMethod(EnableSession = true)]


        public static string save(string datar)
        {
            string Test;
            Test = string.Empty;

            try
            {


                if (datar != String.Empty)
                {

                    




                    if (HttpContext.Current.Session["captcha"].ToString() != datar)
                    {
                        Test = "empty";


                    }
                    else
                    {
                        String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();
                        Class1 df = new Class1();
                        return (df.Page_4_Registration("jkj", regid));

                    }
                }

            }
            catch (Exception ex)
            {


                Test = "error";





            }


            return Test.ToString();

        }





    






}








      
