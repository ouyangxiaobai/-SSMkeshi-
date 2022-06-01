<%@page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
 <html lang="en">
<head>
	<meta charset="utf-8" />
 	<jsp:include page="../media.jsp"></jsp:include>
 	<script type="text/javascript" src="media/js/uuid.js"></script>
 	<script type="text/javascript" src="media/js/pageMedia.js"></script>
 	<script type="text/javascript" src="media/power/js/roleMenuUpdate.js"></script>
 	
 	 <link rel="stylesheet" href="<%=basePath%>media/lay/css/font.css" type="text/css"></link>
 <link rel="stylesheet" href="<%=basePath%>media/lay/css/xadmin.css" type="text/css"></link>
 <link rel="stylesheet" href="<%=basePath%>media/lay/css/swiper.min.css" type="text/css"></link>
  <link rel="stylesheet" href="<%=basePath%>media/lay/lib/layui/css/layui.css" type="text/css"></link>
 

<style type="text/css">
select {
    width: 100px;
    background-color: rgb(255, 255, 255);
    border-width: 1px;
    border-style: solid;
    border-color: rgb(204, 204, 204);
    border-image: initial;
}
body{
	width: 100%;
	background-color: #54364a;
    background-image: url(<%=basePath%>media/lay/images/a.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    color: #ffffff;
}
</style>
 </head>

<body class="page-header-fixed" >
<div class="tab-content contents" style="margin-left:20px;"> 
	<h3 class="form-section">修改角色</h3>
	<div class="row-fluid">
			<div class="span12">
				<input id="pkid" type="hidden" class="span12 m-wrap">
				<h3 class="form-section">角色名称：<input id="roleName" type="text" class="span6 m-wrap"></h3>
			</div>
		</div>
	<div class="row-fluid">
		<div class="span12">
	 <div class="portlet-body list">
	 <h3 class="form-section">分配权限  <input type="checkbox"  id="queryCheckbox"  name="queryCheckbox" value=""> 全选</h3>
	<div id="allmenu">
	</div>
		
	      <div class="form-actions">
				<button id="addSubmit" type="button" class="btn blue">保存</button>
			</div>
		</div>
		 
		</div>
	</div>
</div>

</body>
<script type="text/javascript">
 App.init();
</script>
</html>