using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
public partial class Administrator_OrderSelect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindOrder();
        }
    }


    public decimal BindTotal(decimal nPrice, int nTotal)
    {

        return nPrice * nTotal;

    }
    public string BulidContent(string content)
    {
        if (content.Length >= 10)
        {
            content = content.Substring(0, 10);
            content += "..";
        }

        return content;
    }
    public void BindOrder()
    {

        Order o = new Order();
        DataListOrder.DataSource = o.GetAllOrderAndOrderStatus();
        DataListOrder.DataKeyField = "OrderId";
        DataListOrder.DataBind();

    }






    public string IsPay(int nPay)
    {

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

        if (nFeedBack == 0)
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

    protected void DataListOrder_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Order o = new Order();
        string txtId = DataListOrder.DataKeys[e.Item.ItemIndex].ToString();
        o.DeleteOrder(txtId);
        BindOrder();
        Response.Redirect("OrderSelect.aspx");
    }

    /// <summary>
    /// 更新订单状态，发货
    /// </summary>
    /// <param name="source"></param>
    /// <param name="e"></param>
    protected void DataListOrder_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        OrderStatus o = new OrderStatus();
        string txtId = DataListOrder.DataKeys[e.Item.ItemIndex].ToString();
        IList<OrderStatusInfo> os = o.GetOrderStatusByOrderId(txtId);
        if (os == null || os.Count ==0||os[0].PayMent == 0)
        {
            //未付款状态，不能发货
            WebHelper.ShowMsg(this, "尚未付款，无法发货！");
            return;
        }
        else if(os[0].PayMent == 2) 
        {
            //已发货
            WebHelper.ShowMsg(this, "已发货！请勿重复点击！");
            return;
        }

        o.SendUpdateOrder(txtId);
        BindOrder();
        Response.Redirect("OrderSelect.aspx");
    }


}
