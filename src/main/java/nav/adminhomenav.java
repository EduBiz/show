/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Administrator
 */
public class adminhomenav extends ActionSupport {
     private User user;
    private spDAO myDao;
    private Show show;
    private Stall stall;
    private List<Show> showlist;
    private List<Stall> stalllist;
    private List<Product> prodlist;

    @Override
    public String execute() throws Exception {
    Criteria allshow=myDao.getDbsession().createCriteria(Show.class);
            allshow.setMaxResults(50);
            showlist=allshow.list();
            Criteria allstall=myDao.getDbsession().createCriteria(Stall.class);
            allstall.setMaxResults(50);
            stalllist=allstall.list();
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
     * @return the show
     */
    public Show getShow() {
        return show;
    }

    /**
     * @param show the show to set
     */
    public void setShow(Show show) {
        this.show = show;
    }

    /**
     * @return the stall
     */
    public Stall getStall() {
        return stall;
    }

    /**
     * @param stall the stall to set
     */
    public void setStall(Stall stall) {
        this.stall = stall;
    }

    /**
     * @return the showlist
     */
    public List<Show> getShowlist() {
        return showlist;
    }

    /**
     * @param showlist the showlist to set
     */
    public void setShowlist(List<Show> showlist) {
        this.showlist = showlist;
    }

    /**
     * @return the stalllist
     */
    public List<Stall> getStalllist() {
        return stalllist;
    }

    /**
     * @param stalllist the stalllist to set
     */
    public void setStalllist(List<Stall> stalllist) {
        this.stalllist = stalllist;
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
