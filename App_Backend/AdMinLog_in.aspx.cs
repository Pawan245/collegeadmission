using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class AdMinLog_in : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {


          




        }


        [WebMethod]

        public static string savex(String datan, String datar)
        {





            if (datan != String.Empty && datar != String.Empty)
            {





                Class1 df = new Class1();

                System.Diagnostics.Debug.Write(df.Admin_Login("Hero", datan, datar));

                return df.Admin_Login("Hero", datan, datar);


            }


            else
            {
                return "errorx";
            }
        }


    }
