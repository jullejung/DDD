package kr.co.DDD.login;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.DDD.util.dto.MemberDTO;
import kr.co.DDD.util.dto.ProjectUserDTO;

@Controller
public class ProjectLoginController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectLoginController.class);
	
	@Autowired
	private ProjectLoginService service;
	
	@RequestMapping( value = "/logout", method = RequestMethod.GET )
	public String logout( HttpSession session ) {
		session.invalidate();
		return "/main/help";//jsp file name
	}//logout
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void login(ProjectUserDTO dto, PrintWriter out, HttpSession session) {
		ProjectUserDTO dtoDB = null;
		dtoDB = service.login(dto);
		if(dtoDB == null) {
			out.print(0);
		}else if(dtoDB != null && dtoDB.getUser_no() != null && dtoDB.getUser_no() != "") {
			out.print(1);
			session.setAttribute("login_info", dtoDB);
		}
		out.close();
	}//login
	
	@RequestMapping(value = "/project_login", method = RequestMethod.GET)
	public String projectLogin() {
		return "/login/project_login";
	}//projectLogin
}//class