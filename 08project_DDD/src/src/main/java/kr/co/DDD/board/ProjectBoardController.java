package kr.co.DDD.board;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectBoardController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectBoardController.class);
	
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String QnA() {
		return "/board/qna";//jsp 파일 이름
	}//cafe
	
	@RequestMapping(value = "/freeboard", method = RequestMethod.GET)
	public String freeboard() {
		return "/board/freeboard";//jsp 파일 이름
	}//cafe
	
	@RequestMapping(value = "/cafe", method = RequestMethod.GET)
	public String cafe() {
		return "/board/cafe";//jsp 파일 이름
	}//cafe
	
	@RequestMapping(value = "/project_board4", method = RequestMethod.GET)
	public String projectBoard4() {
		return "/board/project_board4";//jsp 파일 이름
	}//projectBoard4
	
	@RequestMapping(value = "/project_board3", method = RequestMethod.GET)
	public String projectBoard3() {
		return "/board/project_board3";//jsp 파일 이름
	}//projectBoard3
	
	@RequestMapping(value = "/project_board_if2", method = RequestMethod.GET)
	public String board_if2() {
		return "/board/project_board_if2";//jsp 파일 이름
	}//projectBoard2
	
	@RequestMapping(value = "/project_board2", method = RequestMethod.GET)
	public String projectBoard2() {
		return "/board/project_board2";//jsp 파일 이름
	}//projectBoard
	
	@RequestMapping(value = "/project_board_if", method = RequestMethod.GET)
	public String board_if() {
		return "/board/project_board_if";//jsp 파일 이름
	}//projectBoard
	
	@RequestMapping(value = "/project_board", method = RequestMethod.GET)
	public String projectBoard() {
		return "/board/project_board";//jsp 파일 이름
	}//projectBoard
	
}//class
