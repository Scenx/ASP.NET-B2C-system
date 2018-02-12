<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaySuccess.aspx.cs" Inherits="PaySuccess" %>
<%@ Register Src="~/Commodityimages/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Commodityimages/Control/Foot.ascx" TagPrefix="uc2" TagName="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>电子商务系统</title>
            <link href="Style/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
             <uc1:Header id="Header1" runat="server"></uc1:Header>
                             <div id="ConItemCol">
  <table width="720" height="300" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
    <td>
    
    </td>
      <td align="center" style="width:100%;">
         <asp:FormView ID="FormViewOrderData" runat="server">
             <ItemTemplate>
                          <table width="520" border="1" align="left" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                          <tr>
                          <td  align="center">
                          <asp:Label ID="lbdingdan" runat="server" Text="付款成功！" CssClass="label5"></asp:Label>
                          </td>
                          </tr>
        <tr>
          <td  align="center" bgcolor="#CCCCCC" style="height: 37px">您的商品订单成功,请记录您的订单号<asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderId")%>'></asp:Label></td>
          </tr>
        <tr bgcolor="#F6F6F6">
          <td height="30" align="center"  style="color:Red; font-size:13px; font-family:Arial;
          font-weight:600;"></td>
          </tr>
          <tr bgcolor="#F6F6F6">
          <td height="30" align="center" >
          <a href="Index.aspx" style="color:Black; font-size:12px; font-family:Arial;" >返回首页</a></td>
          </tr>
      </table>
             </ItemTemplate>
             </asp:FormView>
          
          </td>
    </tr>
    <tr>
    <td style="width:100%;" align="center">
    
    </td>
    </tr>
  </table>
</div>
              <br /><br /><uc2:Foot id="Foot1" runat="server"></uc2:Foot>
    </div>
    </form>
</body>
</html>
