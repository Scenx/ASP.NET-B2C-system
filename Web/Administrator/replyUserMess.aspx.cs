using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

public partial class Administrator_replyUserMess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.Params["id"];
        
        if (id == null)
            Response.Redirect("UserMessage.aspx");

        if (!Page.IsPostBack)
        {
            BindData(id);
        }
    }

    private void BindData(string id)
    {
        UserMess um = new UserMess();
        UserMessInfo umi = um.GetUserMessById(id);
        if (umi == null)
        {
            Response.Redirect("UserMessage.aspx");
        }
        else
        {
            lbName.Text = umi.Name;
            lbContent.Text = ReImg(umi.Content);
            lbTime.Text = umi.DateTim;
            replycnt.Text = umi.Reply == null ? "" : umi.Reply;
        }
    }
    public string ReImg(string nImg)
    {

        nImg = nImg.Replace("\n", "<br>");
        nImg = nImg.Replace("[:", "<img width='20' height='20' src='..\\Commodityimages\\MeFace\\");
        nImg = nImg.Replace(":]", ".gif' />");
        return nImg;

    }
    protected void btnCreateItem_Click(object sender, EventArgs e)
    {
        //回复留言
        UserMess um = new UserMess();
        if (um.ReplyMessById(Request.Params["id"], replycnt.Text) > 0) {
            Response.Write("<script>alert('回复成功！');location.href='UserMessage.aspx';</script>");
        }
    }
}
