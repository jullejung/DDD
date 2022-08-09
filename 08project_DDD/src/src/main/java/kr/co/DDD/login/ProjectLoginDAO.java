package kr.co.DDD.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.DDD.util.dto.MemberDTO;
import kr.co.DDD.util.dto.ProjectUserDTO;

@Repository
public class ProjectLoginDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public ProjectUserDTO login(ProjectUserDTO dto) {
		ProjectUserDTO dtoDB = null;
		dtoDB = sqlSession.selectOne("LoginMapper.login", dto);
		return dtoDB;
	}//login
	
}//class