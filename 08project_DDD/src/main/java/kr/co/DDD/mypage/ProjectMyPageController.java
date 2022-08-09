package kr.co.DDD.mypage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectMyPageController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectMyPageController.class);
	
	@RequestMapping(value = "/project_mypage", method = RequestMethod.GET)
	public String myPage() {
		return "/mypage/project_mypage";//jsp 파일 이름
	}//myPage
	
}//class
