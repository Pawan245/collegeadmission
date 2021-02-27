using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
  /// <summary>
    /// Summary description for upload212
    /// </summary>
    public class upload212 : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            try
            {
                if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                {

                    if (context != null)
                    {
                        Class1 df = new Class1();
                        String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();
                        context.Response.Write(df.ProcessRequest3(context, regid));

                       
                    }
                    else
                    {
                        context.Response.Write("hiiiiiii");
                    }

                }
                else
                {

                }
            }
            catch (Exception ac)
            {

            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
