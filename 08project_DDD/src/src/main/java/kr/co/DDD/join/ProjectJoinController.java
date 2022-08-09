package kr.co.DDD.join;

import java.io.PrintWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.DDD.util.dto.ProjectUserDTO;


@Controller
public class ProjectJoinController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectJoinController.class);
	
	@Autowired
	private PrigectJoinService service;
	
	@RequestMapping( value = "/", method = RequestMethod.POST )
	public void join( ProjectUserDTO dto, PrintWriter out ) {
		int successCount = 0;
		successCount = service.join( dto );
		out.print(successCount);
		out.close();
	}//join
	
	@RequestMapping(value = "/project_join")
	public String projectJoin() {
		return "/join/project_join";//jsp 파일 이름
	}//projectJoin
	
	
}//class