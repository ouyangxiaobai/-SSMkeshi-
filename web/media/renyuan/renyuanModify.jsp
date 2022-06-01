<%@page language="java" pageEncoding="UTF-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
 <html lang="en">
<head>
	<meta charset="utf-8" />
 <script type="text/javascript" src="<%=basePath%>media/renyuan/js/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="<%=basePath%>media/renyuan/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>media/renyuan/js/ian.js"></script> 

<script type="text/javascript" src="<%=basePath%>media/renyuan/js/getIp.js"></script>
 
 	<script type="text/javascript" src="<%=basePath%>media/renyuan/js/renyuanModify.js"></script>
  
  <link rel="stylesheet" href="<%=basePath%>media/renyuan/css/bootstrap.min.css" type="text/css"></link>
 <link rel="stylesheet" href="<%=basePath%>media/renyuan/css/bootstrap.min.css" type="text/css"></link>
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
 		li{ list-style: none;}
 		.courseDbDetails{
 			width: 100%;
 			height: 100%;
 		}
 		.courseDbDetails_data li{
 			height: 40px;
 			line-height: 40px;
 			background-color:#CACAD2;
 			margin-bottom:10px;
 		}
 		/*字段名*/
 		.courseDbDetails_data .courseDbDetails_field{
 			width: 10%;
 			height: 100%;
 			padding-right:10px;
 			line-height:40px;
 			text-align:right;
 			float: left;
 			display: block;
 		}
 		/*字段值*/
 		.courseDbDetails_data .courseDbDetails_fieldValue{
 			width: 20%;
 			height: 100%;
 			text-align: left;
 			float:left;
 			display: block;
 		}
 	</style>
 </head>
<body class="page-header-fixed" >
<div class="tab-content contents"> 
	<h3 class="form-section" >&nbsp;&nbsp;&nbsp;<font style="font-weight:bold">人员修改</font></h3>
	<div class="row-fluid">
		<div class="span12">
	 <div class="portlet-body list mbModify">
		<div class="form-horizontal m-t">
		<input type="hidden"  id="id"  name="id" />
            <div class="control-group">
                <label class="control-label">医护人员姓名：</label>
                <div class="controls">
                    <input id="a1" name="a1" minlength="2" type="text" class="form-control" required="" aria-required="true">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">性别：</label>
                <div class="controls">
                <select id="a2" class="form-control">
				  <option value="">查类型</option>
				  <option value="0">男生 </option>
				  <option value="1">女生</option>
		 
			</select>
                </div>
            </div>
     		  <div class="control-group">
                <label class="control-label">年龄：</label>
                <div class="controls">
                   
         <input id="a3" name="a3" minlength="2" type="text" class="form-control" required="" aria-required="true">
                
                </div> 
                
            </div>
            
            
            
             <div class="control-group">
                <label class="control-label">毕业学校：</label>
                <div class="controls">
                <p>
                <img  style="width: auto; height: auto;" id="imgdata">
                <input id="a4" name="a4" minlength="2" type="text" class="form-control" required="" aria-required="true">
            
                </div>
            </div>
            <div class="form-actions">
				<button id="add" onclick="adds()" type="button" class="btn blue">保存</button>
				<button id="return" type="button" class="btn blue">返回</button>
			</div>
         </div>
		</div>
		</div>
	</div>
</div>

</body>
</html>