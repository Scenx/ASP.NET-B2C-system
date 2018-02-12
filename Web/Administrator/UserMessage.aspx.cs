using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BLL;
using Model;

public partial class Administrator_UserMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BingUserMess();
        }
    }

    protected string BulidContent(string content)
    {
        if (content.Length >= 10)
        {
            content = content.Substring(0, 10);
            content += "...";
        }
        return content;
    }

    protected void BingUserMess()
    {
        UserMess um = new UserMess();
        DataListUserMess.DataSource = um.GetUserMess();
        DataListUserMess.DataKeyField = "Id";
        DataListUserMess.DataBind();
    }
    protected void DataListUserMess_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string id = DataListUserMess.DataKeys[e.Item.ItemIndex].ToString();

        new UserMess().DeleteMessById(id);

        Response.Redirect("UserMessage.aspx");  


    }
    public string ReImg(string nImg)
    {

        nImg = nImg.Replace("\n", "<br>");
        nImg = nImg.Replace("[:", "<img width='20' height='20' src='..\\Commodityimages\\MeFace\\");
        nImg = nImg.Replace(":]", ".gif' />");
        return nImg;

    }
    protected void DataListUserMess_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //回复留言
        string id = DataListUserMess.DataKeys[e.Item.ItemIndex].ToString();

        if ("reply".Equals(e.CommandName))
        {
            Response.Redirect("replyUserMess.aspx?id=" +id);
        }
    }
}
