package kr.co.DDD.product;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectProductController.class);
	
	@RequestMapping(value = "/project_product", method = RequestMethod.GET)
	public String projectProduct() {
		return "/product/project_product";//jsp 파일 이름
	}//projectProduct
}//class
