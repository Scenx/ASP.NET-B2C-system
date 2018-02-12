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

public partial class Entry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindUserInfo();
        BindUserOrder();
    }
    public void BindUserInfo() {

        User user = new User();
        if (Session["CommodityimagesName"] != null)
        {

            InfoRepeader.DataSource = user.GetUserDataByName(Session["CommodityimagesName"].ToString());
            InfoRepeader.DataBind();

        }
        else {

            Response.Redirect("Index.aspx");
        
        }
    
    }
    public void BindUserOrder() {

        Order order=new Order();
        if (Session["CommodityimagesName"] != null)
        {
            OrderRepeater.DataSource = order.GetOrderAndOrderStatus(Session["CommodityimagesName"].ToString());
            OrderRepeater.DataBind();
        }
        else
        {

            Response.Redirect("Index.aspx");

        }   
    
    }
    public string IsPay(int nPay) {

        if (nPay==1)
        {

            return "已付款";

        }
        else if (nPay == 2)
        {
            return "已发货";
        }
        else
        {

            return "没付款";

        }
    
    }
    public string IsCheckOrder(bool nCheckOrder)
    {

        if (nCheckOrder)
        {

            return "已收到";

        }
        else
        {

            return "没收到";

        }

    }
    public string IsFeedBack(int nFeedBack)
    {

        if (nFeedBack==0)
        {

            return "无";

        }
        else if (nFeedBack == 1)
        {

            return "好评";

        }
        else if (nFeedBack == 2)
        {

            return "中评";

        }
        else 
        {

            return "差";
        
        }

    }
    protected void OrderRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        //判断操作类型
        if ("pay".Equals(e.CommandName)) //付款
        {
            //取订单编号
            string orderId = e.CommandArgument.ToString();
            //OrderStatus os = new OrderStatus();

            /*if (os.UpdateOrderStatus(orderId, "1", "", "") > 0)
            {
                WebHelper.ShowMsg(this, "付款成功！");
                BindUserOrder();
            }*/
            Response.Redirect("Pay.aspx?OrderId=" + orderId);
        }
        else if ("confirm".Equals(e.CommandName)) //确认收货
        {
            //取订单编号
            string orderId = e.CommandArgument.ToString();
            OrderStatus os = new OrderStatus();

            if (os.UpdateOrderStatus(orderId, "", "1", "") > 0)
            {
                WebHelper.ShowMsg(this, "确认收货成功！");
                BindUserOrder();
            }
        }
        else if ("comment".Equals(e.CommandName)) //评论
        {
            //取订单编号，转入评论界面
            string orderId = e.CommandArgument.ToString();
            Response.Redirect("feedback.aspx?oid=" + orderId);
        }

        
    }
}
