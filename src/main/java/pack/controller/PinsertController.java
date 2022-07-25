package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pack.model.PatientDaoInter;
import pack.model.PatientDto;


@Controller
public class PinsertController {
	@Autowired
	private PatientDaoInter pinter;
	

	@RequestMapping(value = "patient_insert", method = RequestMethod.GET) 
	public String patient_insert() {
		return "patient_insert";
	}
	
	@RequestMapping(value="patientinsert", method = RequestMethod.GET)
	public String patientinsert() {
		return "patient_insert";
	}
	
	@RequestMapping(value="patientinsert", method = RequestMethod.POST)
	public String process(Model model, PatientDto pdto) {
		if(pinter.insert(pdto))
			return "redirect:/loginform";
		else
			return "error";
	}
	
	

}
