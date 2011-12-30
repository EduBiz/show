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
public class adminstallnav extends ActionSupport {

    private User user;
    private spDAO myDao;
    private Stall stall;
    private List<Stall> stalllist;

    @Override
    public String execute() throws Exception {

        Criteria allstall = myDao.getDbsession().createCriteria(Stall.class);
        allstall.setMaxResults(50);
        stalllist = allstall.list();

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
}
