<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="../media.jsp"></jsp:include>
<script type="text/javascript" src="media/user/js/password.js"></script> 

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
<style>
.form-horizontal .control-group{padding-top:20px;padding-bottom:20px;}
</style>
<div class="tab-content contents" style="margin-left:20px;">
	<h3 class="form-section">修改密码
	</h3>
	<form action="#" class="form-horizontal">
 <div class="portlet-body">
	<div class="row-fluid">
		<div class="control-group">
		<label class="control-label" for="inputWarning">原密码</label>
		<div class="controls">
			<input type="password" class="span6 m-wrap" id="oldpwd" />
			<span name="oldPwd" class="help-inline"></span>
		</div>

	</div>
	<div class="control-group">
		<label class="control-label" for="inputWarning">新密码</label>
		<div class="controls">
			<input type="password" class="span6 m-wrap" id="newpwd" />
			<span name="newPwd" class="help-inline"></span>
		</div>
	</div>
		<div class="control-group">
		<label class="control-label" for="inputWarning">确认密码</label>
		<div class="controls">
			<input type="password" class="span6 m-wrap" id="confipwd" />
			<span name="newPwd2" class="help-inline"></span>
		</div>
	</div>
</div>
</div>
<div class="form-actions">
		<button type="button" id="pwdsub" class="btn blue form_button">保存</button>
	</div>

</form>
</div>

