using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class verifystudent : System.Web.UI.Page
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

    public static string savex(String datan)
    {





        if (datan != String.Empty)
        {





            Class1 df = new Class1();
            return df.issortlistedin("bg",datan);


        }


        else
        {
            return "errorx";
        }
    }
}