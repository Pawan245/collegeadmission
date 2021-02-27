using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Disabilitysetup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    [WebMethod]

    public static string createcasteapp(String data)
    {





        if (data != String.Empty)
        {





            Class1 df = new Class1();


            df.createdisability(data);





            // System.Diagnostics.Debug.Write(df.Admin_Login("Hero", datan, datar));

            return "success";


        }


        else
        {
            return "errorx";
        }
    }
}