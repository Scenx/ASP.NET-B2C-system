<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Main_Admin" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>管理员管理</title>
    <script src="Js/Main.js" type="text/javascript"></script>
    <script src="js/TabControl.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        //加载页面要使用的CSS
        loadCss(top._skinId, 'Page.css');


        var xmlHttp;
        function createXMLHttpRequest() {
            if (window.ActiveXObject) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (window.XMLHttpRequest) {
                xmlHttp = new XMLHttpRequest();
            }
        }
        function AjaxCheckName() {


            createXMLHttpRequest();
            var getName = document.getElementById("UserName").value;
            var url = "CheckNameHandler.ashx?userName=" + getName;
            xmlHttp.open("POST", encodeURI(url), true);
            xmlHttp.onreadystatechange = resultCheckName;
            xmlHttp.send(null);
        }

        function resultCheckName() {

            var txtRound = document.getElementById("RoundName");
            if (xmlHttp.readystate == 4) {

                if (xmlHttp.status == 200) {

                    var txtGetResponse = xmlHttp.responseText;


                    if (txtGetResponse == "0") {

                        txtRound.className = "Login_ErroRound";
                        txtRound.innerHTML = "输入不正确";

                    }
                    else if (txtGetResponse == "1") {

                        txtRound.className = "Login_ErroRound";
                        txtRound.innerHTML = "已被注册!";


                    }
                    else {

                        txtRound.className = "Login_RightRound";
                        txtRound.innerHTML = "输入不正确";

                    }
                }

            }

        }
        function CheckName() {

            var txtName = document.getElementById("UserName");
            var txtRound = document.getElementById("RoundName");
            var txtReg = /^[\w]{6,10}$/;
            var IsBool = txtReg.test(txtName.value);
            if (IsBool) {

                txtRound.className = "Login_RightRound";
                txtRound.innerHTML = "*";


            }
            else {

                txtRound.className = "Login_ErroRound";
                txtRound.innerHTML = "输入不正确";

            }
        }
        function CheckPassOne() {

            var txtPassOne = document.getElementById("UserPassOne");
            var txtRound = document.getElementById("RoundPassOne");
            var txtReg = /^[A-Za-z0-9_]{6,15}$/;
            var IsBool = txtReg.test(txtPassOne.value);
            if (IsBool) {

                txtRound.className = "Login_RightRound";
                txtRound.innerHTML = "*";


            }
            else {

                txtRound.className = "Login_ErroRound";
                txtRound.innerHTML = "输入不正确";


            }
        }
        function CheckPassTwo() {

            var txtPassOne = document.getElementById("UserPassOne");
            var txtPassTwo = document.getElementById("UserPassTwo");
            var txtRound = document.getElementById("RoundPassTwo");
            if (txtPassTwo.value == txtPassOne.value) {

                txtRound.className = "Login_RightRound";
                txtRound.innerHTML = "*";


            }
            else {

                txtRound.className = "Login_ErroRound";
                txtRound.innerHTML = "输入不正确";


            }
        }
        function CheckEmail() {

            var txtEmail = document.getElementById("UserEmail");
            var txtRound = document.getElementById("RoundEmail");
            var txtReg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
            var IsBool = txtReg.test(txtEmail.value);
            if (IsBool) {

                txtRound.className = "Login_RightRound";
                txtRound.innerHTML = "*";


            }
            else {

                txtRound.className = "Login_ErroRound";
                txtRound.innerHTML = "输入不正确";


            }
        }
        function CheckPhone() {

            var txtPhone = document.getElementById("UserPhone");
            var txtRound = document.getElementById("RoundPhone");
            var txtReg = "(/d{3}-|/d{4}-)?(/d{8}|/d{7})?";

            var IsBool = txtReg.test(txtPhone.value);
            if (txtPhone.value.length > 0) {
                if (IsBool) {

                    txtRound.style.display = "block";
                    txtRound.className = "Login_RightRound";
                    txtRound.innerHTML = "*";


                }
                else {

                    txtRound.style.display = "block";
                    txtRound.className = "Login_ErroRound";
                    txtRound.innerHTML = "输入不正确";


                }
            }
            else {

                txtRound.style.display = "none";

            }
        }
        function CheckPhonetele() {

            var txtPhone = document.getElementById("UserPhonetele");
            var txtRound = document.getElementById("RoundPhonetele");
            var txtReg = "/^((\(\d{2,3}\))|(\d{3}\-))?1[3,8,5]{1}\d{9}$/";
            var IsBool = txtReg.test(txtPhone.value);
            if (IsBool) {

                txtRound.className = "Login_RightRound";
                txtRound.innerHTML = "*";


            }
            else {

                txtRound.className = "Login_ErroRound";
                txtRound.innerHTML = "输入不正确";


            }
        }
        function CheckAdress() {

            var txtAdress = document.getElementById("UserAdress");
            var txtRound = document.getElementById("RoundAdress");
            var txtReg = /^[\u4e00-\u9fa5]{5,}[\u4e00-\u9fa5A-Za-z0-9]{5,25}$/;
            var IsBool = txtReg.test(txtAdress.value);
            if (IsBool) {

                txtRound.className = "Login_RightRound";
                txtRound.innerHTML = "*";

            }
            else {

                txtRound.className = "Login_ErroRound";
                txtRound.innerHTML = "输入不正确";

            }
        }
    </script>    
    
    
    
