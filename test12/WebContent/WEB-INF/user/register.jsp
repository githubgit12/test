<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
</head>
<link href="bootstrap/css/bootstrap.css" rel="styleSheet"/>
<style>
  form {
	height: 300px;
	width: 700px;
	margin-left: 500px;
}
h2{
   margin-left: 600px;
   margin-top: 150px;
   height: 50px;
   color: #337ab7;
}
#login,#register{
  background: #337ab7;

}
#message{ 
  margin-top:40px;
  color: red;
  margin-left: 100px;
}
</style>
<script src="js/jquery.js" type="text/javascript"></script>
<script>
$().ready(function(){
	   function showMessage(mes){
		   $("#message").html(mes);
		   setTimeout(function() {
			   $("#message").html("");
		}, 1000);
	   }
	  
	
	   $("form").submit(function(){
		   var str = $("#name").val();
		   if(str.length==""){
			  showMessage("用户名不能为空");
			   return false;
		   }
		    var reg  =  /^[a-zA-Z0-9]{4,10}$/;
		    if(reg.test(str)==false){
		    	showMessage("用户名只能是四位到十位英文或者数字");
		    	return false;
		    }
		    var pwd = $("#word").val();
		    if(pwd.length==""){
		    	showMessage("密码不能为空");
		    	return false;
		    }
		    reg  =  /^[a-zA-Z0-9]{6,10}$/;
		    if(reg.test(pwd)==false){
		    	showMessage("密码只能是六位到十位英文或者数字");
		    	return false;
		    }
		    if(pwd!=$("#reword").val()){
		    	showMessage("两次输入的密码不一致");
                return false;
		    }
	   })
	   
	   
	 
})

</script>
<body>
<h2>用户注册</h2>
 <form action="user" class="form-horizontal" role="form" method="post">
 <input type="hidden" name="type" value="register" /> 
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-4">
      <input  id="name" type="text" class="form-control" name="username" placeholder="请输入用户名">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-4">
      <input id="word" type="password" class="form-control" name="password" placeholder="请输入密码">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">确认密码</label>
    <div class="col-sm-4">
      <input id="reword" type="password" class="form-control" name="repassword" placeholder="请输入密码">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox">请记住我
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" id="register">注册</button>
    </div>
    <div id="message">${re }</div>
  </div>
</form>
</body>
</html>