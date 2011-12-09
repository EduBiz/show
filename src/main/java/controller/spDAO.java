/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import model.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

/**
 *
 * @author Administrator
 */
public class spDAO implements InitializingBean,DisposableBean  {
   private Session dbsession;
   private Transaction tx;
     /**
     * @return the dbsession
     */
    public Session getDbsession(){      
        return dbsession;
    }
    public void afterPropertiesSet() throws Exception {
        try{
            dbsession = HibernateUtil.getSessionFactory().getCurrentSession();
            System.err.print("obtained current session");
        }
        catch(Exception e){            
            dbsession = HibernateUtil.getSessionFactory().openSession();
            System.err.print(e.getMessage()+"new session db created");
        }
            this.tx = dbsession.beginTransaction();
    }

    public void destroy() throws Exception {
        System.err.print("transaction commited");
        this.tx.commit();
    }
    
}

