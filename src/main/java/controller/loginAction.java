/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

public class loginAction extends ActionSupport {

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
    private String email;
    private String passwd;
    private User user;
    private spDAO myDao;
    private Show show;
    private Stall stall;
    private static userEnum ut;
    private List<Show> showlist;
    private List<Stall> stalllist;
    private List<Product> prodlist;
    @Override
    public void validate() {
        Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
        ucri.add(Restrictions.or(Restrictions.eq("userName", email), Restrictions.eq("emailId", email)));
        ucri.setMaxResults(1);
        user = (User) (ucri.list().get(0));
    
        if (getUser() != null) {
            if (getUser().getPassword().equals(passwd)) {
            } else {
                addFieldError("passwd", "Invalid password");
            }
            if (user.getStatus().equals(ut.Act_User.getUserType())) {
            } else {
                addFieldError("email", "Your account not yet activated please check your mail for activation link ");
            }

        } else {
            addFieldError("email", "Invalid User Name/Email");
        }

    }

    @Override
    public String execute() throws Exception {


        Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
        ucri.add(Restrictions.or(Restrictions.eq("userName", email), Restrictions.eq("emailId", email)));
        ucri.setMaxResults(1);
        user = (User) (ucri.list().get(0));

        if (getUser().getPassword().equals(passwd) && getUser().getUserType().equals("admin") && user.getStatus().equals("Activated")) {

            Map session = ActionContext.getContext().getSession();
            session.put("user", getUser());
            Criteria allshow=myDao.getDbsession().createCriteria(Show.class);
            allshow.setMaxResults(50);
            showlist=allshow.list();
            Criteria allstall=myDao.getDbsession().createCriteria(Stall.class);
            allstall.setMaxResults(50);
            stalllist=allstall.list();
            Criteria allproduct=myDao.getDbsession().createCriteria(Product.class);
            allproduct.setMaxResults(50);
            prodlist=allproduct.list();
            return "admin";
            

        } else if (getUser().getPassword().equals(passwd) && getUser().getUserType().equals("show") && user.getStatus().equals("Activated")) {
            Criteria shcri = getMyDao().getDbsession().createCriteria(Show.class);
            shcri.add(Restrictions.eq("user", user));
            shcri.setMaxResults(50);
           // show = (Show) (shcri.list().get(0));
            showlist=shcri.list();
            Map session = ActionContext.getContext().getSession();
            session.put("user", getUser());
           // session.put("Show", show);
            return "show";
        } else if (getUser().getPassword().equals(passwd) && getUser().getUserType().equals("stall") && user.getStatus().equals("Activated")) {
            Criteria stcri = getMyDao().getDbsession().createCriteria(Stall.class);
            stcri.add(Restrictions.eq("user", user));
            stcri.setMaxResults(50);
           // stall = (Stall) (stcri.list().get(0));
            stalllist=stcri.list();
            Map session = ActionContext.getContext().getSession();
            session.put("user", getUser());
           // session.put("Stall", stall);
            return "stall";
        } else {
            return "error";
        }



    }

    /**
     * @return the passwd
     */
    public String getPasswd() {
        return passwd;
    }

    /**
     * @param passwd the passwd to set
     */
    public void setPasswd(String passwd) {
        this.passwd = passwd;
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
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
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