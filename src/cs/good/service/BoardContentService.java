package cs.good.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.BoardDao;
import cs.good.dto.BoardDto;

public class BoardContentService implements BoardService{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		
		BoardDao dao = new BoardDao();
		
		BoardDto dto = dao.contentlist(title);
		request.setAttribute("dto", dto);
	}
}