</head>
<body >
    <form id="form1" runat="server">
    <div id="LoginCon">
                <table width="940px" border="1" cellpadding="1" cellspacing="1" bordercolor="#E1E1E1">
                    <tr>
                        <td width="100" height="35" align="right">
                            用户名：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="UserName" runat="server" onkeyup="CheckName()"  onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout" /><span
                                class="Login_ErroRound" id="RoundName">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            <input id="CheckExist" type="button" value="检查该用户是否存在" runat="server" onclick="AjaxCheckName()" style="width:180px;" />
                            用户名只能有6-10位的数字、字母或下划线组成<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="UserName" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularName" runat="server" ControlToValidate="UserName"
                                ErrorMessage="*" ValidationExpression="[\w]{6,10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            密 码：
                        </td>
                        <td width="255px">
                            <input type="password" name="textfield" id="UserPassOne" onkeyup="CheckPassOne()"
                                runat="server" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  /><span class="Login_ErroRound" id="RoundPassOne">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            密码只能有6-15位的数字、字母或下划线组成<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="UserPassOne" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*"
                                ControlToValidate="UserPassOne" ValidationExpression="[A-Za-z0-9_]{6,15}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            确认密码：
                        </td>
                        <td width="255px">
                            <input type="password" name="textfield" id="UserPassTwo" runat="server" onkeyup="CheckPassTwo()" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  /><span
                                class="Login_ErroRound" id="RoundPassTwo">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            两次输入的密码必须一致<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="UserPassTwo" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="UserPassOne"
                                ControlToValidate="UserPassTwo" ErrorMessage="两次输入不一致"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            邮 箱：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="UserEmail" runat="server" onkeyup="CheckEmail()" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  /><span
                                class="Login_ErroRound" id="RoundEmail">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请输入正确的邮箱<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填"
                                Visible="False" ControlToValidate="UserEmail"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="UserEmail"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            电话号码：
                        </td>
                        <td width="255px">
                        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                        <tr>
                        <td style="width:165px;" align="left">
                        <input type="text" name="textfield" id="UserPhone" runat="server" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout" />
                        </td>
                        <td style="width:90px;" align="left">
                        <span class="Login_ErroRound" id="RoundPhone" style="display: none;">*</span>
                        </td>
                        </tr>
                        </table>
                        </td>
                        <td width="536" class="Login_span">
                            请输入正确号码方便联系，例如(028-88888888)
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*"
                                ValidationExpression="\d{3}-\d{8}" ControlToValidate="UserPhone"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            手机号码：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="UserPhonetele" runat="server" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  />
                            <span  class="Login_ErroRound" id="RoundPhonetele">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请输入正确号码方便联系，例如(13307889898)<asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                runat="server" ControlToValidate="UserPhonetele" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="*"
                                ValidationExpression="13[\d]{9}" ControlToValidate="UserPhonetele"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            详解地址：
                        </td>
                        <td width="255px">
                            <textarea rows="30" cols="180" name="textarea" class="LoginCon_area" id="UserAdress" runat="server" onkeyup="CheckAdress();"></textarea>
                            <span class="Login_ErroRound" id="RoundAdress">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请输入您正确的收货地址,只能是10-30个字(例如：广东省中山市电子科技大学中山学院)<asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                                runat="server" ControlToValidate="UserAdress" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="*"
                                ValidationExpression="[\u4e00-\u9fa5]{5,}[\u4e00-\u9fa5A-Za-z0-9]{5,25}" ControlToValidate="UserAdress"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="50" colspan="3" align="center">
                            <asp:Button ID="btnCreateManager" CssClass="btn" Text="创建管理员"  runat="server" 
                                onclick="CreateManager_Click"/>
                          
              </td>
                    </tr>
                </table>
            </div>
    </form>
</body>
</html>
