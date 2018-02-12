using System;
using BLL;
public partial class Default_Landing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InitPage();
        }
    }
    private void InitPage()
    {
        this.tbUsersName.Text = "";
        this.tbUsersPass.Text = "";
        this.lbyzm.Text = "";
        this.tbUsersName.Focus();
    }
    //点击登录按钮的操作
    protected void ImgbtLanding_OnClick(object sender, EventArgs e)
    {
        if (this.tbUsersName.Text=="")
        {
            this.lbyzm.Text = "用户名不能为空?请输入用户名!";
        }
        else if(this.tbUsersPass.Text=="")
        {
            this.lbyzm.Text = "密码不能为空?请输入密码!";
        }
        else
        {
            User blluser = new User();
            string name=this.tbUsersName.Text;
        //    string pass=this.tbUsersPass.Text;

            //获取密码
            string Pass = this.tbUsersPass.Text;
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(Pass, "MD5").ToLower().Substring(8, 16);

            bool affacted = blluser.CheckUser(name, pwd);
            if (affacted)
            {
                InitPage();
                Session["CommodityimagesName"] = name.Trim().ToString();
                Response.Redirect("Index.aspx");
            }
            else
            {
                InitPage();
                this.lbyzm.Text = "用户名或密码不正确!!";
            }
        }
    }
}
