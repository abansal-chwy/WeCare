package controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.sendReminderDao;
import vo.mailcheckVO;
import vo.reminderVo;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class emailSendController
 */
@WebServlet("/emailSendController")
public class emailSendController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emailSendController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("in new controller");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Boolean checkopen=false;
		sendReminderDao snd = new sendReminderDao();
		
		List l= snd.checkAppOpen();
		//System.out.println(l.size());
		
		
		if (l.size()==0)
		{
			List fetchedemail=snd.fetchReminder();
			if (fetchedemail.size()>0)
			{
				final  String username = "admitatwecare@gmail.com";
				final  String password = "#";
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "465");

				Session session = Session.getInstance(props, new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username, password);
					}
				});
				for (int i=0;i<fetchedemail.size();i++){
					try {
						reminderVo obj = (reminderVo) fetchedemail.get(i);
						Message message = new MimeMessage(session);
						message.setFrom(new InternetAddress("from-email@gmail.com"));
						message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(obj.getUser_email()));
						message.setSubject("You are signed up for the application...");
						
						//message.setContent("<h1> Message: " + data + "</h1>", "text/html");

						message.setContent("Dear User"+ "," + "<br/>This is a gentle reminder for " +obj.getEvent_name() +  " event which will be held on "+ obj.getEvent_date()
								+ ". Thank you for volunteering.<br/>Regards<br/>WeCare", "text/html");

						Transport.send(message);

						System.out.println("Done");
						
						
						
					
					
					
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				mailcheckVO obj = new mailcheckVO();
				snd.insertmailcheck(obj);

			}
			
			
		}
		
		
		
	}

}
