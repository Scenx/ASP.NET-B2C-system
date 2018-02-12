<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CloseSelect.aspx.cs" Inherits="Administrator_CloseSelect" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>服装信息查看与删除</title>
    
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
            <asp:DataList ID="DataListClose" runat="server" 
                OnDeleteCommand="DataListClose_DeleteCommand">
                <HeaderTemplate>
                    <table width="920" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                        <tr>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                               产品id
                            </td>
                            <td width="200" align="center" bgcolor="#CCCCCC">
                               产品名称
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                价格
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                会员价
                            </td>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                                VIP价格
                            </td>
                               <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                               销量
                            </td>
                                </td>
                               <td width="50" height="35" align="center" bgcolor="#CCCCCC">
                              库存
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                产地
                            </td>
                            <td width="50" align="center" bgcolor="#CCCCCC">
                                点击量
                            </td>
                            
                                <td width="150" align="center" bgcolor="#CCCCCC">
                                操作
                            </td>
                          
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr bgcolor="#F6F6F6">
                        <td height="30" align="center">
                            <%# Eval("ItemId")%>
                        </td>
                        <td height="30" align="center">
                            <%# BulidContent(Eval("ItemName").ToString())%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("AgoraPrice")%>
                        </td>
                          <td height="30" align="center">
                            <%# Eval("MemberPrice")%>
                        </td>
                        
                        <td height="30" align="center">
                            <%# Eval("VipPrice")%>
                        </td>
                        
                             <td height="30" align="center">
                            <%# Eval("Sale")%>
                        </td>
                             </td>
                        
                             <td height="30" align="center">
                            <%# Eval("Remnant")%>
                        </td>
                             <td height="30" align="center">
                          <%# Eval("Area")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("ClickTime")%>
                        </td>
                   
                 
                        <td height="30" align="center">
                            <asp:Button ID="DeleteClose" CssClass="btn" CommandName="delete" runat="server" Text="删除" BackColor="Khaki"
                                BorderColor="Gray" BorderWidth="1px" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:DataList>
            <div style="text-align:center" >
              <asp:Label ID="lblPagedInfo" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnFirstPage" runat="server" onclick="btnFirstPage_Click" 
                Text="第一页" CssClass="btn" />
            <asp:Button ID="btnPrior" runat="server" onclick="btnPrior_Click" 
               Text="上一页" CssClass="btn" />
            <asp:Button ID="btnNext" runat="server" onclick="btnNext_Click" Text="下一页" CssClass="btn" />
            <asp:Button ID="btnLast" runat="server" onclick="btnLast_Click" Text="末页" CssClass="btn" />
            </div>
            <br />
        </div>

    </div>
    </form>
</body>
</html>
