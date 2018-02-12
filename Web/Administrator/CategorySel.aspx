<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CategorySel.aspx.cs" Inherits="Administrator_CategorySel" %>

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
   
    <h1>大分类</h1>
      <div id="ConItemCol" style="width:940px; height:auto;">
            <asp:DataList ID="DataListCategorySel" runat="server"   
                OnDeleteCommand="DataListCategorySel_DeleteCommand">
                <HeaderTemplate>
                    <table width="920" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                        <tr>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                               大分类ID
                            </td>
                            <td width="200" align="center" bgcolor="#CCCCCC">
                               分类名
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                描述
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                可用
                            </td>
                                <td width="200" align="center" bgcolor="#CCCCCC">
                                操作
                            </td>
                          
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr bgcolor="#F6F6F6">
                        <td height="30" align="center">
                            <%# Eval("CategoryId")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("CategoryName")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("Description")%>
                        </td>
                          <td height="30" align="center">
                            <%# IsCategoryAllow(Boolean.Parse(Eval("Vis").ToString()))%>
                        </td>
                        <td height="30" align="center">
                            <asp:Button ID="DeleteCategory" CssClass="btn" CommandName="delete" runat="server" Text="删除" BackColor="Khaki"
                                BorderColor="Gray" BorderWidth="1px" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:DataList>
        </div>
        
        <hr />
        
          <h1>小分类</h1>
      <div id="ConItemCol" style="width:940px; height:auto;">
            <asp:DataList ID="DataListProduct" runat="server" 
                ondeletecommand="DataListProduct_DeleteCommand"   >
                <HeaderTemplate>
                    <table width="920" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                        <tr>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                               小分类ID
                            </td>
                            <td width="200" align="center" bgcolor="#CCCCCC">
                               分类名
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                所属大分类
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                描述
                            </td>
                                 <td width="100" align="center" bgcolor="#CCCCCC">
                                是否可用
                            </td>
                                <td width="200" align="center" bgcolor="#CCCCCC">
                                操作
                            </td>
                          
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr bgcolor="#F6F6F6">
                        <td height="30" align="center">
                            <%# Eval("ProductId")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("ProductName")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("CategoryName")%>
                        </td>
                             <td height="30" align="center">
                            <%# Eval("Description")%>
                        </td>
                          <td height="30" align="center">
                            <%# IsCategoryAllow(Boolean.Parse(Eval("Vis").ToString()))%>
                        </td>
                        <td height="30" align="center">
                            <asp:Button ID="DeleteProduct" CssClass="btn" CommandName="delete" runat="server" Text="删除" BackColor="Khaki"
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
