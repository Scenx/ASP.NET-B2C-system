<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Item.aspx.cs" Inherits="ItemPage" %>

<%@ Register Src="~/Commodityimages/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Commodityimages/Control/Foot.ascx" TagPrefix="uc2" TagName="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <%=txtTitle %></title>
    <link href="Style/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="main">
        <uc1:Header ID="Header1" runat="server"></uc1:Header>
        <div id="ConItemCol">
            <asp:FormView ID="FormViewItem" runat="server">
                <ItemTemplate>
                    <table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="442" height="502" rowspan="15" valign="top">
                                <img alt="<%# Eval("ItemName")%>" src="<%# Eval("ItemBigImage")%>" width="440" height="500" />
                            </td>
                            <td width="18" rowspan="15" valign="top" bgcolor="#f9ffec">
                            </td>
                            <td width="480" height="28" valign="middle" class="ItemLine">
                                商品名称：<asp:Label ID="LaItemName" runat="server" CssClass="label1" Text='<%# Eval("ItemName")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                市场价：<asp:Label ID="label1" runat="server" CssClass="label1"> <%# Eval("AgoraPrice")%></asp:Label>元
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                VIP价：<asp:Label ID="label" runat="server" CssClass="label1"> <%# Eval("VipPrice")%></asp:Label>元
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                会员价：<asp:Label ID="LaPrice" runat="server" CssClass="label1" Text='<%# Eval("MemberPrice")%>'></asp:Label>元
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                地区：<%# Eval("Area")%>
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                新鲜度：<%# Eval("Fresh")%>
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                品牌：<%# Eval("Brand")%>
                            </td>
                        </tr>
                        <tr>
                            <td valign="middle" class="ItemLine" style="height: 28px">
                                点击次数：<%# Eval("ClickTime")%>
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                出售总量：<%# Eval("Sale")%>
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                剩余：<%# Eval("Remnant")%>
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                                是否为推荐的商品：<%# Eval("Comment").Equals("1")?"是":"否"%>
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="middle" class="ItemLine">
                            </td>
                        </tr>
                        <tr>
                            <td height="56" valign="middle" class="ItemLine" align="center">
                                <asp:ImageButton ID="Buy" runat="server" ImageUrl="~/Commodityimages/Image/buy.bmp" CommandArgument="<%Bind('id')%>" OnClick="Buy_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="Shopping" runat="server" ImageUrl="~/Commodityimages/Image/Cart.bmp" OnClick="Shopping_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td height="28" valign="top" class="ItemLine">
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>
            &nbsp;
        </div>
        <br /><br /><uc2:Foot id="Foot1" runat="server"></uc2:Foot>
    </div>
    </div>
    </form>
</body>
</html>
