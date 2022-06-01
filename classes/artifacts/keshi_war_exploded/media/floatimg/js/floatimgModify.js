$(function(){	
	$("#return").on("click",function(){
	history.go(-1);
	});
var eid=GetQueryString("eid");
	var img;
	var p=$.Params.create();
	p.addParams("id",eid); 
	p.ajax(getIP()+"floatimg.action?list",function(data){
		var html="";
		var val=data.rows[0];
		$("#paixu").val(val.paixu);
		$("#id").val(eid);
		$("#linkurl").val(val.linkurl);
		  $('#imgurl').val(val.imgurl);
		 $('#radio1 input[name=optionsRadios][value='+val.position+']').attr("checked",true);  
		 $('#radio2 input[name=optionsRadios2][value='+val.pass+']').attr("checked",true);  
	})
})
function  updates(){
	var paixu = $("#paixu").val();
	var id = $("#id").val();
 	var linkurl = $("#linkurl").val();
 	var imgurl = $("#imgurl").val();
	var position = $('#radio1 input[name="optionsRadios"]:checked ').val();
	var pass = $('#radio2 input[name="optionsRadios2"]:checked ').val();
	 var reg = new RegExp("^[0-9]*$");     
	   		 if(!reg.test(paixu)||paixu==""){
	   			 	alert("顺序必须是数字");
	   						return;
	       		 }
 	var edit=$.Params.create();
 	var url=getIP()+"floatimg.action?update";
 		edit.addParams("paixu",paixu);
   		edit.addParams("imgurl",imgurl);
   		edit.addParams("linkurl",linkurl);
   		edit.addParams("position",position);
   		edit.addParams("pass",pass);
   		edit.addParams("id",id);
   		edit.addParams("pass",pass);
   		edit.ajax(url,function (data){
			if(data.success){
			alert("修改成功");
			window.location.href=getIP()+"media/floatimg/floatimgList.jsp";
			}
		})
	}
   	