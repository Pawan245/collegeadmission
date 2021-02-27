using Newtonsoft.Json;
using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class statusrecord : System.Web.UI.Page
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


                if (fg.Trim().Equals("4"))
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




    [WebMethod(EnableSession = true)]

    public static string paymentforreg(String hons)
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
                String fg = fr.Selectn("jkj", regid.Trim());
                var result = JsonConvert.DeserializeObject<List<Receivert>>(fg);
                foreach (var studentrecord in result)
                {
                    String firstname = studentrecord.firstname;                  
                    String middlename = studentrecord.middlename;                   
                    String lastname = studentrecord.lastname;                    
                    String mobilec= studentrecord.mobilenumber;
                    String emailt = studentrecord.eid;

                    HttpContext.Current.Session["namec"] = "";

                    HttpContext.Current.Session["namec"] = "" + firstname + " " + middlename + " " + lastname + "";
                    HttpContext.Current.Session["mobilec"] = "";

                    HttpContext.Current.Session["mobilec"] = studentrecord.mobilenumber;
                    HttpContext.Current.Session["emailct"] = "";


                    HttpContext.Current.Session["emailct"] = emailt;

                    HttpContext.Current.Session["pricer"] = "";
                    HttpContext.Current.Session["pricer"] = "1000";
                    return "registraionfeepayment?sid=" + fr.Encryptx(regid) + "";

                }
                  
            }

            return null;
        }
        catch
        {
            return "error";


        }




    }







    [WebMethod(EnableSession = true)]

    public static string paymentforregaq(String hons)
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
                String fg = fr.Selectn("jkj", regid.Trim());
                var result = JsonConvert.DeserializeObject<List<Receivert>>(fg);
                foreach (var studentrecord in result)
                {
                    String firstname = studentrecord.firstname;
                    String middlename = studentrecord.middlename;
                    String lastname = studentrecord.lastname;
                    String mobilec = studentrecord.mobilenumber;
                    String emailt = studentrecord.eid;

                    HttpContext.Current.Session["namecq"] = "";

                    HttpContext.Current.Session["namecq"] = "" + firstname + " " + middlename + " " + lastname + "";
                    HttpContext.Current.Session["mobilecq"] = "";

                    HttpContext.Current.Session["mobilecq"] = studentrecord.mobilenumber;
                    HttpContext.Current.Session["emailctq"] = "";


                    HttpContext.Current.Session["emailctq"] = emailt;

                    HttpContext.Current.Session["pricerq"] = "";



                    String caste = studentrecord.caste;



                    String fggd = fr.getallcastebyprogramid("2");


                    var resultgd = JsonConvert.DeserializeObject<List<genderdtl>>(fggd);

                    foreach (var studentrecordc in resultgd)
                    {
                        if(studentrecordc.id.Equals(caste))
                            {
                            String cs = studentrecordc.name;


                            switch(cs.ToUpper().Trim())
                            {
                                case "EBC":
                                    HttpContext.Current.Session["pricerq"] = "34";
                                    break;

                                case "FEMALE":
                                    HttpContext.Current.Session["pricerq"] = "23";
                                    break;

                                case "GENERAL":
                                    HttpContext.Current.Session["pricerq"] = "1234";
                                    break;


                                case "OBC":
                                    HttpContext.Current.Session["pricerq"] = "235";
                                    break;


                                case "SC":
                                    HttpContext.Current.Session["pricerq"] = "23";
                                    break;

                                case "ST":
                                    HttpContext.Current.Session["pricerq"] = "12";

                                    break;

                                default:
                                    HttpContext.Current.Session["pricerq"] = "377";
                                    break;

                            }







                            }
                            
                            
                           


                    }











                    return "admissionfeepayment?sid=" + fr.Encryptx(regid) + "";

                }

            }

            return null;
        }
        catch
        {
            return "error";


        }




    }

   







          [WebMethod(EnableSession = true)]

    public static string paymentforregaqprint(String hons)
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
                String fg = fr.Selectn("jkj", regid.Trim());
               




                    return "viewdata?id=" + fr.Encryptx(regid) + "";

                

            }

            return null;
        }
        catch
        {
            return "error";


        }




    }

}