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
public partial class PaySuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CommodityimagesName"] != null)
            {
                BindOrderData();
            }
        }
    }
    public void BindOrderData()
    {
        Order bll = new Order();
        FormViewOrderData.DataSource = bll.GetOrderByTwoName(Request.QueryString["OrderId"], Session["CommodityimagesName"].ToString());
        FormViewOrderData.DataBind();
    //    string txtId = Request.QueryString["OrderId"].Trim().ToString();
    //    bll.DeleteOrder(txtId);
    }
}
