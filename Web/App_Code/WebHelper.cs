﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
///WebHelper 的摘要说明
/// </summary>
public class WebHelper
{
    public WebHelper()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    public static void ShowMsg(Page page, string msg)
    {   
        string content = "<script language='javascript'>alert('"+msg+"') </script>";
        page.ClientScript.RegisterClientScriptBlock(page.GetType(),"msg",content);
    }
}
