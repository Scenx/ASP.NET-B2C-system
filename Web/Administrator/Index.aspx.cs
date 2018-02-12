using System;
using BLL;
public partial class Administrator_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Request.QueryString["error"] != null && Request.QueryString["error"].ToString()== "nologin")
            {
                WebHelper.ShowMsg(this, "请重新登录");
            }
            this.InitPage();
        }
    }
    private void InitPage()
    {
        this.txtUsersName.Text = "";
        this.txtPassword.Text = "";
    }
    //点击登陆按钮
    protected void imgbtnLogin_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        //检主测登录代码

        //成功指向主页面，session保存


        string name = this.txtUsersName.Text;
        string pass = this.txtPassword.Text;

        if (name == "")
        {
            WebHelper.ShowMsg(this, "用户名不能为空?请输入用户名!");
        }
        else if (pass == "")
        {
            WebHelper.ShowMsg(this, "密码不能为空?请输入密码!");
        }
        else
        {
            User user = new User();
            bool affacted = user.CheckIsManager(name, pass);

            if (affacted)
            {
                InitPage();
                Session["Manager"] = name.Trim().ToString();
                Response.Redirect("Main.aspx");
            }
            else
            {
                WebHelper.ShowMsg(this, "用户名或者密码错误");
                
            }
        }
    }

    protected void imgbtnReset_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        this.InitPage();
    }
}
