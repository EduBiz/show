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
public class searchproduct extends ActionSupport{
     private spDAO myDao;
    private List<Product> prodlist;
    private String search;
    
    
    
    
    
      @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        User user = (User) session.get("user");
        Stall stall = (Stall) session.get("Stall");
        Criteria pro = getMyDao().getDbsession().createCriteria(Product.class);
        pro.add(Restrictions.eq("user", user));
        pro.add(Restrictions.like("name", getSearch()+"%"));
        pro.setMaxResults(50);
        setProdlist((List<Product>) pro.list());
        return "success";
    
      
      
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
     * @return the search
     */
    public String getSearch() {
        return search;
    }

    /**
     * @param search the search to set
     */
    public void setSearch(String search) {
        this.search = search;
    }
    
    
}
