package utility;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class sendConfirmation {
	
	final static String username = "admitatwecare@gmail.com";
	final static String password = "Spring@2017";
	final static String adminEmail = "separkingadm@gmail.com";

	public static void send(String email, String data) {
		// TODO Auto-generated method stub
		System.out.println("helooooo");
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

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("from-email@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			message.setSubject("You have been registered to the application...");
			String dataarray[] = data.split(",");
			//message.setContent("<h1> Message: " + data + "</h1>", "text/html");

			System.out.println(dataarray);
			message.setContent("Dear " + dataarray[0] + "," + "<br/>You have been registered "
					+"", "text/html");

			Transport.send(message);

			System.out.println("Done");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
