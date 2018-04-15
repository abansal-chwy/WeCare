package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CreateEventDao;
import vo.CreateEventVo;
import vo.insertVO;

/**
 * Servlet implementation class createeventcontroller
 */
@WebServlet("/CreateEventController")
public class CreateEventController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateEventController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session=request.getSession();
		String event_id = request.getParameter("eventid");
		
		String ein = (String) session.getAttribute("ein");
		CreateEventDao obj1 = new CreateEventDao();
		CreateEventVo object1 = new CreateEventVo();

		if(event_id != null && event_id.equals("0")){
		object1.setEIN(ein);

		List l1 = obj1.getAllevents(object1);
		session.setAttribute("events", l1);
		session.setAttribute("eventToUpdate", "null");
		
		}
		else
		{
			//object1 = null;
			object1.setEvent_id(Integer.parseInt(event_id));
			List l = obj1.getEventFromEventID(object1);
			session.setAttribute("eventToUpdate", l);
		}
		response.sendRedirect("user/create_event.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String event_name =  request.getParameter("event_name");
			String location = request.getParameter("location");
			String time = request.getParameter("time");
			String date = request.getParameter("date");
			String description = request.getParameter("description");
			String flag=request.getParameter("flag");
			String btn = request.getParameter("btn");
			System.out.println(btn);
			HttpSession session=request.getSession();
			String ein = (String) session.getAttribute("ein");
			
			String ngo_name=null;
			String URL=null;
			CreateEventDao crt= new CreateEventDao();	
			List l=crt.fetchNgoName(ein);
					if(l.size()>0)
					{
						insertVO v= (insertVO) l.get(0);
						 ngo_name=v.getName();
						 URL=v.getURL();
					}
			
			CreateEventVo object = new CreateEventVo();
			object.setEvent_name(event_name);
			object.setLocation(location);
			object.setTime(time);
			object.setDate(date);
			object.setDescription(description);
			object.setEIN(ein);
			object.setActive(1);
			object.setNgo_name(ngo_name);
			object.setURL(URL);
			
			CreateEventDao obj = new CreateEventDao();
			if(flag.equals("0")){
			obj.insert(object);
			}
			else{
				object.setEvent_id(Integer.parseInt(flag));
				
				if(btn.equalsIgnoreCase("Inactive Event"))
				{
					object.setActive(0);
				}
				boolean update_status=obj.update(object);
			}

			List l1 = obj.getAllevents(object);
			session.setAttribute("events", l1);
			session.setAttribute("eventToUpdate", "null");
			response.sendRedirect("user/create_event.jsp");
	}

}
