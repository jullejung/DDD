package kr.co.DDD.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {

private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
		return "/test";//jsp 파일 이름
	}//test
	
}//class
