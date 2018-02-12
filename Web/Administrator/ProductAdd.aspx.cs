using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class Administrator_ProductAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BingCategory();
    }

    protected void BingCategory()
    {

        IList<CategoryInfo> list = new Category().GetCategory();
        selCate.Items.Clear();

        selCate.DataTextField ="CategoryName";
        selCate.DataValueField = "CategoryId";

        selCate.DataSource = list;
        selCate.DataBind();
        
    }
    protected void ClearForm()
    {
        ProID.Value = "";
        ProName.Value = "";
        ProDesc.Value = "";
    }
    protected void btnCreateItem_Click(object sender, System.EventArgs e)
    {
        ProductInfo pi = new ProductInfo();
        pi.ProductId = ProID.Value.Trim();
        pi.ProductName = ProName.Value.Trim();
        pi.CategoryId = selCate.Items[selCate.SelectedIndex].Value;
        pi.Description = ProDesc.Value.Trim();

        Product p = new Product();
        if (p.InsertProduct(pi))
        {
            WebHelper.ShowMsg(this, "成功创建");
            BingCategory();
            ClearForm();
        }
    }
}
