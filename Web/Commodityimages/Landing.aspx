<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Landing.aspx.cs" Inherits="Default_Landing" %>

<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登陆页面</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="Style/StyleLanding.css" rel="stylesheet" type="text/css" />

    <script src="Jscript/Ajax.js" type="text/javascript"></script>

    <script src="Jscript/JScriptLanding.js" type="text/javascript"></script>

</head>
<body onload="inputUserNameFocus();">
    <form id="form1" runat="server">
    <table class="table" cellpadding="0" cellspacing="0">
        <tr>
            <!--左边空白-->
            <td class="td1">
            </td>
            <!--中间空白-->
            <td class="td2" align="left" valign="top">
                <table class="talbe4" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="5">
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="td6" colspan="2" align="left" valign="top">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <img alt="" src="imagesLanding/1.jpg" />
                        </td>
                        <td class="td7" colspan="3">
                            <table class="table1" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="width: 55%;" align="right">
                                        <img alt="" src="imagesLanding/icon_features_01.gif" />&nbsp;
                                        <asp:Label runat="server" ID="Label4" Text="便宜有好货!" CssClass="server"></asp:Label>&nbsp;超过3.5亿件商品任您选。
                                    </td>
                                    <td style="width: 46%;">
                                        <img alt="" src="imagesLanding/icon_features_04.gif" />&nbsp;
                                        <asp:Label runat="server" ID="Label5" Text="超人气社区!" CssClass="server"></asp:Label>&nbsp;精彩活动每一天。
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 206px;" align="left" valign="top">
                            <img alt="" src="imagesLanding/main_img_1.jpg" />
                            <br />
                            <table class="table" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="font-size: 12px; border-right: 1px; color: #8B8B8B;" valign="top">
                                        &nbsp;&nbsp;
                                        <asp:Label runat="server" ID="Label1" Text="更多选择、更低价格" CssClass="label1"></asp:Label><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;100万种商品包含图书、数<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;码、美妆、运动健康等，价<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;格低于地面店20%以上
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 188px;" align="left" valign="top">
                            <img alt="" src="imagesLanding/main_img_2.jpg" />
                            <br />
                            <table class="table" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="font-size: 12px; border-right: 1px; color: #8B8B8B;" valign="top">
                                        &nbsp;&nbsp;
                                        <asp:Label runat="server" ID="Label2" Text="全场免运费、货到付款" CssClass="label1"></asp:Label><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;免费送货上门、360个城市<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;货到付款。另有网上支付、<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;邮局汇款等多种支付方式
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 179px;" align="left" valign="top">
                            <img alt="" src="imagesLanding/main_img_3.jpg" />
                            <br />
                            <table class="table" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="font-size: 12px; color: #8B8B8B;" valign="top">
                                        &nbsp;&nbsp;
                                        <asp:Label runat="server" ID="Label3" Text="真实、优质的商品评论" CssClass="label1"></asp:Label><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;千万用户真实、优质的商品<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;评论，给您多角度、全方位<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;的购物参考
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 300; border-left: 1px; border-bottom: 2px; border-right: 2px; background-image: url('imagesLanding/main_img_5.bmp');"
                            align="left" valign="top">
                            <table class="talbe3" cellpadding="0" cellspacing="0" border="1">
                                <tr>
                                    <td class="td8" colspan="2">
                                        <img alt="" src="imagesLanding/pass.jpg" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td5" colspan="2">
                                        <table class="talbe5" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td class="td4" align="right" valign="top">
                                                    用户名:
                                                </td>
                                                <td class="td3" align="left" valign="top">
                                                    &nbsp;
                                                    <asp:TextBox runat="server" ID="tbUsersName"  MaxLength="16" CssClass="textboxout"
                                                        onfocus="this.className='textboxfocus'"  onblur="this.className='textboxout'"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td5" colspan="2">
                                        <table class="talbe5" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td class="td4" align="right">
                                                    密码:
                                                </td>
                                                <td class="td3" align="left">
                                                    &nbsp;
                                                    <asp:TextBox runat="server" ID="tbUsersPass" TextMode="Password" MaxLength="16" CssClass="textboxout" 
                                                        onfocus="this.className='textboxfocus'"  onblur="this.className='textboxout'"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td9" colspan="2" style="height: 18px;">
                                        <table class="table" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td class="td1">
                                                </td>
                                                <td class="td2" align="center">
                                                    <asp:Label ID="lbyzm" CssClass="label4" runat="server"></asp:Label>
                                                </td>
                                                <td class="td1">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 13px; color: #8B8B8B;" align="left" colspan="2">
                                        &nbsp;&nbsp;
                                        <asp:Label runat="server" ID="lblogning" Text="还不是购物网用户?" CssClass="label"></asp:Label>
                                        快捷方便的免费注册，<br />
                                        &nbsp;&nbsp;&nbsp;让你立刻尽享当当网提供的各项优惠及服务...
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <br />
                                        <%--快速注册按钮--%>
                                        <a href="Login.aspx" class="a">
                                            <img class="img1" alt="快速注册" src="imagesLanding/logning.jpg" /></a>
                                        <%--登陆按钮--%>&nbsp;&nbsp;
                                        <asp:ImageButton runat="server" ID="imgbtLanding" ImageUrl="imagesLanding/LANDING.jpg"
                                            OnClick="ImgbtLanding_OnClick" />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 100px;" align="left" valign="top" colspan="2">
                            <img alt="" src="imagesLanding/main_img_4.bmp" />&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <br />
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5" style="font-size: 14px;" align="center">
                            Copyright (C) 电子商务系统 2016-2017, All Rights Reserved &nbsp;
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <!--右边空白-->
            <td style="width: 15%;">
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
