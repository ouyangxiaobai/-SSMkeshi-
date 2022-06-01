var sel=$.Params.create();
$(function(){
    getData();
    
    	/**
   	 * 添加按钮
   	 */
   	$("#addbutton").on("click",function(){
   		   
   		window.location.href=getIP()+"media/bingfang/bingfangAdd.jsp";
   	})
   	
   
     /**
     * 查询
     */
    $("#searchList").on("click",function(){
  
    	var a1=$("#a1").val();
    	if(a1!=null || a1!="")
    	{
    		sel.addParams("a1",a1);
    	}
    	getData();
    })
    
     
    /**
     * 删除
     */
    $("#delbutton").on("click",function(){
    	var params=getcheckdata();
    	if(params == ""){
    		alert("请选择记录");
    		return false;
    	}
    	if(confirm("确定要删除吗？")){
    		var del=$.Params.create();
        	del.addParams("id",params);
        	del.ajax(getIP()+"bingfang.action?delMore",function(data){
        		if(data.success){
        			$("#queryCheckbox").removeAttr("checked");
        			$("#queryCheckbox").parent().removeClass("checked");
        			getData();
        		}
        	})
    	}
    })
    //获取活动数据
    function getData(){  
   		
	   	sel.addParams("page",0);
	   	sel.addParams("rows",rows);
	   
	   	getPageData(sel,getIP()+"bingfang.action?list",function(data){
	   		if(data.success){
	   			var len=data.total;
	   			 
		   		var html="";
				if(len >0){
					$.each(data.rows,function(i,val){
					var types="是";
						if(val.genre==1){
							types="否";
						}
						html+="<tr>" +
								"<td><input id='"+val.id+"' name='checkbox' type='checkbox'></td>" +
							  
							
								"<td>"+val.a1+"</td>" +
								"<td>"+val.a2+"</td>" +
						 
								"<td>"+
								//"<span onclick='getDetail(\""+val.id+"\")' class='checkDetailsBtn'>查看详情</span>"+
								"<a onclick='update(\""+val.id+"\")' class='btn btn-info'>修改</a></td>"+
								"</tr>";
					})
				}else{
					html="<tr><td colspan='10'>暂无数据</td></tr>";
					
				
				}
				$("table tbody").html(html);
				App.init();
				$("#loading").hide();
	   		}else{
	   			alert(data.msg);
	   				
	   		}
	   		
	   	});
	}
   
})
//修改
function update(id){
	
	window.location.href=getIP()+"media/bingfang/bingfangModify.jsp?eid="+id;
}

