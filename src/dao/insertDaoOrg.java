package dao;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.*;

public class insertDaoOrg {

	public void insert(insertVO v){
		
		try{
			SessionFactory sessionfactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			org.hibernate.Session s= sessionfactory.openSession();
			
			Transaction tr= s.beginTransaction();
			String EIN  = (String) s.save(v);
			if(EIN == null)
				tr.rollback();
			else
			{
					tr.commit();
			}
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
	}
}