<%@ Page Language="C#" AutoEventWireup="true" CodeFile="replyUserMess.aspx.cs" Inherits="Administrator_replyUserMess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <script src="Js/Main.js" type="text/javascript"></script>
    <script src="js/TabControl.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        //加载页面要使用的CSS
        loadCss(top._skinId, 'Page.css');

    </script>
    <style type="text/css">
        .style1
        {
            width: 148px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="LoginCon">
                <table width="940px" border="1" cellpadding="1" cellspacing="1" bordercolor="#E1E1E1">
                    <tr>
                        <td height="35" align="right" class="style1">
                            留言人：
                        </td>
                        <td>
                            <asp:Label ID="lbName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td height="35" align="right" class="style1">
                            留言内容：
                        </td>
                        <td>
                            <asp:Label ID="lbContent" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td height="35" align="right" class="style1">
                            留言时间：
                        </td>
                        <td>
                            <asp:Label ID="lbTime" runat="server"></asp:Label>
                        </td>
                    </tr>
                   <tr>
                        <td height="35" align="right" class="style1">
                            回复内容：
                        </td>
                        <td>
                           
                            <asp:TextBox ID="replycnt" runat="server" Height="136px" TextMode="MultiLine" 
                                Width="475px"></asp:TextBox>
                           
                           <span class="Login_ErroRound" id="Span1">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="replycnt" ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                        </td>
                        
                    </tr>
                    <tr>
                        <td height="50" colspan="2" align="center">
                            <asp:Button ID="btnCreatePro" CssClass="btn" Text="回复留言"  runat="server" onclick="btnCreateItem_Click" 
                               />
                          
              </td>
                    </tr>
                </table>
            </div>
    </form>
</body>
</html>
