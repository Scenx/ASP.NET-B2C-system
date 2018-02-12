using System;
public partial class Main_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["Manager"] == null)
            {
                Response.Redirect("Index.aspx?error=nologin");
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void lbtn_Click(object sender, EventArgs e)
    {
       
        Session["Manager"] = null;
        Response.Redirect("Index.aspx");

    }
}
