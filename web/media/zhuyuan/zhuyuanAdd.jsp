<%@page language="java" pageEncoding="UTF-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
 <html lang="en">
<head>
	<meta charset="utf-8" />
 <script type="text/javascript" src="<%=basePath%>media/zhuyuan/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>media/zhuyuan/js/ian.js"></script> 
<script type="text/javascript" src="<%=basePath%>media/zhuyuan/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="<%=basePath%>media/zhuyuan/js/getIp.js"></script>
<script type="text/javascript" src="<%=basePath%>media/zhuyuan/js/zhuyuanAdd.js"></script>

  
  <link rel="stylesheet" href="<%=basePath%>media/zhuyuan/css/bootstrap.min.css" type="text/css"></link>
  	<link rel="stylesheet" href="<%=basePath%>media/zhuyuan/css/uploadify.css" type="text/css"></link>
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
  <script type="text/javascript">
  
  </script>		 
  	<style type="text/css">
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
	<h3 class="form-section" >&nbsp;&nbsp;&nbsp;<font style="font-weight:bold">住院添加</font></h3>
	<div class="row-fluid">
		<div class="span12">
	 <div class="portlet-body list mbModify">
		<div class="form-horizontal m-t">
            <div class="control-group">
                <label class="control-label">病人名称：</label>
                <div class="controls">
                   <select id="a1" name="a1">
						<option>请选择病人</option>
					</select> 
                
                </div>
             </div> 
              <div class="control-group">
                <label class="control-label">病房：</label>
                <div class="controls">
                   
                <select id="a2" name="a2">
						<option>请选择</option>
					</select> 
                </div> 
                
            </div>
             <div class="control-group">
                <label class="control-label">住院号：</label>
                <div class="controls">
                <p>
                <img  style="width: auto; height: auto;" id="imgdata">
                <input id="a3" name="a3" minlength="2" type="text" class="form-control" required="" aria-required="true">
            
                </div>
            </div>
            
             <div class="control-group">
                <label class="control-label">性别：</label>
                <div class="controls">
                <p>
                <img  style="width: auto; height: auto;" id="imgdata">
              
              <select id="a4">
              <option value="男">男<option>
              <option value="女">女<option>
              </select>
              
              
                </div>
            </div>
               <div class="control-group">
                <label class="control-label">治疗结果：</label>
                <div class="controls">
                <p>
                <img  style="width: auto; height: auto;" id="imgdata">
                <input id="a5" name="a5" minlength="2" type="text" class="form-control" required="" aria-required="true">
            
                </div>
            </div>
            
               <div class="control-group">
                <label class="control-label">备注：</label>
                <div class="controls">
                <p>
                <img  style="width: auto; height: auto;" id="imgdata">
                <input id="a6" name="a6" minlength="2" type="text" class="form-control" required="" aria-required="true">
            
                </div>
            </div>
            
            
            <div class="form-actions">
				<button id="add" onclick="addsstu()" type="button" class="btn blue">保存</button>
				<button id="return" type="button" class="btn blue">返回</button>
			 
			</div>
         </div>
	      
		</div>
		</div>
	</div>
</div>

</body>
</html>