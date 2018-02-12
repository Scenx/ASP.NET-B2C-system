using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Commodityimages_feedback : System.Web.UI.Page
{
    private string oid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        oid = Request.QueryString["oid"];
        
        if (oid == null || oid.Length == 0) 
        {
            Response.Redirect("Index.aspx");
        }

        lbOrderId.Text = oid;
    }
    protected void ButtonFaBiao_Click(object sender, EventArgs e)
    {
        //发表评论
        OrderStatus os = new OrderStatus();

        if (os.UpdateOrderStatus(oid, "", "", comm.SelectedValue) > 0)
        {
            //WebHelper.ShowMsg(this, "评论成功！");
            Response.Write("<script>alert('评论成功！');location.href='UserCenter.aspx';</script>");
        }
    }
}
