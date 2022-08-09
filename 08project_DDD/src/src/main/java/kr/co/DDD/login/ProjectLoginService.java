package kr.co.DDD.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.DDD.util.dto.MemberDTO;
import kr.co.DDD.util.dto.ProjectUserDTO;

@Service
public class ProjectLoginService {

	@Autowired
	private ProjectLoginDAO dao;
	
	public ProjectUserDTO login(ProjectUserDTO dto) {
		ProjectUserDTO dtoDB = null;
		dtoDB = dao.login(dto);
		return dtoDB;
	}//login
}//class