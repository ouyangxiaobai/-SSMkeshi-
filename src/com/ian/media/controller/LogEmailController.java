package com.ian.media.controller;


import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.ian.media.dao.LogEmailMapper;
import com.ian.media.model.LogEmail;

import com.ian.media.util.IDGenerator;
import com.ian.media.util.Time;
import java.util.HashMap;
import java.util.Map;

@Controller("LogEmail")
@Scope("prototype")
@RequestMapping("logEmail.action")
public class LogEmailController extends BaseController<LogEmail> {
	 public LogEmailMapper logEmailDao; 

	@Autowired
    public void setLogEmailMapperDao(LogEmailMapper logEmailDao) {
        this.logEmailDao = logEmailDao;
    }
	
	@PostConstruct
	public void setBaseDao(){
		super.setBaseDao(logEmailDao);
	}
	
	 @RequestMapping(params = "add")
		@ResponseBody
		public Map<Object, Object> add(HttpSession session,HttpServletRequest request,LogEmail params){
			Map<Object, Object> map = new HashMap<Object, Object>();
			try {
				String pkid=IDGenerator.getID();
				params.setId(pkid);
				params.setCreateTime(Time.nowDateToString());
				logEmailDao.insertSelective(params);
				map.put("msg", "添加成功");
				map.put("success", true);
			} catch (Exception e) {
				e.printStackTrace();
				map.put("success", false);	
				map.put("msg", "添加失败");
			}
			return map;
		}
	
	
}
