/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.Product;
import model.Show;
import model.Stall;
import model.User;
import org.hibernate.Criteria;

/**
 *
 * @author Administrator
 */
public class changestatus extends ActionSupport {

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
    private User user;
    private Stall stall;
    private Show show;
    private Product pro;
    private static userEnum ut;
    private int showid;
    private long stallid;
    private long productid;
    private spDAO myDao;
    private String status;
    private List<Show> showlist;
    private List<Stall> stalllist;
    private List<Product> prodlist;

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
        Criteria allshow = myDao.getDbsession().createCriteria(Show.class);
        allshow.setMaxResults(50);
        showlist = allshow.list();
        Criteria allstall = myDao.getDbsession().createCriteria(Stall.class);
        allstall.setMaxResults(50);
        stalllist = allstall.list();
        Criteria allprod = myDao.getDbsession().createCriteria(Product.class);
        allprod.setMaxResults(100);
        prodlist = allprod.list();
        show = (Show) myDao.getDbsession().get(Show.class, showid);
        if (status.equals(userEnum.Active.getUserType())) 
        {
            show.setStatus(userEnum.Suspend.getUserType());
            myDao.getDbsession().update(show);
        } else {
            show.setStatus(userEnum.Active.getUserType());
            myDao.getDbsession().update(show);
        }
        return "success";
    }

    
    public String stallst() throws Exception {
        
         Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
        Criteria allshow = myDao.getDbsession().createCriteria(Show.class);
        allshow.setMaxResults(50);
        showlist = allshow.list();
        Criteria allstall = myDao.getDbsession().createCriteria(Stall.class);
        allstall.setMaxResults(50);
        stalllist = allstall.list();
        Criteria allprod = myDao.getDbsession().createCriteria(Product.class);
        allprod.setMaxResults(100);
        prodlist = allprod.list();
        stall = (Stall) myDao.getDbsession().get(Stall.class, stallid);
        if (status.equals(userEnum.Active.getUserType())) {
            stall.setStatus(userEnum.Suspend.getUserType());
            myDao.getDbsession().update(stall);
        } else {
            stall.setStatus(userEnum.Active.getUserType());
            myDao.getDbsession().update(stall);
        }
    return "success";
     }
    public String prodst() throws Exception {
        
         Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
        Criteria allshow = myDao.getDbsession().createCriteria(Show.class);
        allshow.setMaxResults(50);
        showlist = allshow.list();
        Criteria allstall = myDao.getDbsession().createCriteria(Stall.class);
        allstall.setMaxResults(50);
        stalllist = allstall.list();
        Criteria allprod = myDao.getDbsession().createCriteria(Product.class);
        allprod.setMaxResults(100);
        prodlist = allprod.list();
        pro = (Product) myDao.getDbsession().get(Product.class, productid);
        if (status.equals(userEnum.Active.getUserType())) {
            pro.setStatus(userEnum.Suspend.getUserType());
            myDao.getDbsession().update(pro);
        } else {
            pro.setStatus(userEnum.Active.getUserType());
            myDao.getDbsession().update(pro);
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
     * @return the showid
     */
    public int getShowid() {
        return showid;
    }

    /**
     * @param showid the showid to set
     */
    public void setShowid(int showid) {
        this.showid = showid;
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
