package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.CreateEventVo;
import vo.reminderVo;

public class CreateEventDao {
	public void insertreminder(reminderVo object){
		try{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction tr = session.beginTransaction();

			session.save(object);

			tr.commit();
			System.out.println("insert reminder Done :: ");
		} 

		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public List fetchUserEmail(Integer user_id){
		List l=null;
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		
		try{
			
			Query q= s.createQuery("from userVO where user_id= :user_id");
			q.setParameter("user_id",user_id);
			l=q.list();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		
		return l;
	}
	
	public List fetchNgoName(String EIN){
		List l=null;
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

	public void insert(CreateEventVo object){
		try{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction tr = session.beginTransaction();

			session.save(object);

			tr.commit();
			System.out.println("insert Done :: ");
		} 

		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public List getAllevents(CreateEventVo object ){
		List l= null;
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		
		try{
			
			Query q= s.createQuery("from CreateEventVo where EIN = '"+object.getEIN()+"'");
			l=q.list();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return l;
		
	}
	public List getEventFromEventID(CreateEventVo object1) {
		List l= null;
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		
		try{
			
			Query q= s.createQuery("from CreateEventVo where event_id = '"+object1.getEvent_id()+"'");
			l=q.list();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return l;
	}
	public boolean update(CreateEventVo object) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		boolean status = false;
		Transaction tr = null;
		
		try{
			tr=s.beginTransaction();
			Query q= s.createQuery("update CreateEventVo set event_name = '"+object.getEvent_name()+"' , "
					+ "location = '"+object.getLocation()+"' , time = '"+object.getTime()+"' , "
							+ "date = '"+object.getDate()+"' , description = '"+object.getDescription()+"' ,"
									+ "active= '"+object.getActive()+"' where "
											+ "ein = '"+object.getEIN()+"' and event_id='"+object.getEvent_id()+"'");
			
			int id = q.executeUpdate();
			if(id==0)
			{
				tr.rollback();
				
			}
			else
			{
				tr.commit();
				status = true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}}
