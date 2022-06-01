package com.ian.media.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ian.media.util.Backup;
/**
 *数据库备份
 * @author Administrator
 *
 */
@Controller("backupSql")
@RequestMapping("/backupSql")
public class BackupController extends Backup{
	@ResponseBody
	@RequestMapping(value = "beifen", method = { RequestMethod.POST,RequestMethod.GET })
	public  Map<Object,Object> beifen(HttpSession session,HttpServletRequest request){
		Map<Object,Object>  map = new  HashMap<Object, Object>();
		boolean aa = super.setBackupSql();
		if(aa){
			map.put("success",true);
			map.put("mesage", "备份成功");
		}else{
			map.put("success",false);
			map.put("mesage", "备份失败");			
		}
		
		return map;
	}
	@ResponseBody
	@RequestMapping(value = "delFile", method = { RequestMethod.POST,RequestMethod.GET })
	public  Map<Object,Object> delFiles(HttpSession session,HttpServletRequest request){
		Map<Object,Object>  map = new  HashMap<Object, Object>();
		String path = "D:/apache-tomcat-6.0.45/webapps/schools/upload/";
		String name = request.getParameter("name");
		boolean aa = super.deleteFile(path+name);
		if(aa){
			map.put("success",true);
			map.put("mesage", "删除成功");
		}else{
			map.put("success",false);
			map.put("mesage", "删除失败");			
		}
		return map;
	}
	@RequestMapping(value = "list", method = { RequestMethod.POST,RequestMethod.GET })
	@ResponseBody
	public ModelAndView list(HttpServletRequest request,HttpServletResponse response,ModelAndView mv) throws Exception {
		Map<Object,Object>  map = new  HashMap<Object, Object>();
		map=super.listBackupSql();
		mv.addObject("map",map);
		mv.setViewName("media/backupSql/backupSql");
		return mv;
	}
	@RequestMapping(value = "download", method = { RequestMethod.POST,RequestMethod.GET })
	@ResponseBody
	public Map<Object,Object> download(HttpServletRequest request,
			HttpServletResponse response) {
		Map<Object,Object>  map = new  HashMap<Object, Object>();
		String path = "D:/apache-tomcat-6.0.45/webapps/schools/upload/";
		String fileName = request.getParameter("fileName");	
	/*	String path = request.getParameter("filePath");		
		String fileName = request.getParameter("fileName");	*/
		response.setCharacterEncoding("utf-8");
		response.setContentType("multipart/form-data");
		response.setHeader("Content-Disposition", "attachment;fileName="
				+ fileName);
		try {
			/*String paths = Thread.currentThread().getContextClassLoader()
					.getResource("").getPath()
					+ "download/";//这个download目录为啥建立在classes下的
*/			System.out.println(fileName);
			System.out.println(path);
			InputStream inputStream = new FileInputStream(new File(path+fileName));
			
			OutputStream os = response.getOutputStream();
			byte[] b = new byte[2048];
			int length;
			while ((length = inputStream.read(b)) > 0) {
				os.write(b, 0, length);
			}

			 // 这里主要关闭。
			os.close();
			inputStream.close();
			map.put("success",true);
			map.put("mesage", "下载完成");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	        //  返回值要注意，要不然就出现下面这句错误！
	        //java+getOutputStream() has already been called for this response
		return map;
	}
}
