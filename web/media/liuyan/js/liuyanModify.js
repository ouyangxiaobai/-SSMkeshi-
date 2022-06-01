$(function(){	
	$("#return").on("click",function(){
	history.go(-1);
	});

var eid=GetQueryString("eid"); 
	var p=$.Params.create();
	p.addParams("id",eid); 
    p.ajax(getIP()+"liuyan.action?list",function(data){
		var html="";
		var val=data.rows[0]; 
	 

		$("#a1").val(val.a1);
		$("#a2").val(val.a2);
 
		$("#id").val(eid);
	})
})
function  adds(){
	var a1 = $("#a1").val();
	var a2 = $("#a2").val();
	var id = $("#id").val();
 	var edit=$.Params.create();
 	var url=getIP()+"liuyan.action?update";
   		edit.addParams("a1",a1);
   		edit.addParams("a2",a2);
   		edit.addParams("id",id);
   		edit.ajax(url,function (data){
			if(data.success){
			alert("保存成功");
			window.location.href=getIP()+"media/liuyan/liuyanList.jsp";
			}
		})
	}
   	function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}