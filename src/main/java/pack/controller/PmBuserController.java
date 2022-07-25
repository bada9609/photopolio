package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PmBuserController {
	
	//진료과
	//이비인후과 buser_n
	@RequestMapping("buser_n")
	public String buser_n(){
		return "buser_n";
	}
	
	//내과 buser_i
	@RequestMapping("buser_i")
	public String buser_i(){
		return "buser_i";
	}
	
	//소아과 buser_c
	@RequestMapping("buser_c")
	public String buser_c(){
		return "buser_c";
	}
	
	//신경외과 buser_s
	@RequestMapping("buser_s")
	public String buser_s(){
		return "buser_s";
	}
	
	//특성화센터 buser_u
	@RequestMapping("buser_u")
	public String buser_u(){
		return "buser_u";
	}
	
	//협진센터 buser_co
	@RequestMapping("buser_co")
	public String buser_co(){
		return "buser_co";
	}
	
}
