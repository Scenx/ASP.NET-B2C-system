function $(id)
{
    return document.getElementById(id);
}

//XMLHttpRequest : Ajax核心组件

function getXmlHttp()
{
    var xmlHttp;
    //浏览器类型判断
    if(window.ActiveXObject)
    {
       //ie浏览器
       try
       {
           //ie高版本
           xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
       }
       catch(e)
       {
           //ie低版本
           xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
       }
    }
    if(window.XMLHttpRequest)
    {
       //ff浏览器
       xmlHttp = new XMLHttpRequest();
    }
    return xmlHttp;
}