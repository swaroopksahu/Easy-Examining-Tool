package org.swaroop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.swaroop.dto.OnlineExamDTO;
import org.swaroop.service.OnlineExamService;
import org.swaroop.vo.OnlineExamVO;

public class ControllerServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	
		res.setContentType("text/html");
		/*	String formAvatar = null;
		String formName = null;
		String formUsername = null;
		String formPassword = null;
		String formGender = null;
		double formMobile = 0;
		
		OnlineExamVO vo = null;
		OnlineExamDTO dto = null;
		OnlineExamService service = null;
		
		//Genetal settings
		res.setContentType("text/html");
		
		//Get Request Parameter values(Reading Form Data)
		formAvatar = req.getParameter("avatar");
		formName = req.getParameter("name");
		formUsername = req.getParameter("username");
		formPassword = req.getParameter("password");
		formGender = req.getParameter("gender");
		formMobile =	Double.parseDouble(req.getParameter("mobile")); 
		
		//Creating OnlineExamVO class object having Form Data
		vo = new OnlineExamVO();
		vo.setAvatar(formAvatar);
		vo.setName(formName);
		vo.setUsername(formUsername);
		vo.setPassword(formPassword);
		vo.setGender(formGender);
		vo.setMobile(formMobile);
		
		//Converting OnlineExamVO class  to OnlineExamDTO class object
		dto = new OnlineExamDTO();
		dto.setAvatar(vo.getAvatar());
		dto.setName(vo.getName());
		dto.setUsername(vo.getUsername());
		dto.setPassword(vo.getPassword());;
		dto.setGender(vo.getGender());
		dto.setMobile(vo.getMobile());
	
		//Forwarding OnlineExamDTO object to OnlineExamService  class
		service = new OnlineExamService();
		service.forwardToDAO(dto);
	
		*/
	}
	
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}
