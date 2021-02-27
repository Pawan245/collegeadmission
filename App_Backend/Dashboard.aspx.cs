using Newtonsoft.Json;
using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Dashboard : System.Web.UI.Page
    {


     /*   protected global::System.Web.UI.HtmlControls.HtmlImage avatarn;



        protected global::System.Web.UI.HtmlControls.HtmlGenericControl appname;



        protected global::System.Web.UI.HtmlControls.HtmlGenericControl applicantname;



        protected global::System.Web.UI.HtmlControls.HtmlGenericControl applicantno;


        protected global::System.Web.UI.HtmlControls.HtmlGenericControl faculty;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl program;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl applicationstatus;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl paymentstatus;

        protected global::System.Web.UI.HtmlControls.HtmlImage profilepht;

        protected global::System.Web.UI.HtmlControls.HtmlButton   paymentc;*/



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
                    HttpContext.Current.Session["TY"] = "0";

                   



                    String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();

                    // prt.Value = regid;
                    Class1 fr = new Class1();




                    String fg2 = fr.getstatusx(regid.Trim());




                    if (fg2.Equals("5"))
                    {

                        String fg = fr.getstatusreport("fgg", regid.Trim());


                        var result = JsonConvert.DeserializeObject<List<StatusCreteria>>(fg);


                        System.Diagnostics.Debug.Write(fg);

                        foreach (var studentrecord in result)
                        {


                            //  System.Diagnostics.Debug.Write(studentrecord.imgsrc);



                            avatarn.Src = "" + studentrecord.imgsrc + "";

                           profilepht.Src = "" + studentrecord.imgsrc + "";
                            appname.InnerHtml = "" + studentrecord.username + "";






                            applicantname.InnerHtml = "" + studentrecord.username + "";


                            applicantno.InnerHtml = "" + studentrecord.usernameappno + "";


                            faculty.InnerHtml = "" + studentrecord.faculty + "";
                            program.InnerHtml = "" + studentrecord.program + "";


                            if(studentrecord.paymentstatus.ToLower().Equals("false"))
                                {
                                paymentc.Style.Add("display", "block");
                            }

                            applicationstatus.InnerHtml = "" + studentrecord.appstatus.ToLower() == "false" ? "Not Submitted" : "Submitted Successful" + "";
                            paymentstatus.InnerHtml = "" + studentrecord.paymentstatus.ToLower() == "false" ? "Not Completed" : "Successful" + "";

                        }






                    }
                }

            }
            catch(Exception ex)
            {


                System.Diagnostics.Debug.Write("reeee  " + ex.ToString() + "");

                Response.Redirect("Error");
            }
}
            }
