$(function(){	
	$("#return").on("click",function(){
	history.go(-1);
	});
	 
  //获取学生
var listrole=$.Params.create();
	listrole.ajax(getIP()+"renyuan.action?list",function (data){
		if(data.success){
			var html="<option>请选择</option>";
			$.each(data.rows,function(i,val){
				html+="<option value='"+val.a1+"'>"+val.a1+"</option>";
			})
			$("#a1").html(html);
		}
	});
	var listrole=$.Params.create();
	listrole.ajax(getIP()+"bingfang.action?list",function (data){
		if(data.success){
			var html="<option>请选择</option>";
			$.each(data.rows,function(i,val){
				html+="<option value='"+val.a1+"'>"+val.a1+"</option>";
			})
			$("#a2").html(html);
		}
	});
	

var eid=GetQueryString("eid"); 


	var p=$.Params.create();
	p.addParams("id",eid); 
    p.ajax(getIP()+"zhuyuan.action?list",function(data){
		var html="";
		var val=data.rows[0]; 
	 

		$("#a1").val(val.a1); 
		$("#a2").val(val.a2); 
		$("#a3").val(val.a3); 
		$("#a4").val(val.a4);
	    $("#a5").val(val.a5);
	    $("#a6").val(val.a6);
		$("#id").val(eid);
	})
})
function  adds(){
	var a1 = $("#a1").val();
	var a2 = $("#a2").val();
	var a3 = $("#a3").val();
	var a4 = $("#a4").val();
	var a5 = $("#a5").val();
	var a6 = $("#a6").val();
	var id = $("#id").val();
 	var edit=$.Params.create();
 	var url=getIP()+"zhuyuan.action?update";
   		edit.addParams("a1",a1); 
   		edit.addParams("a2",a2); 
   		edit.addParams("a3",a3); 
 		edit.addParams("a4",a4);
 		edit.addParams("a5",a5);
 		edit.addParams("a6",a6);
   		edit.addParams("id",id);
   		edit.ajax(url,function (data){
			if(data.success){
			alert("保存成功");
			window.location.href=getIP()+"media/zhuyuan/zhuyuanList.jsp";
			}
		})
	}
   	function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}