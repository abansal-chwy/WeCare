package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.insertVO;
import vo.insertapproval;
import dao.insertDaoOrg;

/**
 * Servlet implementation class insertController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet{

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
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
		
		
		insertVO v = new insertVO();
		insertDaoOrg objOrgDAO = new insertDaoOrg();
		
		HttpSession session=request.getSession();
		
		String parameter = request.getParameter("param1");
		v.setActive(parameter==null?"0":parameter);
		List l = objOrgDAO.fetchpendingapproval(v);
		
		
		session.setAttribute("key", l);
		
		//response.sendRedirect("user/approval.jsp");

	}
}
