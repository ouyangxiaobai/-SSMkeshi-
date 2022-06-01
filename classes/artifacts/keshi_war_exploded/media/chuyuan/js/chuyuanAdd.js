$(function(){
	
$("#return").on("click",function(){
	history.go(-1);
	});

 
	
		//获取人员
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
	

	//
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
	

 
})






 function  addsstu(){
	
  
	var a1 = $("#a1").val(); 

	var a2 = $("#a2").val();
	var a3 = $("#a3").val();
	var a2 = $("#a2").val();
	var a3 = $("#a3").val();
    var a4 = $("#a4").val();
    var a5 = $("#a5").val();
    var a6 = $("#a6").val();
     	
 	var edit=$.Params.create();
 
  	var url=getIP()+"chuyuan.action?add";
  
 	edit.addParams("a1",a1);
	edit.addParams("a2",a2);
	edit.addParams("a3",a3);
 	edit.addParams("a4",a4);
 	edit.addParams("a5",a5);
 	edit.addParams("a6",a6);
 	 
   		edit.ajax(url,function (data){
			if(data.success){
			alert("添加成功");
			window.location.href=getIP()+"media/chuyuan/chuyuanList.jsp";
			}
		else{
				
				alert('添加失败');
	}
	})
		 
  	/*
		       $.ajax({
                type: "post",
               url: url,
              data: {
                  a1:a1,
                  a2:a2,
                  a3:a3,
                  a4:a4
               },
                dataType: "json",
                success: function (dataMs) {
                   
              	alert(111);

               }
           }
          );
 
		*/
	}


   	


