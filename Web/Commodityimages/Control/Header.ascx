<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Control_Header" %>
<style type="text/css">
.label3
{
	font-size:12px;
	 color:#FF6600;
	 font-family:Arial;
}
</style>
<div id="HeaderShow">
    <div class="Logon" id="Logon">
        <a>
            <img src="Image/logo1.gif" width="183" height="76" border="0" /></a></div>
    <div class="Login" id="Login">
        <table cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td width="284" style="height: 23px">
                    </td>
                    <td id="UserLogin" valign="center" align="right" width="25" runat="server" style="height: 23px">
                        <img height="18" src="Image/login.gif" width="18">
                    </td>
                    <td valign="bottom" align="middle" style="height: 23px">
                        <asp:HyperLink ID="LinkEntry" runat="server" NavigateUrl="~/Commodityimages/Landing.aspx">登录</asp:HyperLink>
                        |
                        <asp:HyperLink ID="LinkLogin" runat="server" NavigateUrl="~/Commodityimages/Login.aspx">注册</asp:HyperLink><asp:Label
                            ID="LabelWelcome" runat="server" Text="Label" CssClass="label3" Visible="false"></asp:Label>
                        <asp:LinkButton ID="linkReet" Visible="false" runat="server" 
                            onclick="linkReet_Click">注销</asp:LinkButton>
                    </td>
                    <td valign="center" align="right" width="28" style="height: 23px">
                        <img height="19" src="Image/cart.gif" width="26" />
                    </td>
                    <td class="font1" valign="bottom" align="middle" width="176" style="height: 23px">
                        <a class="font2" href="http://localhost:6885/DSFree/Shopping.aspx"><span class="font2">
                        </span></a>&nbsp;<a href="UserCenter.aspx">会员中心</a> | <a href="../../Administrator/Index.aspx">管理员入口</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="Search" id="Sheach">
        <table cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td width="108" background="Image/find.gif" style="height: 39px">
                    </td>
                    <td valign="center" align="middle" background="Image/find_bg.gif" style="width: 429px;
                        height: 39px;">
                        <!--Form Start-->
                        <table cellspacing="0" cellpadding="0" width="430" border="0">
                            <tbody>
                                <tr>
                                    <td valign="center" align="middle" width="104" style="height: 24px">
                                        <span id="ctl00_lbSelect">
                                            <asp:DropDownList ID="DropDownListSearch" runat="server" Width="105px">
                                            </asp:DropDownList>
                                        </span>
                                    </td>
                                    <td class="font3" align="middle" width="48" style="height: 24px">
                                        <nobr>关键字</nobr>
                                    </td>
                                    <td align="left" width="133" style="height: 24px">
                                        <input class="font1" size="18" id="SearchKey" runat="server">
                                    </td>
                                    <td align="middle" width="59" style="height: 24px">
                                        <asp:ImageButton ID="ImageButtonSearch" ImageUrl="~/Commodityimages/Image/f_bt.gif" runat="server"
                                            OnClick="ImageButtonSearch_Click" />
                                    </td>
                                    <td align="middle" style="height: 24px; width: 72px;">
                                        <a href="ViewSearch.aspx">
                                            <img height="20" alt="高级搜索" src="Image/a_bt.gif" width="64" border="0"></a>
                                    </td>
                                    <td width="10">
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" controltovalidate="SearchKey"></asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--Form End-->
                    </td>
                    <td width="16" background="Image/find_r.gif" style="height: 39px">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div id="Nav" class="Nav" runat="server">
    </div>
    <div class="CommText" id="CommendText">
        <table cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td width="20" height="26">
                    </td>
                    <td width="105">
                        <span class="STYLE1">最新商品推荐</span>
                    </td>
                    <td width="10" height="26">
                    </td>
                    <td width="815" height="26">
                        <div id="ProductOne" class="ProductOne" runat="server">
                        </div>
                    </td>
                    <td width="10" height="26">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="CommPic" id="CommPic" runat="server">
        <div id="demo" align="left" style="overflow: hidden; width: 950px; color: #ffffff">
            <table width="950px" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td id="demo1" runat="server">
                    </td>
                    <td id="demo2" align="left">
                    </td>
                </tr>
            </table>
        </div>

        <script language="javascript" type="text/javascript"> 
  var speed=30   
  demo2.innerHTML=Header1_demo1.innerHTML   
  function   Marquee(){   
  if(demo2.offsetWidth-demo.scrollLeft<=0)   
  demo.scrollLeft-=Header1_demo1.offsetWidth   
  else{   
  demo.scrollLeft++   
  }   
  }   
  var   MyMar=setInterval(Marquee,speed)   
  demo.onmouseover=function()   {clearInterval(MyMar)}   
  demo.onmouseout=function()   {MyMar=setInterval(Marquee,speed)}   
        </script>

    </div>
</div>
