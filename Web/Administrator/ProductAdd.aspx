<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductAdd.aspx.cs" Inherits="Administrator_ProductAdd" %>

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
       <div id="LoginCon">
                <table width="940px" border="1" cellpadding="1" cellspacing="1" bordercolor="#E1E1E1">
                    <tr>
                        <td width="100" height="35" align="right">
                            分类ID：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ProID" runat="server"  onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout" /><span
                                class="Login_ErroRound" id="RoundName">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            不能为空<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="ProID" ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    
                       <tr>
                        <td width="100" height="35" align="right">
                            所属大分类：
                        </td>
                        <td width="255px">
                            <select id="selCate" class="LoginCon_select" runat="server">
                            </select>
                        </td>
                        <td width="536" class="Login_span">
                         
                            请选择一个所属类别
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            名称：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="ProName" 
                                runat="server" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  /><span class="Login_ErroRound" id="RoundItemAgoraPrice">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请填写分类名称<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="ProName"  ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            描述：
                        </td>
                        <td width="255px">
                             <textarea rows="30" cols="180" name="ProDesc" class="LoginCon_area" id="ProDesc" runat="server"></textarea>
                           <span
                                class="Login_ErroRound" id="RoundItemMemberPrice">*</span>
                        </td>
                        <td width="536" class="Login_span">
                          描述 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="ProDesc" ErrorMessage="必填">必填</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   
                    <tr>
                        <td height="50" colspan="3" align="center">
                            <asp:Button ID="btnCreatePro" CssClass="btn" Text="创建分类"  runat="server" onclick="btnCreateItem_Click" 
                               />
                          
              </td>
                    </tr>
                </table>
            </div>
    </form>
</body>
</html>
