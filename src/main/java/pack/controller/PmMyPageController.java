package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PmMyPageController {

	//마이페이지 정보수정 pedit
		@RequestMapping("pedit")
		   public String pedit() {
		      return "pedit";
		   }
}