package com.jinlou.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jinlou.pojo.SysEnterprise;
import com.jinlou.utils.OkHttpUtil;
import com.jinlou.utils.SmsResult;

@Controller
public class EnterpriseController { 
	@RequestMapping("/enterprise/login")
	public @ResponseBody SmsResult login(SysEnterprise sysEnterprise, HttpServletRequest request, HttpServletResponse response,
			HttpSession httpSession) {
		// 校验校验码
				// 从session中获取界面图片上的校验码
				String checkcodeS = (String) httpSession.getAttribute("key");
				if (sysEnterprise.getCheckcode()!=null && sysEnterprise.getCheckcode().equals(checkcodeS)) {
					// 校验码输入且正确
					HashMap<String, String> params = new HashMap<String, String>();
					params.put("phone", sysEnterprise.getPhone()+"");
					params.put("password", sysEnterprise.getPassword()+"");
					String ret = OkHttpUtil.doPost("http://127.0.0.1:8082/enterprise/login", params);
					SmsResult result = SmsResult.format(ret);
					if(result.getReqCode()==0){
						request.getSession().setAttribute("admin", sysEnterprise);
					}
					return result;
				} else {
					return  SmsResult.build(1, "验证码错误");
				}

	}
	
	@RequestMapping("/enterprise/logout")
	public String logout(HttpSession session)throws Exception{
		//session过期
		session.invalidate();
		
		return "login";
	}
	
	public @ResponseBody SmsResult getEnterpriseInfo() {
		
		return null; 
	}
}
