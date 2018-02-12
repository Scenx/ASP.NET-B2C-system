<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminSelect.aspx.cs" Inherits="Administrator_AdminSelect" %>

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
            <asp:DataList ID="DataListMagement" runat="server" OnDeleteCommand="DataListMagement_DeleteCommand">
                <HeaderTemplate>
                    <table width="920" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                        <tr>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                               用户id
                            </td>
                            <td width="200" align="center" bgcolor="#CCCCCC">
                               名字
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                密码
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                电子邮箱
                            </td>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                                电话号码
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                手机号码
                            </td>
                            <td width="200" align="center" bgcolor="#CCCCCC">
                                家庭住址
                            </td>
                            
                                <td width="200" align="center" bgcolor="#CCCCCC">
                                操作
                            </td>
                          
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr bgcolor="#F6F6F6">
                        <td height="30" align="center">
                            <%# Eval("UserId")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("UserName")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("UserPass")%>
                        </td>
                          <td height="30" align="center">
                            <%# Eval("UserEmail")%>
                        </td>
                        
                        <td height="30" align="center">
                            <%# Eval("UserPhone")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("UserTelephone")%>
                        </td>
                        <td height="30" align="center">
                          <%# Eval("UserAdress")%>
                        </td>
                 
                        <td height="30" align="center">
                            <asp:Button ID="DeleteMagager" CssClass="btn" CommandName="delete" runat="server" Text="删除" BackColor="Khaki"
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
