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
 * Servlet implementation class orgThingsController
 */
@WebServlet("/orgThingsController")
public class orgThingsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orgThingsController() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		organizationDAO objOrgDAO = new organizationDAO();
		//String ein = "002";
		HttpSession s = request.getSession();
		String ein = (String) s.getAttribute("ein");
		organization_needVO objOrganization_needVO = new organization_needVO();
		objOrganization_needVO.setEIN(ein);
		List list =objOrgDAO.getThingOfOrg(objOrganization_needVO);
		
		s.setAttribute("key_list", list);
		
		
		response.sendRedirect("user/org_things.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("bye");
			organization_needVO objOrgNeedVO = new organization_needVO();
			organizationDAO objOrgDAO = new organizationDAO();
			HttpSession session=request.getSession();
			
			
			if(request.getParameter("electronics")!= null)
				objOrgNeedVO.setElec(1);
			else
				objOrgNeedVO.setElec(0);
			
			if(request.getParameter("education")!= null)
				objOrgNeedVO.setEdu(1);
			else
				objOrgNeedVO.setEdu(0);
			
			if(request.getParameter("health")!=null)
				objOrgNeedVO.setHealth(1);
			else
				objOrgNeedVO.setHealth(0);
			
			if(request.getParameter("hunger")!=null)
				objOrgNeedVO.setHunger(1);
			else
				objOrgNeedVO.setHunger(0);
			
			if(request.getParameter("sports")!=null)
				objOrgNeedVO.setSports(1);
			else
				objOrgNeedVO.setSports(0);
			
			if(request.getParameter("household")!=null)
				objOrgNeedVO.setHousehold(1);
			else
				objOrgNeedVO.setHousehold(0);
			
			//objOrgNeedVO.setEIN("002");
			String ein = (String) session.getAttribute("ein");
			objOrgNeedVO.setEIN(ein);
			String typeOfFunction = request.getParameter("hiddenBtn");
			//String typeOfFunction1 = request.getParameter("hiddenBtn1");
			if(typeOfFunction.equals("submitBtn"))
			{
				/*insert things org needs*/
				boolean status = objOrgDAO.insertOrgNeed(objOrgNeedVO);
			}
			else if(typeOfFunction.equals("updateBtn"))
			{
				boolean status = objOrgDAO.updateOrgNeed(objOrgNeedVO);
			}
			
			/*after saving/updating org needs org is displayed with same page with selected values*/
			List list =objOrgDAO.getThingOfOrg(objOrgNeedVO);
			session.setAttribute("key_list", list);
			response.sendRedirect("user/org_things.jsp");

		
		
		
	}

}
