using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class Administrator_AdminSelect : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindManager();

        }
    }
    public void BindManager()
    {

        User user = new User();
        DataListMagement.DataSource = user.GetManagerUser();
        DataListMagement.DataKeyField = "UserId";
        DataListMagement.DataBind();

    }




    protected void DataListMagement_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        User user = new User();
        string txtId = DataListMagement.DataKeys[e.Item.ItemIndex].ToString();
        user.DeleteManagerById(txtId);
        BindManager();
        Response.Redirect("AdminSelect.aspx");
    }

}
