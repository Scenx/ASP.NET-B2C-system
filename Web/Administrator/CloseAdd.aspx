<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CloseAdd.aspx.cs" Inherits="Administrator_CloseAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加服装信息</title>
    
     
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
      <div id="LoginCon">
                <table width="940px" border="1" cellpadding="1" cellspacing="1" bordercolor="#E1E1E1">
                    <tr>
                        <td width="100" height="35" align="right">
                            产品名称：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ItemName" runat="server"  onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout" /><span
                                class="Login_ErroRound" id="RoundName">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            不能为空<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="ItemName" ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    
                       <tr>
                        <td width="100" height="35" align="right">
                            产品类别：
                        </td>
                        <td width="255px">
                            <select id="selProduct" class="LoginCon_select" runat="server">
                                <option></option>
                            </select>
                        </td>
                        <td width="536" class="Login_span">
                         
                            请选择一个所属类别
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            产品价格：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ItemAgoraPrice"
                                runat="server" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  /><span class="Login_ErroRound" id="RoundItemAgoraPrice">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请填写价格的正确格式<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="ItemAgoraPrice"  ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            会员价：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ItemMemberPrice" runat="server"  onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  /><span
                                class="Login_ErroRound" id="RoundItemMemberPrice">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            会员价格<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="ItemMemberPrice" ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            VIP价格：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ItemVipPrice" runat="server"  onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  /><span
                                class="Login_ErroRound" id="RoundEmail">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            VIP价格：<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="必填" ControlToValidate="ItemVipPrice">必填</asp:RequiredFieldValidator>
                           
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            产地：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ItemArea" runat="server" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  /><span
                                class="Login_ErroRound" id="Span1">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请填写产品的产地
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ErrorMessage="必填" ControlToValidate="ItemArea">必填</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            新鲜度：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="inputFresh" runat="server" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  />
                            <span  class="Login_ErroRound" id="RoundPhonetele">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请输入产品的生产时间<asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                runat="server" ControlToValidate="inputFresh" ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            品牌：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ItemBrand" runat="server"  onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  />
                            <span  class="Login_ErroRound" id="Span6">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请输入产品的品牌<asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                runat="server" ControlToValidate="ItemBrand" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                    
                     </tr>
                    <tr>
                      <td width="100" height="35" align="right">
                            库存：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ItemRemant" runat="server" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  />
                            <span  class="Login_ErroRound" id="Span2">*</span>
                        </td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                                runat="server" ControlToValidate="ItemRemant" ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                        <tr>
                        <td width="100" height="35" align="right">
                            大图片：
                        </td>
                        <td width="255px">
                          &nbsp;<asp:FileUpload ID="ItemBigImage" runat="server" />
                            <span class="Login_ErroRound" id="Span3">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            创建产品的展示图片<asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                                runat="server" ControlToValidate="" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
                        
                        </td>
                    </tr>
                    
                        <tr>
                        <td width="100" height="35" align="right">
                            小图片：
                        </td>
                        <td width="255px">
                            &nbsp;<asp:FileUpload ID="ItemSmallImage" runat="server" />
                            <span class="Login_ErroRound" id="Span4">*</span>
                        </td>
                        <td width="536" class="Login_span">
                           创建产品的的缩略图<asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                                runat="server" ControlToValidate="" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
                          
                        </td>
                        
                            <tr>
                        <td width="100" height="35" align="right">
                            是否为推荐商品：
                        </td>
                        <td width="255px">
                            <select id="selYesOrNot" runat="server">
                                <option value="1" selected="selected">是</option>
                                <option value="0">否</option>
                            </select>
                            <span class="Login_ErroRound" id="Span5">*</span>
                        </td>
                         <td width="536" class="Login_span">
                  是否为推荐商品
                        </td>
                    </tr>
                    </tr>
                    <tr>
                        <td height="50" colspan="3" align="center">
                            <asp:Button ID="btnCreateItem" CssClass="btn" Text="创建产品"  runat="server" onclick="btnCreateItem_Click" 
                               />
                          
              </td>
                    </tr>
                </table>
            </div>
    </div>
    </form>
</body>
</html>
