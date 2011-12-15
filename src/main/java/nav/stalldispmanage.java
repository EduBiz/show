/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Product;
import model.Stall;
import model.Stalldisplay;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Administrator
 */
public class stalldispmanage extends ActionSupport {
private long stallid;
private User user;
private Stall stall;
private List<Product> prodlist;
private List<Stalldisplay> stalldisp;
private spDAO myDao;
private List<String> pro;
    @Override
    public String execute() throws Exception {
         Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
         
        Criteria prod=myDao.getDbsession().createCriteria(Product.class);
        prod.add(Restrictions.eq("user", user));
        prod.setMaxResults(50);
        prodlist=prod.list();
        Criteria stcri=myDao.getDbsession().createCriteria(Stall.class);
        stcri.add(Restrictions.eq("stallId", getStallid()));
        stcri.setMaxResults(1);
        stall=(Stall)(stcri.list().get(0));
        Criteria stdis=myDao.getDbsession().createCriteria(Stalldisplay.class);
        stdis.add(Restrictions.eq("stall", stall));
        stdis.setMaxResults(50);
        setStalldisp((List<Stalldisplay>) stdis.list());
        System.out.println("Stall display list size:\t\t"+getStalldisp().size());
 
        pro=new ArrayList();
        for(int i=1;i<prodlist.size();i++){
        pro.add(prodlist.get(i).getName());
        }
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
     * @return the stallid
     */
    public long getStallid() {
        return stallid;
    }

    /**
     * @param stallid the stallid to set
     */
    public void setStallid(long stallid) {
        this.stallid = stallid;
    }

    /**
     * @return the stalldisp
     */
    public List<Stalldisplay> getStalldisp() {
        return stalldisp;
    }

    /**
     * @param stalldisp the stalldisp to set
     */
    public void setStalldisp(List<Stalldisplay> stalldisp) {
        this.stalldisp = stalldisp;
    }

    /**
     * @return the pro
     */
    public List<String> getPro() {
        return pro;
    }

    /**
     * @param pro the pro to set
     */
    public void setPro(List<String> pro) {
        this.pro = pro;
    }

   
}
