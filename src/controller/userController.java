package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.userVO;
import dao.insertDaoUser;

/**
 * Servlet implementation class insertController
 */
@WebServlet("/userController")
public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//String user_id=request.getParameter("user_id");
		String user_name=request.getParameter("user_name");
		String user_city=request.getParameter("user_city");
		String user_state=request.getParameter("user_state");
		String user_number=request.getParameter("user_number");
		String user_email=request.getParameter("user_email");
		String user_psw=request.getParameter("user_psw");
	
		
			userVO v = new userVO();
		//	v.setUser_id(user_id);
			v.setUser_name(user_name);
			v.setUser_city(user_city);
			v.setUser_state(user_state);
			v.setUser_number(user_number);
			v.setUser_email(user_email);
			v.setUser_psw(user_psw);
			

//			insertForeign v1= new insertForeign();
//			v1.setAddress("A1 - address");
//			//v.setId(4);
//			v1.setInsertVOobj(v);
			

			insertDaoUser d= new insertDaoUser();
			d.insert(v);
			
			response.sendRedirect("user/index.jsp");
		

	}

}
