package dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.mailcheckVO;
import vo.userVO;

public class EmailConfirmationDao {
	public void insertmailcheck(mailcheckVO object){
		try{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction tr = session.beginTransaction();

			Date d = new Date();
			DateFormat formatter = new SimpleDateFormat("E MMM dd HH:mm:ss Z yyyy");
			 Date newdate = formatter.parse(d.toString());
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
			object.setApp_date(formatedDate);
			object.setMails_sent(1);
			session.save(object);

			tr.commit();
			System.out.println("insert Done :: ");
		} 

		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List checkAppOpen(){
		List l=null;
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		
		try{
			
			Query q= s.createQuery("from mailcheckVO where (to_date(app_date ,'YYYY/MM/DD')) = (current_date())");
			
			l=q.list();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		
		return l;
	}
	
	public List Organization_email(String EIN){
		List<?> l=null;
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		
		try{
			
			Query q= s.createQuery("from insertVO where EIN= :EIN");
			q.setParameter("EIN",EIN);
					
			l=q.list();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		
		return l;
	}
	
	public List fetchReminder(){
		List l=null;
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		
		try{
			
			Query q= s.createQuery("from reminderVo where (to_date(reminder_date ,'YYYY/MM/DD')) = (current_date())");
		
			l=q.list();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		
		return l;
	}
	
	
}

