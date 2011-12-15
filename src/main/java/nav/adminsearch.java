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
import model.Product;
import model.Show;
import model.Stall;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class adminsearch extends ActionSupport {

    private User user;
    private Stall stall;
    private Show show;
    private Product pro;
    private spDAO myDao;
    private String search;
    private List<Show> showlist;
    private List<Stall> stalllist;
    private List<Product> prodlist;

    @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        user = (User) session.get("user");

        Criteria prod = getMyDao().getDbsession().createCriteria(Product.class);
        prod.add(Restrictions.like("name", getSearch() + "%"));
        prod.setMaxResults(50);
        setProdlist((List<Product>) prod.list());
        Criteria allshow = myDao.getDbsession().createCriteria(Show.class);
        allshow.setMaxResults(50);
        showlist = allshow.list();
        Criteria allstall = myDao.getDbsession().createCriteria(Stall.class);
        allstall.setMaxResults(50);
        stalllist = allstall.list();

        addActionMessage(prodlist.size() + "\t\tResults Found");
        return "success";



    }

    public String stallser() throws Exception {
        Map session = ActionContext.getContext().getSession();
        user = (User) session.get("user");


        Criteria allstall = myDao.getDbsession().createCriteria(Stall.class);
        allstall.add(Restrictions.like("stallname", getSearch() + "%"));
        allstall.setMaxResults(50);
        stalllist = allstall.list();
        Criteria allshow = myDao.getDbsession().createCriteria(Show.class);
        allshow.setMaxResults(50);
        showlist = allshow.list();
        Criteria allprod = myDao.getDbsession().createCriteria(Product.class);
        allprod.setMaxResults(100);
        prodlist = allprod.list();
        addActionMessage(stalllist.size() + "\t\tResults Found");

        return "success";
    }

    public String showser() throws Exception {

        Criteria allshow = myDao.getDbsession().createCriteria(Show.class);
        allshow.add(Restrictions.like("showname", getSearch() + "%"));
        allshow.setMaxResults(50);
        showlist = allshow.list();
        Criteria allstall = myDao.getDbsession().createCriteria(Stall.class);
        allstall.setMaxResults(50);
        stalllist = allstall.list();
        Criteria allprod = myDao.getDbsession().createCriteria(Product.class);
        allprod.setMaxResults(100);
        prodlist = allprod.list();
        addActionMessage(showlist.size() + "\t\tResults Found");
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
