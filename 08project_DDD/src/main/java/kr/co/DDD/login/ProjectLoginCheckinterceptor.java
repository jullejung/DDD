package kr.co.DDD.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.DDD.util.dto.MemberDTO;
import kr.co.DDD.util.dto.ProjectUserDTO;

public class ProjectLoginCheckinterceptor extends HandlerInterceptorAdapter {

	private final static Logger logger = LoggerFactory.getLogger(ProjectLoginCheckinterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//
		HttpSession session = request.getSession();
		ProjectUserDTO dto = (ProjectUserDTO) session.getAttribute("login_info");
		if(dto == null || dto.getUser_no() == null || dto.getUser_no().equals("") ) {
			response.sendRedirect(request.getContextPath() + "/project_login");
			return false;//계속 진행할 메소드 호출 중지
		}
		return super.preHandle(request, response, handler);//계속 진행할 메소드 호출
	}//preHandle
	
	public void postHandel(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}//postHandel
	
		
	
	
}//class
