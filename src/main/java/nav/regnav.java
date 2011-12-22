/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;

import org.hibernate.HibernateException;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class regnav extends ActionSupport {

    private User user;
    private spDAO myDao;

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));

        if (user.getUserType().equals("stall")) {
            return "stall";
        } else if (user.getUserType().equals("show")) {
            return "show";
        } else {
            return "admin";
        }
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
}
