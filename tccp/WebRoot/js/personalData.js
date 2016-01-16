//电话验证
String.prototype.Trim = function() { 
		var m = this.match(/^\s*(\S+(\s+\S+)*)\s*$/); 
		return (m == null) ? "" : m[1]; 
	} 

	  String.prototype.isMobile = function() { 
		return (/^(?:13\d|15[89])-?\d{5}(\d{3}|\*{3})$/.test(this.Trim())); 
	} 
	String.prototype.isTel = function() 
	{ 
		return (/^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/.test(this.Trim())); 
	} 
	function chkForm() { 
		with(document.form1){ 
	 	if (phonenum.value.isMobile()||phonenum.value.isTel()) { 
		} 
	 	else { 
			alert("请输入正确的手机号码或电话号码\n\n例如:13916752109"); 
			phonenum.focus(); 
			return false; 
			} 
		} 
	} 

//邮箱验证
function checkEmail(){
	var email = document.getElementById('email');
  var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/; 
  if(re.test(email.value)){
      return true;
  }else{
      alert("请输入正确的邮箱格式！");
  }
}

