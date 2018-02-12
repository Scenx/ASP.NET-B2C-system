using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BLL;
using Model;


public partial class Main_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.InitPage();
        }
    }
    private void InitPage()
    {

    }
    //确定添加信息
    protected void btSubmit_OnClick(object sender, EventArgs e)
    {
       
    }

    protected void CreateManager_Click(object sender, EventArgs e)
    {
        User bll = new User();
        UserInfo userInfo = new UserInfo(UserName.Value, UserPassOne.Value, UserEmail.Value, UserPhone.Value, Int64.Parse(UserPhonetele.Value), UserAdress.Value);
        if (Page.IsValid)
        {

            int success = bll.Insertmanager(userInfo);
            if (success > 0)
            {
                WebHelper.ShowMsg(this, "成功添加管理员");
            }

        }
        else
        {
            Response.Redirect("Main.aspx");
        }
    }
}
