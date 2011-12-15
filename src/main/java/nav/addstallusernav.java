/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class addstallusernav extends ActionSupport {

    private int showid;
    private List<User> stalluserlist;
    private List<String> use;
    private spDAO myDao;

    @Override
    public String execute() throws Exception {
        Criteria stu = getMyDao().getDbsession().createCriteria(User.class);
        stu.add(Restrictions.eq("userType", "stall"));
        stu.setMaxResults(50);
        setStalluserlist((List<User>) stu.list());
        setUse((List<String>) new ArrayList());
        for (int i = 1; i < getStalluserlist().size(); i++) {
            getUse().add(getStalluserlist().get(i).getEmailId());
        }
        return "success";
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
     * @return the stalluserlist
     */
    public List<User> getStalluserlist() {
        return stalluserlist;
    }

    /**
     * @param stalluserlist the stalluserlist to set
     */
    public void setStalluserlist(List<User> stalluserlist) {
        this.stalluserlist = stalluserlist;
    }

    /**
     * @return the use
     */
    public List<String> getUse() {
        return use;
    }

    /**
     * @param use the use to set
     */
    public void setUse(List<String> use) {
        this.use = use;
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
}
