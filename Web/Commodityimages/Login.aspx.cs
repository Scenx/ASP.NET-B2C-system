using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Security.Cryptography;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BLL;
using Model;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }
    //加密技术不过只能加进去不能解释出来,不可逆的
    public string PassSafe(string nPass) {

        byte[] passWord = System.Text.Encoding.UTF8.GetBytes(nPass);
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] passMd5 = md5.ComputeHash(passWord);
        string strPass = System.Text.Encoding.UTF8.GetString(passMd5).Trim().Replace("'","!");
        return strPass;
    }
    //点击注册按钮的事件
    protected void LoginButton_Click(object sender, EventArgs e)
    {


        //获取密码
        string Pass = UserPassOne.Value;
        string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(Pass, "MD5").ToLower().Substring(8, 16);  
        User bll = new User();
        UserInfo userInfo = new UserInfo(UserName.Value, pwd, UserEmail.Value, UserPhone.Value, Int64.Parse(UserPhonetele.Value), UserAdress.Value, Request.UserHostAddress);
        if (Page.IsValid)
        {

            bll.InsertUser(userInfo);
            Session["CommodityimagesName"] = UserName.Value.Trim().ToString();
            HttpContext.Current.Response.Redirect("Index.aspx");

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void EntryButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Landing.aspx");
    }
}
