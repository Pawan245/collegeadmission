﻿using Registration_process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;


    /// <summary>
    /// Summary description for Reg
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class Reg : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }


     [WebMethod(EnableSession = true)]

        public void sav(string data)
        {


            System.Diagnostics.Debug.Write(data);





            try
            {
                if (data != String.Empty)
                {
					 if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                {

                    Class1 fg = new Class1();
                    System.Diagnostics.Debug.Write(fg.geteducationrecord("fgg", data.Trim()));
                    Context.Response.Write(fg.geteducationrecord("fgg", data.Trim()));
				}

                }


            }
            catch
            {
                Context.Response.Write(null);
                // throw;
            }
          

        }





      [WebMethod(EnableSession = true)]

        public void savt(string data)
        {


            System.Diagnostics.Debug.Write(data);





            try
            {
                if (data != String.Empty)
                {
 if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                {
                    Class1 fg = new Class1();
                   
                    Context.Response.Write(fg.geteducationrecordt("fgg", data.Trim()));
				}

                }


            }
            catch
            {
                Context.Response.Write(null);
                // throw;
            }


        }



      [WebMethod(EnableSession = true)]

        public void savtt(string data)
        {


            System.Diagnostics.Debug.Write(data);





            try
            {
                if (data != String.Empty)
                {
 if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                {
                    Class1 fg = new Class1();

                    Context.Response.Write(fg.getattach("fgg", data.Trim()));
				}

                }


            }
            catch
            {
                Context.Response.Write(null);
                // throw;
            }


        }

        [WebMethod(EnableSession = true)]

        public void savttt(string data)
        {


            System.Diagnostics.Debug.Write(data);





            try
            {
                if (data != String.Empty)
                {
 if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                {
                    Class1 fg = new Class1();

                    Context.Response.Write(fg.getattachx("fgg", data.Trim()));

				}
                }


            }
            catch
            {
                Context.Response.Write(null);
                // throw;
            }


        }






        [WebMethod(EnableSession = true)]

        public void getallprogram(string data)
        {


           





            try
            {
                if (data != String.Empty)
                {
                   // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                   // {
                        Class1 fg = new Class1();

                        Context.Response.Write(fg.getallprogram("fgg"));
                    //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                    //}
                }


            }
            catch
            {
                Context.Response.Write(null);
                // throw;
            }


        }



        [WebMethod(EnableSession = true)]

        public void getallsubject(string data)
        {








            try
            {
                if (data != String.Empty)
                {
                    // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                    // {
                    Class1 fg = new Class1();

                    Context.Response.Write(fg.getallsubject("fgg"));
                    //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                    //}
                }


            }
            catch
            {
                Context.Response.Write(null);
                // throw;
            }


        }







        /*******************************************************Get All Castelist****************************************************************/




        [WebMethod(EnableSession = true)]

        public void getallcaste(string data)
        {








            try
            {
                if (data != String.Empty)
                {
                    // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                    // {
                    Class1 fg = new Class1();

                    Context.Response.Write(fg.getallcastedata("fgg"));
                    //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                    //}
                }


            }
            catch
            {
                Context.Response.Write(null);
                // throw;
            }


        }



    /**************************************************************************************************************************************/


    /***********************************Get all blood list*****************************************************/
    [WebMethod(EnableSession = true)]

    public void getallblood(string data)
    {








        try
        {
            if (data != String.Empty)
            {
                // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                // {
                Class1 fg = new Class1();

                Context.Response.Write(fg.getallbloodgroupdata("fgg"));
                //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                //}
            }


        }
        catch
        {
            Context.Response.Write(null);
            // throw;
        }


    }





    /*********************************************************************************************/




    /***********************************Get all blood list*****************************************************/
    [WebMethod(EnableSession = true)]

    public void getallgender(string data)
    {








        try
        {
            if (data != String.Empty)
            {
                // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                // {
                Class1 fg = new Class1();

                Context.Response.Write(fg.getallgender("fgg"));
                //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                //}
            }


        }
        catch
        {
            Context.Response.Write(null);
            // throw;
        }


    }

    /********************************************Get all disability*************************************************************************/
    [WebMethod(EnableSession = true)]

    public void getalldisability(string data)
    {








        try
        {
            if (data != String.Empty)
            {
                // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                // {
                Class1 fg = new Class1();

                Context.Response.Write(fg.getalldisability("fgg"));
                //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                //}
            }


        }
        catch
        {
            Context.Response.Write(null);
            // throw;
        }


    }



    [WebMethod(EnableSession = true)]

    public void getallprogramv(string data)
    {








        try
        {
            if (data != String.Empty)
            {
                // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                // {
                Class1 fg = new Class1();

                Context.Response.Write(fg.selectallshort("fggg","kkk"));
                //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                //}
            }


        }
        catch
        {
            Context.Response.Write(null);
            // throw;
        }


    }


    /*************************************************************************************************************************************************/




    /***********************************Get All Merit List**************************************************************************/

    [WebMethod(EnableSession = true)]

    public void getallprogramvmerit(string data,string honstype, string category)
    {








        try
        {
            if (data != String.Empty)
            {
                // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                // {
                Class1 fg = new Class1();

                Context.Response.Write(fg.selectallshortmeritlist("fggg", "kkk",honstype,category));
                //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                //}
            }


        }
        catch
        {
            Context.Response.Write(null);
            // throw;
        }


    }



    /**********************************************************************************************************************************/





    /*****************************Select Merit list for program****************************************************/


    [WebMethod(EnableSession = true)]

    public String Verifi(String OR_CODE,String message)


    {

        try
        {
            if (OR_CODE != String.Empty)
            {
                // if (!string.IsNullOrEmpty(HttpContext.Current.Session["PRTU_UOkT"] as string))
                // {
                Class1 fg = new Class1();

                return fg.setmarks(OR_CODE,message);
                //System.Diagnostics.Debug.Write(fg.getallprogram("fgg"));
                //}
            }


        }
        catch
        {
            return null;
            // throw;
        }
        return null;

    }





    /************************************************************************************************************************/












    /*********************************************************************************************/

}


