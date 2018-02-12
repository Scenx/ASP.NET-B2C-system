<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserMessage.aspx.cs" Inherits="Administrator_UserMessage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="Js/Main.js" type="text/javascript"></script>
    <script src="js/TabControl.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        //加载页面要使用的CSS
        loadCss(top._skinId, 'Page.css');
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id="ConItemCol" style="width:940px; height:auto;">
            <asp:DataList ID="DataListUserMess" runat="server"   
                OnDeleteCommand="DataListUserMess_DeleteCommand" 
                onitemcommand="DataListUserMess_ItemCommand">
                <HeaderTemplate>
                    <table width="920" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                        <tr>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                               Id
                            </td>
                            <td width="120" align="center" bgcolor="#CCCCCC">
                               姓名
                            </td>
                            <td width="150" align="center" bgcolor="#CCCCCC">
                                内容
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                时间    
                            </td>
                            <td width="60" align="center" bgcolor="#CCCCCC">
                                状态
                            </td>
                            <td width="200" align="center" bgcolor="#CCCCCC">
                                操作
                            </td>
                          
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr bgcolor="#F6F6F6">
                        <td height="30" align="center">
                            <%# Eval("Id")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("Name")%>
                        </td>
                        <td height="30" align="center">
                            <%# BulidContent(Eval("Content").ToString())%>
                        </td>
                        <td height="30" align="center">
                              <%# Eval("DateTim")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("reply") == null ? "<font color='red'>未回复</font>" : "<font color='green'>已回复</font>"%>
                        </td>
                        <td height="30" align="center">
                            <asp:Button ID="ReplyUserMess" CssClass="btn" CommandName="reply" runat="server" Text="查看/回复" BackColor="Khaki"
                                BorderColor="Gray" BorderWidth="1px" Width="60px" />
                            <asp:Button ID="DeleteUserMess" CssClass="btn" CommandName="delete" runat="server" Text="删除" BackColor="Khaki"
                                BorderColor="Gray" BorderWidth="1px" />
                            
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:DataList>
        </div>
    </div>
    </form>
</body>
</html>
