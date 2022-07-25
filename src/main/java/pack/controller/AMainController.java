package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AMainController {

   @RequestMapping("amain")
   public String main() {
      return "amain";
   }

}