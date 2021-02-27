using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
HttpContext.Current.Session["regid"] = null;
                    HttpContext.Current.Session["pwd"] = null;

 HttpContext.Current.Session["TYPEX_UOXX"] = null;
                        HttpContext.Current.Session["TYPEX_UOKKXX"] = null;
   HttpContext.Current.Session["PRTU_UOkT"] = null;
 HttpContext.Current.Session["st"] =null;
        HttpContext.Current.Session.Timeout = 1;
        HttpContext.Current.Session.Clear();
        }


        [WebMethod]

        public static string savex(String datan, String datar)
        {





            if (datan != String.Empty && datar != String.Empty)
            {





                Class1 df = new Class1();
                return df.Student_Login("Hero", datan, datar);


            }


            else
            {
                return "errorx";
            }
        }

    }
