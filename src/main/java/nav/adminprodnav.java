/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import model.*;
import org.hibernate.Criteria;
/**
 *
 * @author Administrator
 */
public class adminprodnav extends ActionSupport {
     private User user;
    private spDAO myDao;
   
    private List<Product> prodlist;

    @Override
    public String execute() throws Exception {
   
           
            Criteria allproduct=myDao.getDbsession().createCriteria(Product.class);
            allproduct.setMaxResults(50);
            prodlist=allproduct.list();
        return "success";
    }
    
    
    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
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
}
