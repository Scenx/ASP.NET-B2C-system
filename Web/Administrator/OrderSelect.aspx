<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderSelect.aspx.cs" Inherits="Administrator_OrderSelect" %>

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
            <asp:DataList ID="DataListOrder" runat="server" 
                OnDeleteCommand="DataListOrder_DeleteCommand"
                onUpdatecommand="DataListOrder_UpdateCommand">
                <HeaderTemplate>
                    <table width="920" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                        <tr>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                               订单号
                            </td>
                            <td width="200" align="center" bgcolor="#CCCCCC">
                               商品名称
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                价格
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                数量
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                收货地址
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                电话
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                手机
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                总价
                            </td>
                            <td width="100" height="35" align="center" bgcolor="#CCCCCC">
                                付款状态
                            </td>
                            <td width="100" align="center" bgcolor="#CCCCCC">
                                收货状态
                            </td>
                            <td width="200" align="center" bgcolor="#CCCCCC">
                                评论状态
                            </td>
                            
                                <td width="200" align="center" bgcolor="#CCCCCC">
                                操作
                            </td>
                          
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr bgcolor="#F6F6F6">
                        <td height="30" align="center">
                            <%# Eval("OrderId")%>
                        </td>
                        <td height="30" align="center">
                            <%# BulidContent(Eval("ItemName").ToString())%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("Price")%>
                        </td>
                          <td height="30" align="center">
                            <%# Eval("ItemTotal")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("UserAdress")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("UserPhone")%>
                        </td>
                        <td height="30" align="center">
                            <%# Eval("TelePhone")%>
                        </td>
                        <td height="30" align="center">
                            <%# BindTotal(decimal.Parse(Eval("Price").ToString()), int.Parse(Eval("ItemTotal").ToString()))%>
                        </td>
                        <td height="30" align="center">
                           <%# IsPay(Convert.ToInt16(Eval("Pay")))%>
                        </td>
                        <td height="30" align="center">
                           <%# IsCheckOrder(Convert.ToBoolean(Eval("CheckOrder")))%>
                        </td>
                        <td height="30" align="center">
                         <%# IsFeedBack(Convert.ToInt32(Eval("FeedBack")))%>
                        </td>
                 
                        <td height="30" align="center">
                            <asp:Button ID="DeleteOrder" CssClass="btn" CommandName="delete" runat="server" Text="删除" BackColor="Khaki"
                                BorderColor="Gray" BorderWidth="1px" />
                                &nbsp;
                            <asp:Button ID="Send" CssClass="btn" CommandName="update" runat="server" Text="发货" BackColor="Khaki"
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
