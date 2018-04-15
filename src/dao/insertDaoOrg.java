package dao;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;



import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;

import vo.*;

public class insertDaoOrg {
//	List<insertVO> orgs = new ArrayList<insertVO>();
	
	
public List validateorg(String email_id,String password){
	List l= null;
		try{
			SessionFactory sessionfactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			org.hibernate.Session s= sessionfactory.openSession();
			
			Transaction tr= s.beginTransaction();

				
				Query q= s.createQuery("from insertVO where email_id= :email_id and active='1'");
				q.setParameter("email_id",email_id);
				l=q.list();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return l;
	}
public List validateusr(String user_email,String user_psw){
	
	List l= null;
	
		try{
			SessionFactory sessionfactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			org.hibernate.Session s= sessionfactory.openSession();
			
			Transaction tr= s.beginTransaction();

				
				Query q= s.createQuery("from userVO where user_name= :user_email");
				q.setParameter("user_email",user_email);
				l=q.list();
				
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return l;
}

	public void insert(insertVO v,insertapproval v1){
		
		try{
			SessionFactory sessionfactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			org.hibernate.Session s= sessionfactory.openSession();
			
			Transaction tr= s.beginTransaction();
			String EIN  = (String) s.save(v);
			if(EIN==null)
				tr.rollback();
			else
			{
				Integer id1= (Integer)s.save(v1);
				if(id1!=null)
					tr.commit();
				else
					tr.rollback();
			}
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
	}
	
public List fetchpendingapproval(insertVO v){
		
		List l= null;
			SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
			org.hibernate.Session s= sessionfactory.openSession();
			
			
			try{
				
				Query q= s.createQuery("from insertVO where active='0'");
				l=q.list();
			}
			catch(Exception e )
			{
				e.printStackTrace();
			}
			return l;
			
	}

public void updateapproval(String EIN,String active){
	
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		Transaction tr= s.beginTransaction();
		
		try{
			String queryString="UPDATE insertVO SET active = :active WHERE EIN = :EIN";
			Query q= s.createQuery(queryString);
			q.setParameter("EIN",EIN);
			q.setParameter("active",active);
//			q.setParameter(EIN,"EIN");
//			q.setParameter(active,"active");
			int result = q.executeUpdate();
			System.out.println("Rows affected: " + result);
			tr.commit();
			
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		
}
}

