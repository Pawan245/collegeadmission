using Registration_process;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admissionfeepayment : System.Web.UI.Page



{

    public string action1 = string.Empty;
    public string hash1 = string.Empty;
    public string txnid1 = string.Empty;

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

                String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();

                Class1 fr = new Class1();
                String fg = fr.getstatusx(regid.Trim());


                if (fg.Trim().Equals("4"))
                {

                    if (!IsPostBack)
                    {



                        Class1 dt = new Class1();
                        String studentid = dt.Decryptx(Request.QueryString["sid"].ToString().Replace(" ", "+"));





                        String hyt = dt.inserttransactiontableadmission(studentid, HttpContext.Current.Session["pricerq"].ToString());


                       // HttpContext.Current.Response.Write(hyt);


                        amount.Value = HttpContext.Current.Session["pricerq"].ToString();










                        // FillCapctha();


                    }
                    /*   gh = Session["PRTU_UOkX"].ToString();

                       HttpContext.Current.Session["PRTU_UOIHX"] = "WATER_HUB@56_8345";


                       te.InnerText = "Welcome   " + gh.ToString();*/
                    HttpContext.Current.Session.Timeout = 60;
                    /* Response.Cache.SetNoStore();

                     Response.Cache.SetCacheability(HttpCacheability.NoCache);

                     Response.AppendHeader("pragma", "no-cache");

                     Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));*/


                }
                else
                {
                    Response.Redirect("Error");

                }
            }
        }
        catch
        {
            Response.Redirect("Error");
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


    protected void submit_Click(object sender, EventArgs e)
    {

        if (tandc.Checked == true)
        {





            //  HttpContext.Current.Session["addressr"] = address;


            submit.Enabled = false;
            submit.Text = "Please wait....";






            try
            {

                string[] hashVarsSeq;
                string hash_string = string.Empty;


                if (string.IsNullOrEmpty(Request.Form["txnid"])) // generating txnid
                {
                    Random rnd = new Random();
                    string strHash = Generatehash512(rnd.ToString() + DateTime.Now);
                    txnid1 = strHash.ToString().Substring(0, 20);

                }
                else
                {
                    txnid1 = Request.Form["txnid"];
                }
                if (string.IsNullOrEmpty(Request.Form["hash"])) // generating hash value
                {
                    if (
                        string.IsNullOrEmpty(ConfigurationManager.AppSettings["MERCHANT_KEY"])
                        //||
                        // string.IsNullOrEmpty(txnid1) ||
                        //string.IsNullOrEmpty(Request.Form["amount"]) ||
                        // string.IsNullOrEmpty(Request.Form["firstname"]) ||
                        // string.IsNullOrEmpty(Request.Form["email"]) ||
                        // string.IsNullOrEmpty(Request.Form["phone"]) ||
                        // string.IsNullOrEmpty(Request.Form["productinfo"]) ||
                        // string.IsNullOrEmpty(Request.Form["surl"]) ||
                        // string.IsNullOrEmpty(Request.Form["furl"])
                        )
                    {
                        //error

                        // frmError.Visible = true;
                        return;
                    }

                    else
                    {
                        // frmError.Visible = false;
                        hashVarsSeq = ConfigurationManager.AppSettings["hashSequence"].Split('|'); // spliting hash sequence from config
                        hash_string = "";
                        foreach (string hash_var in hashVarsSeq)
                        {

                            if (hash_var == "key")
                            {
                                hash_string = hash_string + ConfigurationManager.AppSettings["MERCHANT_KEY"];
                                hash_string = hash_string + '|';
                            }
                            else if (hash_var == "txnid")
                            {
                                hash_string = hash_string + txnid1;
                                hash_string = hash_string + '|';
                            }


                            else if (hash_var == "productinfo")
                            {
                                hash_string = hash_string + "info";
                                hash_string = hash_string + '|';
                            }


                            else if (hash_var == "firstname")
                            {
                                hash_string = hash_string + HttpContext.Current.Session["namecq"].ToString();
                                hash_string = hash_string + '|';
                            }

                            else if (hash_var == "email")
                            {
                                hash_string = hash_string + HttpContext.Current.Session["emailctq"].ToString();
                                hash_string = hash_string + '|';
                            }

                            else if (hash_var == "amount")
                            {


                                String amo = HttpContext.Current.Session["pricerq"].ToString();
                                hash_string = hash_string + Convert.ToDecimal(amo.Trim()).ToString("g29");
                                hash_string = hash_string + '|';
                            }
                            else
                            {

                                hash_string = hash_string + (Request.Form[hash_var] != null ? Request.Form[hash_var] : "");// isset if else
                                hash_string = hash_string + '|';
                            }
                        }

                        hash_string += ConfigurationManager.AppSettings["SALT"];// appending SALT

                        hash1 = Generatehash512(hash_string).ToLower();         //generating hash
                        action1 = ConfigurationManager.AppSettings["PAYU_BASE_URL"] + "/_payment";// setting URL

                    }


                }

                else if (!string.IsNullOrEmpty(Request.Form["hash"]))
                {
                    hash1 = Request.Form["hash"];
                    action1 = ConfigurationManager.AppSettings["PAYU_BASE_URL"] + "/_payment";

                }




                if (!string.IsNullOrEmpty(hash1))
                {
                    hash.Value = hash1;
                    txnid.Value = txnid1;
                    key.Value = ConfigurationManager.AppSettings["MERCHANT_KEY"];
                    System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
                    data.Add("hash", hash.Value);
                    data.Add("txnid", txnid.Value);
                    data.Add("key", key.Value);
                    String pricet = HttpContext.Current.Session["pricerq"].ToString();


                    string AmountForm = Convert.ToDecimal(pricet.Trim()).ToString("g29");// eliminating trailing zeros
                                                                                         //  amount.Text = AmountForm;
                    data.Add("amount", AmountForm);
                    data.Add("firstname", HttpContext.Current.Session["namecq"].ToString());
                    data.Add("email", HttpContext.Current.Session["emailctq"].ToString());
                    data.Add("phone", HttpContext.Current.Session["mobilecq"].ToString());
                    data.Add("productinfo", "info");
                    data.Add("surl", "http://localhost:52936/admissionfeepayresponse");
                    data.Add("furl", "http://localhost:52936/admissionfeepayresponse");



                    //  data.Add("hashSeq", hash_string);


                    /*  data.Add("lastname", lastname.Text.Trim());
                      data.Add("curl", curl.Text.Trim());
                      data.Add("address1", address1.Text.Trim());
                      data.Add("address2", address2.Text.Trim());
                      data.Add("city", city.Text.Trim());
    data.Add("hashSeq", hash_string);
                      data.Add("state", state.Text.Trim());
                      data.Add("country", country.Text.Trim());
                      data.Add("zipcode", zipcode.Text.Trim());
                      data.Add("udf1", udf1.Text.Trim());
                      data.Add("udf2", udf2.Text.Trim());
                      data.Add("udf3", udf3.Text.Trim());
                      data.Add("udf4", udf4.Text.Trim());
                      data.Add("udf5", udf5.Text.Trim());
                      data.Add("pg", pg.Text.Trim());*/
                    data.Add("service_provider", "payu_paisa");


                    string strForm = PreparePOSTForm(action1, data);


                    Page.Controls.Add(new LiteralControl(strForm));









                }

                else
                {
                    Response.Write("null");

                }

            }

            catch (Exception ex)
            {
                Response.Write("<span style='color:red'>" + ex.Message + "</span>");

            }
        }
        else
        {
            Response.Write("<script language=\"javascript\"> alert('Please accept term and condition')</script>");
        }















    }


    private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
    {
        //Set a name for the form
        string formID = "PostForm";
        //Build the form using the specified data to be posted.
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {



            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }






    protected void amount_TextChanged(object sender, EventArgs e)
    {
        // rtt.Text="\u20B9 " + amount.Text;
    }
}





