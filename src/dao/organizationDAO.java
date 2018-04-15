package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.organization_needVO;

public class organizationDAO {

	public boolean insertOrgNeed(organization_needVO objOrgNeedVO)
	{
		boolean status = false;
		Transaction tr = null;
		try
		{
			SessionFactory sessionfactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			org.hibernate.Session s= sessionfactory.openSession();
			
			tr = s.beginTransaction();
			String id  = (String)s.save(objOrgNeedVO);
			if(id.equals("0"))
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
	}
	
	/*Fetch all organizations and things that they need : start*/

	public List getAllOrganization(organization_needVO objOrgNeedVO){
		
		List l= null;
			SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
			org.hibernate.Session s= sessionfactory.openSession();
			
			
			try{
				
				Query q= s.createQuery("from insertVO where EIN in(select EIN from organization_needVO where "+objOrgNeedVO.getCategory()+"=1)");
				l=q.list();
			}
			catch(Exception e )
			{
				e.printStackTrace();
			}
			return l;
			
		}
	/*Fetch all organizations and things that they need : end*/

	public List getThingOfOrg(organization_needVO objOrgNeedVO) {
		List l= null;
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		
		try{
			
			Query q= s.createQuery("from organization_needVO where ein = '"+objOrgNeedVO.getEIN()+"' ");
			l=q.list();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return l;
		

	}

	public boolean updateOrgNeed(organization_needVO objOrgNeedVO) {
		SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		org.hibernate.Session s= sessionfactory.openSession();
		
		boolean status = false;
		Transaction tr = null;
		
		try{
			tr=s.beginTransaction();
			Query q= s.createQuery("update organization_needVO set elec = "+objOrgNeedVO.getElec()+" , "
					+ "edu = "+objOrgNeedVO.getEdu()+" , health = "+objOrgNeedVO.getHealth()+" , "
							+ "hunger = "+objOrgNeedVO.getHunger()+" , sports = "+objOrgNeedVO.getSports() + " "
									+ ", household = "+objOrgNeedVO.getHousehold()+" where "
											+ "ein = '"+objOrgNeedVO.getEIN().toString()+"'");
			
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
	}
}
