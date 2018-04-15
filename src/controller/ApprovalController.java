package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmailConfirmationDao;
import dao.insertDaoOrg;
import utility.sendConfirmation;
import vo.insertVO;

@WebServlet("/ApprovalController")
public class ApprovalController extends HttpServlet{
	
	public ApprovalController() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String EIN=req.getParameter("EIN");
		String active=req.getParameter("status");
		
		if (active.equals("Accept"))
		{
			insertDaoOrg d= new insertDaoOrg();
			d.updateapproval(EIN,"1");
			resp.getWriter().append("Accept Working"); 
			EmailConfirmationDao e=new EmailConfirmationDao();
			List<insertVO> list =e.Organization_email(EIN);
			String email=list.get(0).getEmail_id();
			String name=list.get(0).getName();
			sendConfirmation.send(email,name);
			
		}
		else if (active.equals("Reject"))
		{
			insertDaoOrg d= new insertDaoOrg();
			d.updateapproval(EIN,"2");
			resp.getWriter().append("Decline Working");
		}
		
		
	}

	

}
