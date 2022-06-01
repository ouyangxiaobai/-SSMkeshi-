<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="utf-8" />
     <title>有房有家后台管理系统登录</title>
     <base href ="http://localhost:8080/newroad/">
     <meta content="width=device-width, initial-scale=1.0" name="viewport" />
     <meta content="" name="description" />
     <meta content="" name="author" />
     <link href="media/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
     <link href="media/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
     <link href="media/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
     <link href="media/media/css/style-metro.css" rel="stylesheet" type="text/css"/>
     <link href="media/media/css/style.css" rel="stylesheet" type="text/css"/>
     <link href="media/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
     <link href="media/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
     <link href="media/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
     <link href="media/media/css/timeline.css" rel="stylesheet" type="text/css"/>
     <link rel="stylesheet" type="text/css" href="media/media/css/select2_metro.css" />
    <!-- <link rel="shortcut icon" href="media/media/image/das.ico" /> -->
     <link href="media/css/media.css" rel="stylesheet" type="text/css"/>
     <!-- 去掉a下划线 -->
     <style>
         a:link { text-decoration: none;}
         a:active { text-decoration:none;}
         a:hover { text-decoration:none;}
         a:visited { text-decoration: none;}
     </style>

     <script src="media/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
     <script src="media/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
     <script src="media/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
     <script src="media/media/js/bootstrap.min.js" type="text/javascript"></script>
     <script src="media/media/js/excanvas.min.js"></script>
     <script src="media/media/js/respond.min.js"></script>
     <script src="media/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
     <script src="media/media/js/jquery.blockui.min.js" type="text/javascript"></script>
     <script src="media/media/js/jquery.cookie.min.js" type="text/javascript"></script>
     <script src="media/media/js/jquery.uniform.min.js" type="text/javascript" ></script>
     <script src="media/media/js/app.js"></script>
     <script src="media/js/ian.js" type="text/javascript"></script>
     <script src="js/getIp.js" type="text/javascript"></script>
     <link href="media/media/css/login.css" rel="stylesheet" type="text/css" />
     <script src="media/media/js/jquery.validate.min.js" type="text/javascript"></script>
     <script type="text/javascript" src="media/js/login.js"></script>
     <link rel="stylesheet" type="text/css" href="media/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="media/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="media/css/component.css" />
	<link rel="stylesheet" type="text/css" href="media/css/style.css" />
	<!-- <link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'> -->
	<!--[if IE]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script type="text/javascript">
	var objInterval=null;
	/**$(document).ready(
	function(){ 
	objInterval=setInterval("fg()",2000);
	})
	function fg()
	{
	$("a").addClass("fg2"); 
	setTimeout("fg2()",1000); 
	}
	function fg2()
	{
	$("a").removeClass("fg2"); 
	}*/
	</script>
	
<body >
	<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<h1 class="main-title"><a  href="#" class="fg2">有房<span class="thin">有家</span><a></h1>
					<div class="content2">
					<input class="main-input" type="text" placeholder="用户名"  value="susan" name="username"  style="height:30px"/>
					<input class="main-inputpwd" type="password" value="111111" placeholder="密码" name="password" style="height:30px" />
					<label id="passwordCue" for="password" class="help-inline help-small no-left-padding hide">用户名或密码不能为空！</label>
					<button id="submit" type="button" class="main-inputbtn" >
				    登 录 <i class="m-icon-swapright m-icon-white"></i>
				</button> 
				</div>
			</div>
		</div>
		</div>
</body>
		<script src="media/js/TweenLite.min.js"></script>
		<script src="media/js/EasePack.min.js"></script>
		<script src="media/js/rAF.js"></script>
		<script src="media/js/demo-1.js"></script>
</html>