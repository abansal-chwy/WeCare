package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CreateEventDao;
import dao.insertDaoOrg;
import vo.reminderVo;
import vo.reminderkey;

@WebServlet("/reminderController")
public class reminderController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public reminderController() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		String event_name =  request.getParameter("event_name");
		String event_id= request.getParameter("eventid");
		String user_email= request.getParameter("user_email");
		
		 String event_date= request.getParameter("event_date");
		 Date date1;
		try {
			date1 = new SimpleDateFormat("yyyy-MM-dd").parse(event_date);
			Calendar cal = Calendar.getInstance();
			 cal.setTime(date1);
			 cal.add(Calendar.DATE, -3);
			 Date dateBefore30Days = cal.getTime();
			 
			 DateFormat formatter = new SimpleDateFormat("E MMM dd HH:mm:ss Z yyyy");
			 Date newdate = formatter.parse(dateBefore30Days.toString());
			 //System.out.println(newdate); 
			 
			 Calendar cal1 = Calendar.getInstance();
			 cal1.setTime(newdate);
			 String temp="-1";
			 if((cal1.get(Calendar.MONTH) + 1) <10)
			 {
				 int temp1 = (cal1.get(Calendar.MONTH) + 1);
				 temp = "0".concat(""+temp1);
			 }
			 String formatedDate = cal1.get(Calendar.YEAR) + "-" + temp + "-" + cal1.get(Calendar.DATE);
	//		 System.out.println("formatedDate : " + formatedDate); 
			//String reminder_date= request.getParameter("");
				Integer mail_sent= 0;
				
				
				reminderVo rm =new reminderVo();
//				reminderkey rmk =new reminderkey();
//				rmk.setEvent_id(event_id);
//				rmk.setUser_email(user_email);
				rm.setEvent_id(event_id);
				rm.setUser_email(user_email);
//				rm.setReminderkey(rmk);
				rm.setEvent_name(event_name);
				rm.setEvent_date(event_date);
				rm.setReminder_date(formatedDate);
				rm.setMail_sent(mail_sent);
				
				CreateEventDao obj = new CreateEventDao();
				
				obj.insertreminder(rm);
				response.getWriter().append("Reminder Saved");
				
			 
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(session.getAttribute("uid")!=null)
		{
			session.setAttribute("isUserLoggedIn", "yes");
			response.sendRedirect("user/volunteer.jsp");
		}
		else if (session.getAttribute("uid")==null){
			session.setAttribute("isUserLoggedIn", "no");
			response.sendRedirect("user/volunteer_guest.jsp");
		}
			
		 
	}

}
