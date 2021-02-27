using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class SubjectSetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }









        [WebMethod]

        public static string subjectsetup(String data1, String data2, String data3)
        {





            if (data1 != String.Empty && data2 != String.Empty && data3 != String.Empty)
            {





                Class1 df = new Class1();


                df.subjectsetup(data1, data2, data3);





                // System.Diagnostics.Debug.Write(df.Admin_Login("Hero", datan, datar));

                return "success";


            }


            else
            {
                return "errorx";
            }
        }


    }



