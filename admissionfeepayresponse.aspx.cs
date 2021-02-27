using Registration_process;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admissionfeepayresponse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            string[] merc_hash_vars_seq;
            string merc_hash_string = string.Empty;
            string merc_hash = string.Empty;
            string order_id = string.Empty;
            string hash_seq = "key|txnid|amount|productinfo|firstname|email||||||||||";

            if (Request.Form["status"] == "success")
            {

                merc_hash_vars_seq = hash_seq.Split('|');
                Array.Reverse(merc_hash_vars_seq);
                merc_hash_string = ConfigurationManager.AppSettings["SALT"] + "|" + Request.Form["status"];


                foreach (string merc_hash_var in merc_hash_vars_seq)
                {
                    merc_hash_string += "|";
                    merc_hash_string = merc_hash_string + (Request.Form[merc_hash_var] != null ? Request.Form[merc_hash_var] : "");

                }
                merc_hash = Generatehash512(merc_hash_string).ToLower();



                if (merc_hash != Request.Form["hash"])
                {
                    //Value didn't match that means some paramter value change between transaction 
                    Response.Write("Hash value did not matched");

                }
                else
                {
                    //if hash value match for before transaction data and after transaction data
                    //that means success full transaction  , see more in response
                    order_id = Request.Form["txnid"];
                    Class1 fg = new Class1();
                    string studentid, testid;
                    int type, zone;
                    String id;



                    id = HttpContext.Current.Session["txnmq"].ToString();



                    studentid = HttpContext.Current.Session["stidq"].ToString();




                    String fgt = fg.updatepaymenttableadmission(studentid, id, order_id);


                    if (fgt == "success")
                    {
                        fg.updateforregfeepaidadmission(studentid, order_id);
                    }



                    // Response.Write("Transaction successful");
                    //Hash value did not matched


                }

            }

            else
            {

                try
                {

                    String hj = HttpContext.Current.Session["txnmq"].ToString();

                    if (!String.IsNullOrEmpty(hj))
                    {

                        order_id = Request.Form["txnidq"];
                        Class1 fg = new Class1();
                        string studentid, testid;
                        int type, zone;
                        String id;






                        id = HttpContext.Current.Session["txnmq"].ToString();



                        studentid = HttpContext.Current.Session["stidq"].ToString();
                        fg.updatepaymenttablekadmission(studentid, id, order_id);

                        // Response.Write("Transaction Unsuccessful");
                    }
                }
                catch (Exception ex)
                {

                }








                // osc_redirect(osc_href_link(FILENAME_CHECKOUT, 'payment' , 'SSL', null, null,true));

            }
        }

        catch (Exception ex)
        {
            Response.Write("<span style='color:red'>" + ex.Message + "</span>");

        }
    }

    /// <summary>
    /// Generate HASH for encrypt all parameter passing while transaction
    /// </summary>
    /// <param name="text"></param>
    /// <returns></returns>
    public string Generatehash512(string text)
    {

        byte[] message = Encoding.UTF8.GetBytes(text);

        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        return hex;

    }

}