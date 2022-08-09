package kr.co.DDD.auction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectAuctionController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectAuctionController.class);

	@RequestMapping(value = "/project_auction", method = RequestMethod.GET)
	public String projectAuction() {
		return "auction/project_auction";//jsp 파일 이름
	}//projectAuction
	
}//class
