function form_submit(){
	var user=document.getElementById("user");
	var pass=document.getElementById("pwd");
	if(user.value=="admin112300"&&pass.value=="!cd85623250")
	{
	    
	}
}
function form_reset(){
	document.getElementById("login").reset();
}
function reloadcode(){
    var verify=document.getElementById('safecode');
    verify.setAttribute('src','code.php?'+Math.random());
}