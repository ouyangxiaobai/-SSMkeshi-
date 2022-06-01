$(function(){
	
$("#return").on("click",function(){
	history.go(-1);
	});

})


 function  addsstu(){
	
 
	var a1 = $("#a1").val();
	var a2 = $("#a2").val();
 
	var a3=userName;//当前登录人用户名
     	
	var a4=usersId;//当前登录人id
 	var edit=$.Params.create();
 
  	var url=getIP()+"liuyan.action?add";
 
 	edit.addParams("a1",a1);
 	edit.addParams("a2",a2);
 	edit.addParams("a3",a3);
 	edit.addParams("a4",a4);
 	 
   		edit.ajax(url,function (data){
			if(data.success){
			alert("添加成功");
		 
			window.location.href=getIP()+"media/liuyan/liuyanList.jsp";
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


   	


