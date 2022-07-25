package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.doctor.DoctorDto;
import pack.model.DoctorDaoInter;
import pack.model.PatientDaoInter;
import pack.model.PatientDto;

@Controller
public class DLoginController {
	
	@Autowired
	private DoctorDaoInter dinter;
	
	@RequestMapping(value="dloginform", method = RequestMethod.GET)
	public String dlogin() {
		return "dloginform";
	}
	
	@RequestMapping(value="dlogin", method = RequestMethod.GET)
	public String goDLogin() {
		return "dloginform";
	}
	

	@RequestMapping(value="dlogin", method = RequestMethod.POST)
	public String submitLogin(HttpSession session, 
			@RequestParam("d_id") String d_id, @RequestParam("d_pw") String d_pw) {
		
		DoctorDto ddto = dinter.getLoginInfo(d_id);
		if(ddto != null) {
			String retPass = ddto.getD_pw();
			//System.out.println(retPass + " " + p_pw);
			if(retPass.equals(d_pw)) {
				session.setAttribute("d_id", d_id);
				session.setAttribute("d_pw", d_pw);
				return "redirect:/dmain";
			}else {
				return "dloginform";
			}
		}
		return "";
	}

	
	// 로그아웃
		@RequestMapping("dlogout")
	    public ModelAndView logout(HttpSession session) {
			dinter.dlogout(session);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("dloginform");
			return mv;
	    }


	
	
	

}
