package kr.co.DDD.join;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.DDD.util.dto.ProjectUserDTO;

@Repository
public class PrigectJoinDAO {

		@Autowired
		private SqlSession sqlSession;

		public int join( ProjectUserDTO dto ) {
			int successCount = 0;
			successCount = sqlSession.insert("JoinMapper.join", dto);
			return successCount;
		}//join


	}//class
