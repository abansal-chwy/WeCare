package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.insertVO;
import dao.insertDaoOrg;

/**
 * Servlet implementation class insertController
 */
@WebServlet("/insertController")
public class insertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertController() {
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
		
		
		String name=request.getParameter("name");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String type=request.getParameter("type");
		String EIN=request.getParameter("EIN");
		String URL=request.getParameter("URL");
		String phone_no=request.getParameter("phone_no");
		String email_id=request.getParameter("email_id");
		String password=request.getParameter("password");
	
		
			insertVO v= new insertVO();			
			v.setName(name);
			v.setCity(city);
			v.setState(state);
			v.setType(type);
			v.setEIN(EIN);
			v.setURL(URL);
			v.setPhone_no(phone_no);
			v.setEmail_id(email_id);
			v.setPassword(password);
			

//			insertForeign v1= new insertForeign();
//			v1.setAddress("A1 - address");
//			//v.setId(4);
//			v1.setInsertVOobj(v);
			

			insertDaoOrg d= new insertDaoOrg();
			d.insert(v);
			
		System.out.println("All done!!");

	}

}
