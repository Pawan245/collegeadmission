
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            Response.Clear();



            Bitmap objBitmap = new Bitmap(100, 30);
            Graphics objGraphics = Graphics.FromImage(objBitmap);
            objGraphics.Clear(Color.White);
            objGraphics.SmoothingMode = SmoothingMode.AntiAlias;
            objGraphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
            objGraphics.PixelOffsetMode = PixelOffsetMode.HighQuality;
            Random objRandom = new Random();

            Brush objBrush =
                default(Brush);
            //create background style  
            HatchStyle[] aHatchStyles = new HatchStyle[]
            {
                HatchStyle.ZigZag, HatchStyle.Cross, HatchStyle.Trellis, HatchStyle.Wave, HatchStyle.Vertical, HatchStyle.DashedVertical,
                    HatchStyle.SolidDiamond, HatchStyle.DiagonalCross, HatchStyle.Divot, HatchStyle.DottedDiamond, HatchStyle.DottedGrid, HatchStyle.ForwardDiagonal, HatchStyle.Horizontal,
                    HatchStyle.HorizontalBrick, HatchStyle.Shingle, HatchStyle.LargeConfetti, HatchStyle.LargeGrid, HatchStyle.LightDownwardDiagonal, HatchStyle.SmallConfetti
            };

            RectangleF oRectangleF = new RectangleF(0, 0, 100, 30);
            objBrush = new HatchBrush(aHatchStyles[objRandom.Next(aHatchStyles.Length - 3)], Color.FromArgb((objRandom.Next(100, 255)), (objRandom.Next(100, 255)), (objRandom.Next(100, 255))), Color.White);
            objGraphics.FillRectangle(objBrush, oRectangleF);

            Font objFont = new Font("Courier New", 15, FontStyle.Bold);
            RectangleF rectf = new RectangleF(10, 5, 0, 0);
            objGraphics.DrawString(Session["captcha"].ToString(), objFont, Brushes.Black, rectf);
            objGraphics.Flush();
            Response.ContentType = "image/jpeg";
            objBitmap.Save(Response.OutputStream, ImageFormat.Jpeg);
            objGraphics.Dispose();
            objBitmap.Dispose();



        }
        catch (Exception rt)
        {
            // rt = null;
            // Response.Write(rt);
        }
    }
}