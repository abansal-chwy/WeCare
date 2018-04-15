package controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CreateEventDao;
import dao.insertDaoOrg;
import dao.insertDaoUser;
import vo.insertVO;
import vo.reminderVo;
import vo.reminderkey;
import vo.userVO;
import vo.CreateEventVo;

@WebServlet("/volunteerController")
public class volunteerController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public volunteerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		HttpSession session=request.getSession();
//		
//		String event_id= request.getParameter("event_id");
//		String event_name =  request.getParameter("event_name");
//		String user_email= request.getParameter("user_email");
//		 String event_date= request.getParameter("user_email");
//		 String reminder_date= request.getParameter("user_email");
//		Integer mail_sent= 0;
//		
//		
//		reminderVo rm =new reminderVo();
//		reminderkey rmk =new reminderkey();
//		rmk.setEvent_id(event_id);
//		rmk.setUser_email(user_email);
//		rm.setReminderkey(rmk);
//		rm.setEvent_name(event_name);
//		rm.setEvent_date(event_date);
//		rm.setReminder_date(reminder_date);
//		rm.setMail_sent(mail_sent);
//		
//		CreateEventDao obj = new CreateEventDao();
//		
//		obj.insertreminder(rm);
//		response.getWriter().append("Reminder Saved"); 
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		CreateEventVo v = new CreateEventVo();
		insertDaoUser objUsrDAO = new insertDaoUser();
		CreateEventDao crt = new CreateEventDao();
		
		HttpSession session=request.getSession();
		
		String parameter = request.getParameter("param1");
//		v.setActive(parameter==null?"0":parameter);
		List l = objUsrDAO.fetchupcomingevents(v);
		
		session.setAttribute("key", l);
		
		if(session.getAttribute("uid")!=null)
		{
			String user_email=null;
			Integer uid=(Integer)session.getAttribute("uid");
			List email= crt.fetchUserEmail(uid);
			if(email.size()>0)
			{
				userVO v1= (userVO) email.get(0);
				user_email=v1.getUser_email();
			}
			session.setAttribute("user_email", user_email);
			session.setAttribute("isUserLoggedIn", "yes");
			response.sendRedirect("user/volunteer.jsp");
		}
		else if (session.getAttribute("uid")==null)
			{
				session.setAttribute("isUserLoggedIn", "no");
				response.sendRedirect("user/volunteer_guest.jsp");
			}
		

	}

}
