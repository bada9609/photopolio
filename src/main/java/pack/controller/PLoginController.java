package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.PatientDaoInter;
import pack.model.PatientDto;

@Controller
public class PLoginController {
	@Autowired
	private PatientDaoInter painter;
	
	@RequestMapping(value="loginform", method = RequestMethod.GET)
	public String login() {
		return "loginform";
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String goLogin() {
		return "loginform";
	}
	

	@RequestMapping(value="login", method = RequestMethod.POST)
	public String submitLogin(HttpSession session, 
			@RequestParam("p_id") String p_id, @RequestParam("p_pw") String p_pw) {
		
		PatientDto pdto = painter.getLoginInfo(p_id);
		if(pdto != null) {
			String retPass = pdto.getP_pw();
			//System.out.println(retPass + " " + p_pw);
			if(retPass.equals(p_pw)) {
				session.setAttribute("p_id", p_id);
				session.setAttribute("p_pw", p_pw);
				//System.out.println(p_id + p_pw);
				return "redirect:/main";
			}else {
				return "loginform";
			}
		}
		return "";
	}

	
	// 로그아웃
		@RequestMapping("logout")
	    public ModelAndView logout(HttpSession session) {
			painter.logout(session);
			//session.invalidate();
			ModelAndView mv = new ModelAndView();
			mv.setViewName("loginform");
			return mv;
	    }


	
	
	

}
