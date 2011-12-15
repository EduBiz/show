/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import controller.userEnum;
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
public class stalldisplayprodstatus extends ActionSupport {

    /**
     * @return the ut
     */
    public static userEnum getUt() {
        return ut;
    }

    /**
     * @param aUt the ut to set
     */
    public static void setUt(userEnum aUt) {
        ut = aUt;
    }
private long stallid;
private User user;
private Stall stall;
private List<Product> prodlist;
private List<Stalldisplay> stalldisp;
private spDAO myDao;
private Product pro;
private static userEnum ut;
private long productid;
private String status;


  @Override
    public String execute() throws Exception {
         Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
        Criteria stcri=myDao.getDbsession().createCriteria(Stall.class);
        stcri.add(Restrictions.eq("stallId", getStallid()));
        stcri.setMaxResults(1);
        stall=(Stall)(stcri.list().get(0));
        Criteria stdis=myDao.getDbsession().createCriteria(Stalldisplay.class);
        stdis.add(Restrictions.eq("stall", stall));
        stdis.setMaxResults(50);
        setStalldisp((List<Stalldisplay>) stdis.list());
        System.out.println("Stall display list size:\t\t"+getStalldisp().size());
       pro=(Product)myDao.getDbsession().get(Product.class, productid);
      if(status.equals(userEnum.Active.getUserType()))
      {
      pro.setStatus(userEnum.Suspend.getUserType());
      myDao.getDbsession().update(pro);
      }
  else
      {
      pro.setStatus(userEnum.Active.getUserType());
      myDao.getDbsession().update(pro);
      }
      
        return "success";
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
     * @return the pro
     */
    public Product getPro() {
        return pro;
    }

    /**
     * @param pro the pro to set
     */
    public void setPro(Product pro) {
        this.pro = pro;
    }

    /**
     * @return the productid
     */
    public long getProductid() {
        return productid;
    }

    /**
     * @param productid the productid to set
     */
    public void setProductid(long productid) {
        this.productid = productid;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
}
