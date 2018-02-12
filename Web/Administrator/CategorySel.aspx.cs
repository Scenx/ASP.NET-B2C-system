using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class Administrator_CategorySel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindCategory();
            BingProduct();


        }
    }

    protected void BingProduct()
    {
        Product p = new Product();
        DataListProduct.DataSource = p.GetProductAndCategory();
        DataListProduct.DataKeyField = "ProductId";
        DataListProduct.DataBind();
    }

    public void BindCategory()
    {

        Category cg= new Category();
        DataListCategorySel.DataSource = cg.GetCategory();
        DataListCategorySel.DataKeyField = "CategoryId";
        DataListCategorySel.DataBind();

    }

    protected string IsCategoryAllow(bool IsAllow)
    {
        return IsAllow ? "是" : "否";
    }




    protected void DataListCategorySel_DeleteCommand(object source, DataListCommandEventArgs e)
    {

        string catagoryId = DataListCategorySel.DataKeys[e.Item.ItemIndex].ToString();
        Category c = new Category();
        c.DeleteCategoryById(catagoryId);
        BindCategory();
        Response.Redirect("CategorySel.aspx");     
    }
    protected void DataListProduct_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string pId = DataListProduct.DataKeys[e.Item.ItemIndex].ToString();
        Product p = new Product();
        p.DeleteProductById(pId);
        BingProduct();
        Response.Redirect("CategorySel.aspx");     
    }
}
