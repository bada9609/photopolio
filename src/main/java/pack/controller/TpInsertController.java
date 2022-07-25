package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pack.doctor.DoctorDao;
import pack.model.PatientDaoInter;
import pack.model.PatientDto;
import pack.model.TpBoardDaoInter;
import pack.model.TpDto;

@Controller
public class TpInsertController {
	@Autowired
	private DoctorDao doctorDao;
	
	@Autowired
	private TpBoardDaoInter tpinter;

	@Autowired
	private PatientDaoInter tpainter;

	@RequestMapping(value = "tpboard_insert", method = RequestMethod.GET)
	public String abc() {
		return "tpboard_insert";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String def(Model model, TpBean bean) {

		int newNum = tpinter.currentNum() + 1;

		// bean.setNum(newNum);
		bean.setGnum(newNum);

		if (tpinter.insert(bean))
			return "redirect:/tpboard?page=1";
		else
			return "error";
	}

	

}
