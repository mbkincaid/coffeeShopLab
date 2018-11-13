package examples;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public class TipController {

	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("home");
	}
	
	@RequestMapping ("/result")
	public ModelAndView showRegistration(
			@RequestParam("total") Double total, 
			@RequestParam("tip") Double tip
			) {
		
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("tip", total*0.15);
		return mv;
	}
}
