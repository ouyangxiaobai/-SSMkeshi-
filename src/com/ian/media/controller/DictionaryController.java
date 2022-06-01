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

import com.ian.media.dao.DictionaryMapper;
import com.ian.media.model.Dictionary;

import com.ian.media.util.IDGenerator;


/**
 * 系统管理--数据字典
 * @author Administrator
 *
 */
@Controller("dictionary")
@Scope("prototype")
@RequestMapping("dictionary.action")
public class DictionaryController extends BaseController<Dictionary> {
	public DictionaryMapper dictionaryDao;

	@Autowired
    public void setDictionaryDao(DictionaryMapper dictionaryDao) {
        this.dictionaryDao = dictionaryDao;
    }

    @PostConstruct
    public void setBaseDao(){
        super.setBaseDao(dictionaryDao);
    }
	/**
	 * 新增功能
	 * @param session
	 * @param request
	 * @param params
	 * @return
	 */
    @RequestMapping(params = "add")
     @ResponseBody
	public Map<Object, Object> add(HttpSession session,HttpServletRequest request, Dictionary params){
    	Map<Object, Object> map = new HashMap<Object, Object>();
    	try {
    		params.setId(IDGenerator.getID());
    		dictionaryDao.insertSelective(params);
    		map.put("msg", "成功");
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);	
			map.put("msg", "失败");
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
    @RequestMapping(params = "update")
      @ResponseBody
	public Map<Object, Object> update(HttpSession session,HttpServletRequest request,Dictionary params){
		Map<Object, Object> map = new HashMap<Object, Object>();
		try {
			dictionaryDao.updateByPrimaryKeySelective(params);
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
    

}
