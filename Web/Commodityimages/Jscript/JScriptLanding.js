var xmlHttp;
function inputUserNameFocus()
{
    
    
    
}
function isUserName()
{
    $("isUsersName").value="";
}
function userLogin()
{
    $("inputUsersName").value = "";
    $("inputPassword").value="";
    xmlHttp = getXmlHttp();
    var url = "Landing.ashx?userName=" + $("inputUsersName").value + "&userPassword=" + $("inputPassword").value + "&random=" + Math.random();
    xmlHttp.open("GET",encodeURI(url),true);
    //回调函数 只需要给出函数地址
    xmlHttp.onreadystatechange = showLoginResult;
    xmlHttp.send(null);
}
function showLoginResult()
{
    if(xmlHttp.readyState == 4 && xmlHttp.status == 200)
    {
        if(xmlHttp.responseText == "true")
        {
            window.open("Loging.htm","购物网-天天惊喜不间断！",true,"");
        }
        else if(xmlHttp.reponseText=="null")
        {
            $("isUsersName").value="用户名或密码为空,请输入用户名和密码！"
        }
        else
        {
            $("isUsersName").value = "用户名或密码有误,请确认用户名和密码！";
        }
    }
}
