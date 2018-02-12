<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PayNow.aspx.cs" Inherits="Commodityimages_PayNow" %>
<%@ Register Src="~/Commodityimages/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Commodityimages/Control/Foot.ascx" TagPrefix="uc2" TagName="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>电子商务系统</title>
        <link href="Style/index.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
    function CheckPost(){

        var txtPost = document.getElementById("UserPost").value;
        var txtReg=/^[0-9]{6}$/
        var IsBool=txtReg.test(txtPost);
        if(IsBool)
        {
            document.getElementById("spanPost").innerHTML="正确";
        }
        else{
            document.getElementById("spanPost").innerHTML="错误";
        }
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <uc1:Header id="Header1" runat="server"></uc1:Header>
         <div id="ConItemCol">
               <table width="720" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                <tr>
                  <td height="25" colspan="4">请选择付款方式：
                      
                  </td>
                </tr>
                <tr>
                  <td width="360" height="50" colspan="2">
                      <asp:RadioButton ID="rb1" runat="server" GroupName="payway" />
                      <asp:Image ID="Image1" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/zfb.jpg" />
                    </td>
                  <td width="360" height="50" colspan="2">
                  <asp:RadioButton ID="rb2" runat="server" GroupName="payway" />
                      <asp:Image ID="Image2" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/cft.jpg" />
                          </td>
                </tr>
                <tr>
                  <td width="180" height="50">
                  <asp:RadioButton ID="rb11" runat="server" GroupName="payway" />
                      <asp:Image ID="Image3" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/gsyh.jpg" />
                  </td>
                  <td><asp:RadioButton ID="RadioButton1" runat="server" GroupName="payway" />
                      <asp:Image ID="Image4" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/jsyh.jpg" /></td>
                  <td><asp:RadioButton ID="RadioButton2" runat="server" GroupName="payway" />
                      <asp:Image ID="Image5" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/nyyh.jpg" /></td>
                  <td><asp:RadioButton ID="RadioButton3" runat="server" GroupName="payway" />
                      <asp:Image ID="Image6" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/zgyh.jpg" /></td>
                </tr>
                <tr>
                  <td height="50"><asp:RadioButton ID="RadioButton4" runat="server" GroupName="payway" />
                      <asp:Image ID="Image7" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/msyh.jpg" /></td>
                  <td><asp:RadioButton ID="RadioButton5" runat="server" GroupName="payway" />
                      <asp:Image ID="Image8" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/zsyh.jpg" /></td>
                  <td><asp:RadioButton ID="RadioButton6" runat="server" GroupName="payway" />
                      <asp:Image ID="Image9" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/pfyh.jpg" /></td>
                  <td><asp:RadioButton ID="RadioButton7" runat="server" GroupName="payway" />
                      <asp:Image ID="Image10" runat="server" 
                          ImageUrl="~/Commodityimages/imagesLanding/jtyh.jpg" /></td>
                </tr>
                <tr>
                  <td height="25" colspan="4">
                  <asp:Button ID="ButtonPay" CommandName="Update" runat="server" 
                 BackColor="GreenYellow" BorderColor="DarkSeaGreen"
              BorderWidth="1px" Text="立即付款" OnClick="ButtonPay_Click" 
                 style="height: 24px" />
                  </td>
                </tr>
              </table>
             <br />
             
              <br />
              <br />
             </div>
             <br /><br /><uc2:Foot id="Foot1" runat="server"></uc2:Foot>
    </div>
    </form>
</body>
</html>

