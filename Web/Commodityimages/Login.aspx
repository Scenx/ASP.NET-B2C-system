<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="~/Commodityimages/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Commodityimages/Control/Foot.ascx" TagPrefix="uc2" TagName="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员注册中心 电子商务系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="Style/index.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
    var xmlHttp;
    function createXMLHttpRequest()
    {
        if(window.ActiveXObject)
        {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if(window.XMLHttpRequest)
        {
            xmlHttp = new XMLHttpRequest();
        }
    }
function AjaxCheckName(){

createXMLHttpRequest();
var getName=document.getElementById("UserName").value;
var url="CheckNameHandler.ashx?userName="+getName;
xmlHttp.open("POST",encodeURI(url),true);
xmlHttp.onreadystatechange=resultCheckName;
xmlHttp.send(null);
}

function resultCheckName(){

var txtRound=document.getElementById("RoundName");
if(xmlHttp.readystate==4){

if(xmlHttp.status==200){

var txtGetResponse=xmlHttp.responseText;

if(txtGetResponse=="0"){

  txtRound.className="Login_ErroRound";
  txtRound.innerHTML="输入不正确";

}
else if(txtGetResponse=="1"){

  txtRound.className="Login_ErroRound";
  txtRound.innerHTML="已被注册!";


}
else{

 txtRound.className="Login_RightRound";
 txtRound.innerHTML="*";

}
}

}

}
    function CheckName(){
    
    var txtName=document.getElementById("UserName");
    var txtRound=document.getElementById("RoundName");
    var txtReg=/^[\w]{6,10}$/;
    var IsBool=txtReg.test(txtName.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="输入不正确";
    
    }
    }
    function CheckPassOne(){
    
    var txtPassOne=document.getElementById("UserPassOne");
    var txtRound=document.getElementById("RoundPassOne");
    var txtReg=/^[A-Za-z0-9_]{6,15}$/;
    var IsBool=txtReg.test(txtPassOne.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="输入不正确";

    
    }
    }
    function CheckPassTwo(){
    
    var txtPassOne=document.getElementById("UserPassOne");
    var txtPassTwo=document.getElementById("UserPassTwo");
    var txtRound=document.getElementById("RoundPassTwo");
    if(txtPassTwo.value==txtPassOne.value){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="输入不正确";

    
    }
    }
    function CheckEmail(){
    
    var txtEmail=document.getElementById("UserEmail");
    var txtRound=document.getElementById("RoundEmail");
    var txtReg=/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    var IsBool=txtReg.test(txtEmail.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="输入不正确";

    
    }
    }
    function CheckPhone(){
    
    var txtPhone=document.getElementById("UserPhone");
    var txtRound=document.getElementById("RoundPhone");
    var txtReg=/^\d{3}-\d{8}$/;
    var IsBool=txtReg.test(txtPhone.value);
    if(txtPhone.value.length>0)
    {
    if(IsBool){
    
      txtRound.style.display="block";
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.style.display="block";
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="输入不正确";

    
    }
    }
    else{
    
          txtRound.style.display="none";
    
    }
    }
    function CheckPhonetele(){
    
    var txtPhone=document.getElementById("UserPhonetele");
    var txtRound=document.getElementById("RoundPhonetele");
    var txtReg=/^1[\d]{10}$/;
    var IsBool=txtReg.test(txtPhone.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="输入不正确";

    
    }
    }
    function CheckAdress(){
    
    var txtAdress=document.getElementById("UserAdress");
    var txtRound=document.getElementById("RoundAdress");
    //var txtReg=/^[\u4e00-\u9fa5]{5,}[\u4e00-\u9fa5A-Za-z0-9]{5,25}$/;
    var IsBool=txtAdress.value>0;
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";
    
    }
    else{
       
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="输入不正确";

    }
    }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
    <div style="width:940px; height:auto;">
        <uc1:Header ID="Header1" runat="server"></uc1:Header>
        <div id="ConItemCol" style="width:940px; height:auto;">
            <div class="Login_Reg" id="reg_header">
            <table border="0" cellpadding="0" cellspacing="0" style= "height:35px;">
            <tr>
            <td style="height:35px; color:#FF6600; font-size:14px; font-weight:600;">&nbsp;&nbsp;注册用户</td>
            </tr>
            </table></div>
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
                            用户名只能有6-10位的数字、字母或下划线组成
                            
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
                            密码只能有6-15位的数字、字母或下划线组成
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
                            两次输入的密码必须一致
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
                            请输入正确的邮箱
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
                        <input type="text" name="textfield" id="UserPhone" runat="server" onkeyup="CheckPhone();" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout" />
                        </td>
                        <td style="width:90px;" align="left">
                        <span class="Login_ErroRound" id="RoundPhone" style="display: none;">*</span>
                        </td>
                        </tr>
                        </table>
                        </td>
                        <td width="536" class="Login_span">
                            请输入正确号码方便联系，例如(028-88888888)

                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="35" align="right">
                            手机号码：
                        </td>
                        <td width="255px">
                            <input type="text" name="textfield" id="UserPhonetele" runat="server" onkeyup="CheckPhonetele();" onfocus="this.className='textboxfocus'" onblur="this.className='textboxout'" class="textboxout"  />
                            <span  class="Login_ErroRound" id="RoundPhonetele">*</span>
                        </td>
                        <td width="536" class="Login_span">
                            请输入正确号码方便联系，例如(13307889898)
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
                            请输入您正确的收货地址,只能是10-30个字
                        </td>
                    </tr>
                    <tr>
                        <td height="50" colspan="3" align="center">
                            &nbsp;<asp:ImageButton ID="LoginButton" runat="server"  Style="border-right: #66cc00 1px solid;
                                border-top: #66cc00 1px solid; border-left: #66cc00 1px solid; border-bottom: #66cc00 1px solid;
                                background-color: #ccff33" OnClick="LoginButton_Click" ImageUrl="ImageAD/submit.jpg" />
              </td>
                    </tr>
                </table>
            </div>
        </div>
        <br />
        <br>
        <uc2:Foot ID="Foot1" runat="server"></uc2:Foot>
    </div>
    </div>
    </form>
</body>
</html>
