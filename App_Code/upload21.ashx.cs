using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

  /// <summary>
    /// Summary description for upload21
    /// </summary>
    public class upload21 : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {
       
        public void ProcessRequest(HttpContext context)
        {
            try
            {

                if (context != null)
                {
                    Class1 df = new Class1();
                    
                    context.Response.Write(df.ProcessRequest2(context));

                    System.Diagnostics.Debug.Write(HttpContext.Current.Session["profilephotoid"].ToString());
                }
                else
                {
                    context.Response.Write("hiiiiiii");
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
