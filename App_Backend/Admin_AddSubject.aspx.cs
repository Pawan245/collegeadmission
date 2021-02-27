using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Admin_AddSubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string hy, hu = "WATER_HUB@56_834599T_RRR", gh, ht;

            try
            {

                ht = Session["PRTU_UOkT_vv"].ToString();

                if (ht != hu)
                {

                    Response.Redirect("Error");
                }


                else
                {



                }
            }
            catch
            {
                Response.Redirect("Error");
            }

        }





        [WebMethod]

        public static string createprogram(String data1, String data2, String data3)
        {





            if (data1 != String.Empty && data2 != String.Empty && data3 != String.Empty)
            {





                Class1 df = new Class1();


                return(df.createprogram(data1, data2, data3));





                // System.Diagnostics.Debug.Write(df.Admin_Login("Hero", datan, datar));

              //  return "success";


            }


            else
            {
                return "errorx";
            }
        }




        [WebMethod]

        public static string delprogram(String data1)
        {





            if (data1 != String.Empty)
            {





                Class1 df = new Class1();


                return (df.deleteprogram(data1));







            }


            else
            {
                return "errorx";
            }
        }


    }













