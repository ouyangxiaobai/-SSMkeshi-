package com.ian.media.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.ian.media.dao.MemberMapper;

import com.ian.media.model.Member;

import com.ian.media.util.IDGenerator;
import com.ian.media.util.Time;
/**
 * 会员注册
 * @author Administrator
 *
 */
@Controller("member")
@Scope("prototype")
@RequestMapping("member.action")
public class MemberController extends BaseController<Member> {
	public MemberMapper memberDao;

	@Autowired
    public void setMemberOrderDao(MemberMapper memberDao) {
        this.memberDao = memberDao;
    }

    @PostConstruct
    public void setBaseDao(){
        super.setBaseDao(memberDao);
    }
    
    
    @RequestMapping(params = "registerDetail")
	public  ModelAndView registerDetail(HttpSession session,HttpServletRequest request) {
		try{
		   Map<Object, Object> qureyMap = new HashMap<Object, Object>();
		  JSONObject object=(JSONObject) session.getAttribute("userInfo");
		  String customerId= object.getString("openid");
		  qureyMap.put("openId", customerId);
		  List<Member> list=memberDao.get(qureyMap);
		  if(list.size()>0){
			  return new ModelAndView("weixin/hy/registerDetail");
		  }else{
			  return new ModelAndView("weixin/hy/register");
          }
		}catch(Exception e){
			e.printStackTrace();
			  return null;
		}
	}
    
    
    
    @RequestMapping(params = "add")
	@ResponseBody
	public Map<Object, Object> add(HttpSession session,HttpServletRequest request,Member params){
		Map<Object, Object> map = new HashMap<Object, Object>();
		try {
			Map<Object, Object> map1 = new HashMap<Object, Object>();
			map1.put("openId", params.getOpenId());
			map1.put("name", params.getName());
			List<Member> list=memberDao.get(map1);
			if(list.size()>0){
				map.put("msg", "该用户名已经注册过了！");
				map.put("success", false);
			}else{
				params.setId(IDGenerator.getID());
				params.setCreateTime(Time.nowDateToString());
				memberDao.insertSelective(params);
				map.put("msg", "注册成功");
				map.put("success", true);
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);	
			map.put("msg", "注册失败");
		}
		return map;
	}
    
    @RequestMapping(params = "update")
	@ResponseBody
	public Map<Object, Object> update(HttpSession session,HttpServletRequest request,Member params){
		Map<Object, Object> map = new HashMap<Object, Object>();
		try {
			memberDao.updateByPrimaryKeySelective(params);
			map.put("msg", "修改成功");
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);	
			map.put("msg", "修改失败");
		}
		return map;
	}
    
    /**
     * 修改
     * @param session
     * @param request
     * @param params
     * @return
     */
    @RequestMapping(params = "updateState")
      @ResponseBody
	public Map<Object, Object> updateState(HttpSession session,HttpServletRequest request,Member params){
		Map<Object, Object> map = new HashMap<Object, Object>();
		try {
			memberDao.updateStateByKey(params);
			map.put("msg", "修改成功");
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);	
			map.put("msg", "修改失败");
		}
		//return map;
		return map;
	}
    
    /**
	 * 登录
	 * @param user
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(params="login")
    @ResponseBody
    public Map<Object, Object> login(Member user, HttpServletRequest request,HttpSession session){
        Map<Object, Object> map = new HashMap<Object, Object>();
        String loginName = user.getName();
        String passWord = user.getFiled2();
    	try {
	        if (loginName.equals("") || loginName.equals(null) || passWord.equals("") || passWord.equals(null)){
	        	map.put("success", false);
	        }else{
	        	map.put("name", loginName);
//	        	map.put("filed2", MD5.pass(passWord));
	        	map.put("filed2",passWord);
	        	System.out.print(memberDao.get(map));
	        	List<Member> list=memberDao.get(map);
	        	 if (list.size() <= 0){
		                map.put("success", false);
		            }else {
		            	map.put("success", true);
		                session.setAttribute("member",list.get(0));
		            }
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}
        return map;
    }
	 /**
	 * 登录
	 * @param user
	 * @param request
	 * @param session
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(params="loginOut")
    @ResponseBody
    public Map loginOut(Member user, HttpServletRequest request,HttpSession session){
        Map map = new HashMap();
    	try {
		         session.removeAttribute("member");
		} catch (Exception e) {
			e.printStackTrace();
		}
        return map;
    }
}
