package com.jxxt.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jxxt.controller.tools.Tools;
import com.jxxt.entity.TAdmin;
import com.jxxt.entity.TLogin;
import com.jxxt.entity.TStudent;
import com.jxxt.entity.TTeacher;
import com.jxxt.mapper.TAdminMapper;
import com.jxxt.mapper.TNoticeMapper;
import com.jxxt.mapper.TStudentMapper;
import com.jxxt.mapper.TTeacherMapper;



@Controller
@RequestMapping ( "/login" )
public class MTLoginController extends Tools{
    /**
     * 日志系统
     */
	

    @Autowired
    TAdminMapper tAdminMapper;

    @Autowired
    TStudentMapper tStudentMapper;

    @Autowired
    TTeacherMapper tTeacherMapper;

    @Autowired
    TNoticeMapper tNoticeMapper;
    
	
	
	
	
	@ResponseBody
    @RequestMapping(value="login")
	public Map<String, Object>   adminLogin(TLogin tuser,HttpSession session,HttpServletRequest request){
		Map<String, Object> map = new HashMap<String,Object>();
		if("3".equals(tuser.getRole())) {
			//TUser user=tUserService.selectByAccount(tuser);
			TAdmin tAdmin  = tAdminMapper.selectAdminLogin(tuser.getUsername());
			if(tAdmin!=null) {
				if(tAdmin.getPassword().equals(tuser.getPassword())) {
					tuser.setId(tAdmin.getId());
					tuser.setName(tAdmin.getUsername());
					session.setAttribute("user", tuser);
					map.put("isFlag", 0);
				}else {
					map.put("isFlag", 1);
				}
			}else {
				map.put("isFlag", 2);
			}
		}
		if("1".equals(tuser.getRole())) {
			TStudent tStudent = tStudentMapper.selectStuLogin(tuser.getUsername());
			if(tStudent !=null) {
				if(tStudent.getStuPwd().equals(tuser.getPassword())) {
					tuser.setName(tStudent.getStuName());
					tuser.setId(tStudent.getId());
					session.setAttribute("user", tuser);
					map.put("isFlag", 0);
				}else {
					map.put("isFlag", 1);
				}
			}else {
				map.put("isFlag", 2);
			}
			
		}
		if("2".equals(tuser.getRole())) {
			TTeacher tTeacher =tTeacherMapper.selectTeaLogin(tuser.getUsername());
			if(tTeacher!=null) {
				if(tTeacher.getTeaPwd().equals(tuser.getPassword())) {
					tuser.setId(tTeacher.getId());
					tuser.setName(tTeacher.getTeaName());
					tuser.setProfessionId(tTeacher.getProfessionId());
					session.setAttribute("user", tuser);
					map.put("isFlag", 0);
				}else {
					map.put("isFlag", 1);
					
				}
			}else {
				map.put("isFlag", 2);
			}
			
		}
    	/*
		if(user != null){
			if(tuser.getPassword().equals(user.getPassword())){
				session.setAttribute("user", user);
 				return "main";
			}else{
				request.setAttribute("error_password", "密码错误！");
			}
		}else{
			request.setAttribute("error_username", "用户名不存在！");
		}*/
		return map;
	}
	
    @RequestMapping(value="main")
   	public String getMainPage(TLogin tuser,HttpSession session,HttpServletRequest request){
   		
       	/*TUser user=tUserService.selectByAccount(tuser);
   		if(user != null){
   			if(tuser.getPassword().equals(user.getPassword())){
   				session.setAttribute("user", user);
    				return "main";
   			}else{
   				request.setAttribute("error_password", "密码错误！");
   			}
   		}else{
   			request.setAttribute("error_username", "用户名不存在！");
   		}*/
   		return "main";
   	}

    
	@RequestMapping(value="editPassword")
	public Map<String,Object> editPassword(String password,HttpSession session){
		TLogin login = 	(TLogin) session.getAttribute("user");
		int i =0;
		if("1".equals(login.getRole())) { //学生
			TStudent ts = new TStudent();
			ts.setId(login.getId());
			ts.setStuPwd(password);
			i =tStudentMapper.updateByPrimaryKeySelective(ts);
		}
		if("2".equals(login.getRole())) {//老师
			TTeacher te = new TTeacher();
			te.setId(login.getId());
			te.setTeaPwd(password);
			i =tTeacherMapper.updateByPrimaryKeySelective(te);
		}
		if("3".equals(login.getRole())) {//管理员
			TAdmin ta = new TAdmin();
			ta.setId(login.getId());
			ta.setPassword(password);
			i =tAdminMapper.updateByPrimaryKeySelective(ta);
		}
		Map<String,Object> returnMap = new HashMap<String,Object>();
        if (i == 0)
        	returnMap.put("showInfo", "修改失败！");
        else
        	returnMap.put("showInfo", "修改成功！");
        return returnMap;
	}
    
	@RequestMapping(value="logout")
	public ModelAndView loginoutAdmin(HttpSession session){
		ModelAndView mv = new ModelAndView("index");
		List list = tNoticeMapper.findNotice();
		
		mv.addObject("list",list);
		
		session.removeAttribute("user");
		return mv;
	}
	
	@RequestMapping(value="index2")
	public ModelAndView index2(HttpSession session){
		ModelAndView mv = new ModelAndView("index2");
		List list = tNoticeMapper.findNotice();
		
		mv.addObject("list",list);
		return mv;
	}
	@RequestMapping(value="index")
	public String index(HttpSession session){
		
		return "index";
	}
	@RequestMapping(value="home")
	public ModelAndView home(HttpSession session){
		TLogin login = 	(TLogin) session.getAttribute("user");
		ModelAndView mv = null;
		
		if("3".equals(login.getRole())) {
			mv= new ModelAndView("home");
			mv.addObject("studentCount", tStudentMapper.selectCount());
			mv.addObject("teacherCount", tTeacherMapper.selectCount());
		}else {
			mv= new ModelAndView("tea_home");
		}
		
		
		return mv;
	}
	
	
	
	

	
}
