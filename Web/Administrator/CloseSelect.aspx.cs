using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class Administrator_CloseSelect : System.Web.UI.Page
{
    static int pageSize = 10;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            ViewState["PageIndex"] = 0;
            ViewState["PageCount"] = Math.Ceiling((double)new Item().GetTheItemCount() / pageSize);

            BindClose();
            PageIndexChange();

           

        }
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

    private void PageIndexChange()
    {
        lblPagedInfo.Text = "共" + ViewState["PageCount"] + "页, 第" + (int.Parse(ViewState["PageIndex"].ToString()) + 1) + "页";
        SetPagerButtonState();
    }


    private void SetPagerButtonState()
    {
        btnPrior.Enabled = true;
        btnNext.Enabled = true;

        int pageIndex = int.Parse(ViewState["PageIndex"].ToString());
        int pageCount = int.Parse(ViewState["PageCount"].ToString());

        if (pageIndex == 0)
        {
            btnPrior.Enabled = false;
        }
        if (pageIndex + 1 == pageCount)
        {
            btnNext.Enabled = false;
        }
    }


    protected void btnFirstPage_Click(object sender, EventArgs e)
    {
        ViewState["PageIndex"] = 0;
        BindClose();
        PageIndexChange();
    }
    protected void btnPrior_Click(object sender, EventArgs e)
    {
        int pageIndex = int.Parse(ViewState["PageIndex"].ToString());
        pageIndex--;
        ViewState["PageIndex"] = pageIndex;
        BindClose();
        PageIndexChange();
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        int pageIndex = int.Parse(ViewState["PageIndex"].ToString());
        pageIndex++;
        ViewState["PageIndex"] = pageIndex;
        BindClose();
        PageIndexChange();
    }
    protected void btnLast_Click(object sender, EventArgs e)
    {
        ViewState["PageIndex"] = int.Parse(ViewState["PageCount"].ToString()) - 1;
        BindClose();
        PageIndexChange();
    }
    public void BindClose()
    {
        int pageIndex = int.Parse(ViewState["PageIndex"].ToString());
        Item item = new Item();
        DataListClose.DataSource = item.GetThePagedItem(pageSize, pageIndex);
        DataListClose.DataKeyField = "ItemId";
        DataListClose.DataBind();
    }



    protected void DataListClose_DeleteCommand(object source, DataListCommandEventArgs e)
    {

        Item item = new Item();
        string txtId = DataListClose.DataKeys[e.Item.ItemIndex].ToString();
        item.DeleteItemById(txtId);
        BindClose();
        Server.Transfer("CloseSelect.aspx");

    }
}
