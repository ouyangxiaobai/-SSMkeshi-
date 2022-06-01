$(function(){
	
$("#return").on("click",function(){
	history.go(-1);
	});
	$('#radio1 input[name=optionsRadios][value=0]').attr("checked",true);  
	$('#radio2 input[name=optionsRadios2][value=0]').attr("checked",true);  
	
})	
 function  addsssss(){
	var paixu = $("#paixu").val();
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
 	var url=getIP()+"floatimg.action?add";
 		edit.addParams("paixu",paixu);
   		edit.addParams("imgurl",imgurl);
   		edit.addParams("linkurl",linkurl);
   		edit.addParams("position",position);
   		edit.addParams("pass",pass);
   		edit.ajax(url,function (data){
			if(data.success){
			alert("添加成功");
			window.location.href=getIP()+"media/floatimg/floatimgList.jsp";
			}
		})
	}
   	


