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

import com.ian.media.dao.vshoufeiMapper;
import com.ian.media.model.vshoufei;

@Controller("vshoufei")
@Scope("prototype")
@RequestMapping("vshoufei.action")
public class vshoufeiController  extends BaseController<vshoufei>{
	
	public vshoufeiMapper vshoufeiMapper; 
	@Autowired
	  public void setPlansMapperDao(vshoufeiMapper vshoufeiMapper) {
        this.vshoufeiMapper = vshoufeiMapper;
    }
	@PostConstruct
	public void setBaseDao(){
		super.setBaseDao(vshoufeiMapper);
	}

}
