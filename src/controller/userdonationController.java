package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.organizationDAO;
import vo.organization_needVO;

/**
 * Servlet implementation class userdonationController
 */
@WebServlet("/userdonationController")
public class userdonationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userdonationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		organization_needVO objOrgNeedVO = new organization_needVO();
		organizationDAO objOrgDAO = new organizationDAO();
		
		HttpSession session=request.getSession();
		
		String parameter = request.getParameter("param1");
		objOrgNeedVO.setCategory(parameter==null?"elec":parameter);
		List l = objOrgDAO.getAllOrganization(objOrgNeedVO);
		
		
		session.setAttribute("key", l);
		if(session.getAttribute("uid")!=null)
		{
			session.setAttribute("isUserLoggedIn", "yes");
		}
		else
			session.setAttribute("isUserLoggedIn", "no");
		response.sendRedirect("user/make_donation.jsp");
		
	}

}
