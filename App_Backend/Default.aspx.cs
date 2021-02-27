using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Registration_process;

    public partial class WebForm1 : System.Web.UI.Page
    {

     /*   protected global::System.Web.UI.HtmlControls.HtmlForm form2;

        protected global::System.Web.UI.HtmlControls.HtmlImage imgCaptcha;*/



        protected void Page_Load(object sender, EventArgs e)
        {


        HttpContext.Current.Session["regid"] = null;
        HttpContext.Current.Session["pwd"] = null;
        HttpContext.Current.Session["TYPEX_UOXX"] = null;
        HttpContext.Current.Session["TYPEX_UOKKXX"] = null;
        HttpContext.Current.Session["PRTU_UOkT"] = null;
        HttpContext.Current.Session["st"] = null;

        HttpContext.Current.Session.Clear();










        if (!IsPostBack)
            {
                FillCapctha();




                if (!string.IsNullOrEmpty(HttpContext.Current.Session["TYPEX_UOKKXX"] as string))
                {
                    Response.Redirect("Error");
                }


            


                   



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

        public static string savexx(string datay)
        {
            string m = "ty";
            datay = string.Empty;

            WebForm1 rt = new WebForm1();

            try
            {


                Random random = new Random();
                string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ#$%&";
                StringBuilder captcha = new StringBuilder();
                for (int i = 0; i < 6; i++)
                    captcha.Append(combination[random.Next(combination.Length)]);
                HttpContext.Current.Session["captcha"] = captcha.ToString();

                // hj = captcha.ToString();

                datay = "Default2?" + DateTime.Now.Ticks.ToString();
                //  s = "Default2.aspx?" + DateTime.Now.Ticks.ToString();

            }
            catch
            {

                // throw;
            }

            return datay;
        }



        [WebMethod(EnableSession = true)]
     

        public static string save(string datar)
        {
            string Test;
            Test = string.Empty;

            try
            {

              
                if (datar!=String.Empty)
                {
                  
                    string ch = "http://www.xyz.com/?" + datar;

                    
                    Uri myUri = new Uri(ch);
                    
                  String  code = HttpUtility.ParseQueryString(myUri.Query).Get("txtCode");


                   


                    if (HttpContext.Current.Session["captcha"].ToString() != code)
                    {
                        Test = "empty";


                    }
                    else
                    {
                        Class1 df = new Class1();
                        return (df.Page_1_Registration(datar));

                    }
                }

            }
            catch (Exception ex)
            {


                Test = "error";





            }


            return Test.ToString();

        }


        [WebMethod]

        public static string savexy()

        {

            HttpContext.Current.Session["regid"] = null;
            HttpContext.Current.Session["pwd"] = null;
            HttpContext.Current.Session["TYPEX_UOXX"] = null;
            HttpContext.Current.Session["TYPEX_UOKKXX"] = null;
            HttpContext.Current.Session["PRTU_UOkT"] = null;
            HttpContext.Current.Session["st"] = null;

            HttpContext.Current.Session.Timeout = 1;
            HttpContext.Current.Session.Clear();

            return "success";



        }


    }
