<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Administrator_Index" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>商城后台管理工作平台</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="top">
    </div>
    <div id="center">
        <div id="center_left">
        </div>
  
        <div id="center_middle">
            <br />
            <div class="user">
                <label>
                    用户名:
                    <asp:TextBox ID="txtUsersName" runat="server" Width="80px"></asp:TextBox>
                </label>
            </div>
            <div class="user">
                <label>
                    密&nbsp;&nbsp;&nbsp;&nbsp;码:
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="80px"></asp:TextBox>
                </label>
            </div>
        </div>
        <div id="center_middle_right">
        </div>
        <div id="center_submit">
            <div class="button">
                <asp:ImageButton ID="imgbtnLogin" runat="server"  width="57" height="20"  
                    ImageUrl="images/dl.gif" OnClick="imgbtnLogin_Click"  />
            </div>
            <div class="button">
                <asp:ImageButton ID="imgbtnReset" runat="server"  width="57" height="20"  
                    ImageUrl="images/cz.gif" OnClick="imgbtnReset_Click" />
            </div>
        </div>
        <div id="center_right">
        </div>
    </div>
    <div id="footer">
    </div>
    </form>
</body>
</html>
