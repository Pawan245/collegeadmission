using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using Registration_process;

    /// <summary>
    /// Summary description for uploadfilex1
    /// </summary>
    public class uploadfilex1 : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {



            

          
            try
            {

                if (context != null)
                {
                    Class1 df = new Class1();

                    context.Response.Write(df.ProcessRequest(context));
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
