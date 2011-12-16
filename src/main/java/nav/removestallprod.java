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
public class removestallprod extends ActionSupport {

    private long stallid;
    private long displayid;
    private User user;
    private Stall stall;
    private List<Product> prodlist;
    private List<Stalldisplay> stalldisp;
    private spDAO myDao;
    private Product prod;
    private Stalldisplay dispstall;
     private List<String> pro;
       private String pname;
    @Override
    public String execute() throws Exception {


        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));

        dispstall = (Stalldisplay) myDao.getDbsession().get(Stalldisplay.class, displayid);
        myDao.getDbsession().delete(dispstall);
        Criteria prod1 = myDao.getDbsession().createCriteria(Product.class);
        prod1.add(Restrictions.eq("user", user));
        prod1.setMaxResults(50);
        prodlist = prod1.list();
          setPro((List<String>) new ArrayList());
        for(int i=0;i<prodlist.size();i++){
            getPro().add(prodlist.get(i).getName());
            
        }
        Criteria st = myDao.getDbsession().createCriteria(Stall.class);
        st.add(Restrictions.eq("stallId", stallid));
        st.setMaxResults(1);
        stall = (Stall) (st.list().get(0));
        Criteria stdis = myDao.getDbsession().createCriteria(Stalldisplay.class);
        stdis.add(Restrictions.eq("stall", stall));
        stdis.setMaxResults(50);
        setStalldisp((List<Stalldisplay>) stdis.list());
         addActionMessage(" Product\t\t"+getPname()+"\t\tSuccesfully Removed");

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
     * @return the displayid
     */
    public long getDisplayid() {
        return displayid;
    }

    /**
     * @param displayid the displayid to set
     */
    public void setDisplayid(long displayid) {
        this.displayid = displayid;
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
     * @return the prod
     */
    public Product getProd() {
        return prod;
    }

    /**
     * @param prod the prod to set
     */
    public void setProd(Product prod) {
        this.prod = prod;
    }

    /**
     * @return the dispstall
     */
    public Stalldisplay getDispstall() {
        return dispstall;
    }

    /**
     * @param dispstall the dispstall to set
     */
    public void setDispstall(Stalldisplay dispstall) {
        this.dispstall = dispstall;
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

    /**
     * @return the pname
     */
    public String getPname() {
        return pname;
    }

    /**
     * @param pname the pname to set
     */
    public void setPname(String pname) {
        this.pname = pname;
    }
}
