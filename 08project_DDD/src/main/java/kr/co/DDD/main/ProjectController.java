package kr.co.DDD.main;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public String page(Locale locale, Model model) {

		return "/main/page";
	}//page
	
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String help() {
		return "/main/help";
	}
	
}//class
