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

import com.ian.media.dao.liuyanMapper;
import com.ian.media.model.liuyan;

@Controller("liuyan")
@Scope("prototype")
@RequestMapping("liuyan.action")
public class liuyanController  extends BaseController<liuyan>{
	
	public liuyanMapper liuyanMapper; 
	@Autowired
	  public void setPlansMapperDao(liuyanMapper liuyanMapper) {
        this.liuyanMapper = liuyanMapper;
    }
	@PostConstruct
	public void setBaseDao(){
		super.setBaseDao(liuyanMapper);
	}
	@RequestMapping(params = "add")
	@ResponseBody
	public Map<Object, Object> add(HttpSession session,HttpServletRequest request,liuyan params){
		
		System.out.println("你好1111111111111");
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		System.out.print("你好"+params);
		liuyan ss=new liuyan();
		 
		String a1=request.getParameter("a1");
		String a2=request.getParameter("a2");
		String a3=request.getParameter("a3");
		String a4=request.getParameter("a4");
		System.out.println("a1:"+a1+" a2:"+a2+" a3: "+a3+" a4: "+a4);
		ss.setA1(a1);
		ss.setA2(a2);
		ss.setA3(a3);
		ss.setA4(a4);
		 
		try {
			liuyanMapper.insertSelective(ss);
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
	public Map<Object, Object> update(HttpSession session,HttpServletRequest request,liuyan params){
		Map<Object, Object> map = new HashMap<Object, Object>();
		try {
			liuyanMapper.updateByPrimaryKeySelective(params);
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
