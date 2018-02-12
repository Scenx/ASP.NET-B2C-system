<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Commodityimages_feedback" %>

<%@ Register Src="~/Commodityimages/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Commodityimages/Control/Foot.ascx" TagPrefix="uc2" TagName="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>发表评论</title>
    <link href="Style/index.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
function Over(obj){

document.getElementById(obj).className="faceBg";

}
function Out(obj){

document.getElementById(obj).className="";

}
function AddFace(obj){

    var str="[:"+obj+":]";
    var ubb=document.getElementById("MessText");
    var ubbLength=ubb.value.length;
    ubb.focus();
    if(typeof document.selection !="undefined")
    {
        document.selection.createRange().text=str;  
    }
    else
    {
        ubb.value=ubb.value.substr(0,ubb.selectionStart)+str+ubb.value.substring(ubb.selectionStart,ubbLength);
    }
}
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="main">
        <uc1:header ID="Header1" runat="server"></uc1:header>
        <div id="ContentColMess" style="height:auto;">
            <div class="ContentNav" id="ContentNav">
                <span>当前的位置</span>
                <img src="Image/sign.gif" width="13" height="13" /> 购买评价</div>
            <div id="FaBiao">
                <table width="928" height="35" border="1" cellpadding="1" cellspacing="1" bordercolor="#CCFF00">
                    <tr bgcolor="#BCEF76">
                        <td height="30" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td width="60" bgcolor="#F4FEE7" class="MessTdStyle">
                            订单号：
                        </td>
                        <td width="843" bgcolor="#F4FEE7" class="MessTdStyle">
                            <asp:Label ID="lbOrderId" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="60" bgcolor="#F4FEE7" class="MessTdStyle">
                            评价：
                        </td>
                        <td width="843" bgcolor="#F4FEE7" class="MessTdStyle">
                        
                            <asp:RadioButtonList ID="comm" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="1">好评</asp:ListItem>
                                <asp:ListItem Value="2">中评</asp:ListItem>
                                <asp:ListItem Value="3">差评</asp:ListItem>
                            </asp:RadioButtonList>
                        
                        </td>
                    </tr>
                    <tr>
                        <td width="60" height="50" bgcolor="#F4FEE7" class="MessTdStyle">
                            &nbsp;
                        </td>
                        <td width="843" bgcolor="#F4FEE7" class="MessTdStyle">
                            &nbsp;<asp:Button ID="ButtonFaBiao" runat="server" Text="提交评论" OnClick="ButtonFaBiao_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br />
        <br />
        <uc2:Foot ID="Foot1" runat="server"></uc2:Foot>
    </div>
    </div>
    </form>
</body>
</html>
