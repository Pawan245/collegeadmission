using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apply : System.Web.UI.Page
{
    
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

                    Class1 fr = new Class1();
                    String fg = fr.getstatusx(regid.Trim());


                    if (fg.Trim().Equals("3"))
                    {

                        if (!IsPostBack)
                        {
                           // FillCapctha();


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






    [WebMethod(EnableSession =true)]

    public static string paymentapi(String hons,String hmarkst, String clg, String totalhm, String cs, String nrs, String subone, String subtwo)
    {





        string hy, hu = "WATER_HUB@56_834599T", gh, ht;

        try
        {

            ht = HttpContext.Current.Session["PRTU_UOkT"].ToString();

            if (ht != hu)
            {

                return "error";
            }


            else
            {
                               String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();

                Class1 fr = new Class1();
                return (fr.applieddata(regid,hons, hmarkst,clg, totalhm,cs,nrs,subone,subtwo));




            }
        }
        catch
        {
            return "error";


        }




    }









}