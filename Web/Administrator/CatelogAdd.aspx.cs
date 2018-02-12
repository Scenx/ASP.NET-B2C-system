using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class Administrator_CatelogAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ClearForm()
    {
        ProID.Value = "";
        ProName.Value = "";
        ProDesc.Value = "";
    }
    protected void btnCreateItem_Click(object sender, System.EventArgs e)
    {
        CategoryInfo pi = new CategoryInfo();
        pi.CategoryId = ProID.Value.Trim();
        pi.CategoryName = ProName.Value.Trim();
        pi.Description = ProDesc.Value.Trim();

        Category p = new Category();
        if (p.InsertCatelog(pi))
        {
            WebHelper.ShowMsg(this, "成功创建");
            ClearForm();
        }
    }
}
