/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class editproductnav extends ActionSupport {

    private spDAO myDao;
    private List<Product> prodlist;
   private InputStream fileInputStream;
   private long id;
    @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        User user = (User) session.get("user");
       
        Criteria pro = myDao.getDbsession().createCriteria(Product.class);
        pro.add(Restrictions.eq("user", user));
        pro.setMaxResults(50);
        prodlist = (List<Product>) pro.list();
        return "success";
    }
    
    
     public String img() throws Exception{
        
         try{
            
           Productimage  pimg=(Productimage)myDao.getDbsession().get(Productimage.class,id );
            byte[] retadd1=pimg.getImagefile();
            setFileInputStream(new ByteArrayInputStream(retadd1));
             }

           catch(Exception e)
          {
          e.printStackTrace();
          }
        return"success";
    }

    
    
    
    
    
    
    
    
    
    

    /**
     * @return the myDao
     */
    public spDAO getMyDao() {
        return myDao;
    }

    /**
     * @param myDao the myDao to set
     */
    public void setMyDao(spDAO myDao) {
        this.myDao = myDao;
    }

    /**
     * @return the prodlist
     */
    public List<Product> getProdlist() {
        return prodlist;
    }

    /**
     * @param prodlist the prodlist to set
     */
    public void setProdlist(List<Product> prodlist) {
        this.prodlist = prodlist;
    }

    /**
     * @return the fileInputStream
     */
    public InputStream getFileInputStream() {
        return fileInputStream;
    }

    /**
     * @param fileInputStream the fileInputStream to set
     */
    public void setFileInputStream(InputStream fileInputStream) {
        this.fileInputStream = fileInputStream;
    }

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }
}
