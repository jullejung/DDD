package kr.co.DDD.cart;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectCartController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectCartController.class);
	
	@RequestMapping(value = "/project_cart", method = RequestMethod.GET)
	public String cart() {
		return "/cart/project_cart";//jsp 파일 이름
	}//cart
}//class
