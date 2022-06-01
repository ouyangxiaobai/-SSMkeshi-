package com.ian.media.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ian.media.dao.shoufeiMapper;
import com.ian.media.model.shoufei;

@Controller("shoufei")
@Scope("prototype")
@RequestMapping("shoufei.action")
public class shoufeiController  extends BaseController<shoufei>{
	
	public shoufeiMapper shoufeiMapper; 
	@Autowired
	  public void setPlansMapperDao(shoufeiMapper shoufeiMapper) {
        this.shoufeiMapper = shoufeiMapper;
    }
	@PostConstruct
	public void setBaseDao(){
		super.setBaseDao(shoufeiMapper);
	}
	@RequestMapping(params = "add")
	@ResponseBody
	public Map<Object, Object> add(HttpSession session,HttpServletRequest request,shoufei params){
		
		System.out.println("你好");
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		System.out.print("你好"+params);
		shoufei ss=new shoufei();
		 
		String a1=request.getParameter("a1");
		String a2=request.getParameter("a2");
		String a3=request.getParameter("a3");
		String a4=request.getParameter("a4");
		String a5=request.getParameter("a5");
	 
		System.out.println("a1:"+a1+" a2:"+a2+" a3: "+a3+" a4: "+a4);
		ss.setA1(a1);
		ss.setA2(a2);
		ss.setA3(a3);
		ss.setA4(a4);
		ss.setA5(a5);
	 
		 
		try {
			shoufeiMapper.insertSelective(ss);
				map.put("msg", "添加 成功");
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);	
			map.put("msg", "添加失败");
		}
		return map;
	}
	@RequestMapping(params = "update")
	@ResponseBody
	public Map<Object, Object> update(HttpSession session,HttpServletRequest request,shoufei params){
		Map<Object, Object> map = new HashMap<Object, Object>();
		try {
			shoufeiMapper.updateByPrimaryKeySelective(params);
				map.put("success", true);
				map.put("msg", "修改 成功");
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);	
			map.put("msg", "修改失败");
		}
		return map;
	}
}
