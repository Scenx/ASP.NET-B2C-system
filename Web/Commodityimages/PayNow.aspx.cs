using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
public partial class Commodityimages_PayNow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonPay_Click(object sender, EventArgs e)
    {
        //付款
        //取订单编号
        string orderId = Request.Params.Get("oid");
        OrderStatus os = new OrderStatus();

        if (os.UpdateOrderStatus(orderId, "1", "", "") > 0)
        {
            Response.Redirect("PaySuccess.aspx?OrderId=" + orderId); 
        }
    }
}
