<%@page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html lang="en">
<head>
	<meta charset="utf-8" />
 	<jsp:include page="../media.jsp"></jsp:include>
 	<link href="media/css/uploadify.css" rel="stylesheet" type="text/css">
 	<script type="text/javascript" src="media/floatimg/js/floatimgModify.js"></script>
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
	<h3 class="form-section" >&nbsp;&nbsp;&nbsp;<font style="font-weight:bold">浮动图片</font></h3>
	<div class="row-fluid">
		<div class="span12">
	 <div class="portlet-body list mbModify">
		<div class="form-horizontal m-t">
		   	<input type="hidden"  id="id"  name="id" />
            <div class="control-group">
                <label class="control-label">链接地址：</label>
                <div class="controls">
                    <input id="linkurl" name="linkurl" minlength="2" type="text" class="form-control" required="" aria-required="true">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">显示位置：</label>
                <div class="controls" id="radio1">
                 <input type="radio" name="optionsRadios"  value="0" /> 满山跑
                 <input type="radio" name="optionsRadios"  value="1" /> 左侧
                 <input type="radio" name="optionsRadios"  value="2" /> 右侧
			    </div>
			 </div>
            <div class="control-group" >
                <label class="control-label">显示状态：</label>
                <div class="controls" id="radio2">
                   <input type="radio" name="optionsRadios2"  value="0" checked="checked"/>关闭
                 <input type="radio" name="optionsRadios2"  value="1" /> 打开
                 </div>
            </div>
            <div class="control-group">
                <label class="control-label">显示顺序：</label>
                <div class="controls">
                    <input id="paixu" name="paixu" minlength="2" type="text" class="form-control" required="" aria-required="true">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">图片地址：</label>
                <div class="controls">
                 <img  style="width: auto; height: auto;" id="thumbnailImage">
                <p><input id="imgurl" type="text">
				<input  id="photoFile" type="file" name="photoFile" />
         		<button  id="login"  onclick="submitPhoto()"  class="btn btn-primary">
         		<span class="icon-pencil" ></span>上传图片</button></p>
              	</div>
            </div>
            <div class="form-actions">
				<button id="add" onclick="updates()" type="button" class="btn blue">保存</button>
				<button id="return" type="button" class="btn blue">返回</button>
			</div>
         </div>
	      
		</div>
		</div>
	</div>
</div>

</body>
</html>