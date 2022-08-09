package kr.co.DDD.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.DDD.util.dto.ProjectUserDTO;

@Service
public class PrigectJoinService {

@Autowired
private PrigectJoinDAO dao;



	public int join( ProjectUserDTO dto ) {
		int successCount = 0;

		successCount = dao.join( dto );
		return successCount;
	}//join

}//class
