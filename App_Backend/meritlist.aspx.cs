using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class meritlist : System.Web.UI.Page
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
}