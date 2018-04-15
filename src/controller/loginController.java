package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.insertDaoOrg;
import vo.insertVO;
import vo.insertapproval;
import vo.userVO;

@WebServlet("/loginController")
public class loginController extends HttpServlet {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		if(session.getAttribute("ein")!=null){
			session.removeAttribute("ein");
			response.sendRedirect("user/index.jsp");
			
		}
		if(session.getAttribute("uid")!=null){
			session.removeAttribute("uid");
			response.sendRedirect("user/index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();
		Boolean match=false;
		String login= (String) session.getAttribute("login");
		System.out.println("1"+session.getAttribute("login"));
		System.out.println("2"+request.getAttribute("login"));
		System.out.println("3"+request.getParameter("login"));
		String email_id=request.getParameter("email_id");
		String password=request.getParameter("password");
			insertDaoOrg d= new insertDaoOrg();
//			login="adm";
			if (login.equals("org"))
			{
				
				List l=d.validateorg(email_id,password);
				if(l.size()>0)
				{
					insertVO v= (insertVO) l.get(0);
					if (v.getPassword().equals(password))
					{
						session.setAttribute("ein", v.getEIN());
						response.sendRedirect("user/home_org.jsp");
						
					}
					else
						response.sendRedirect("user/index.jsp");
				}
				else
				{
					response.sendRedirect("user/approvalpending.jsp");
				}
				

			}
			else if (login.equals("usr"))
			{
				List l=d.validateusr(email_id,password);
				userVO u = (userVO)l.get(0);
				if (u.getUser_psw().equals(password))
				{
					session.setAttribute("uid", u.getUser_id());
					response.sendRedirect("user/index1.jsp");
					
				}
				else
					response.sendRedirect("user/index.jsp");
			}
			
			else if (login.equals("adm"))
			{	System.out.println("aa");
				List l=d.validateusr(email_id,password);
				
				userVO u = (userVO)l.get(0);
				if (u.getUser_psw().equals(password))
				{	
					session.setAttribute("uid", u.getUser_id());
					response.sendRedirect("user/approval.jsp");
				
				}
				else
					response.sendRedirect("user/index.jsp");
			}
			
		System.out.println("All done!!");

	}


}
