using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_addgender : System.Web.UI.Page
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

    public static string delprogram(String data1, String data2)
    {





        if (data1 != String.Empty)
        {





            Class1 df = new Class1();


            return (df.setgenderwithdb(data1, data2));







        }


        else
        {
            return "errorx";
        }
    }
}