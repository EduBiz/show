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
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class showdisplaymanage extends ActionSupport {

    private int showid;
    private User user;
    private Stall stall;
    private Show show;
    private List<Stall> stalllist;
    private List<Showdisplay> showdisp;
    private spDAO myDao;
    private List<String> stl;

    @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
        
        Criteria cri=myDao.getDbsession().createCriteria(Show.class);
        cri.add(Restrictions.eq("showId", showid));
        cri.setMaxResults(1);
        show=(Show)(cri.list().get(0));
        Criteria shdis=myDao.getDbsession().createCriteria(Showdisplay.class);
        shdis.add(Restrictions.eq("show", show));
        shdis.setMaxResults(50);
        showdisp=shdis.list();
        Criteria stcr=myDao.getDbsession().createCriteria(Stall.class);
        stcr.add(Restrictions.eq("show", show));
        stcr.setMaxResults(50);
        stalllist=stcr.list();
        stl=new ArrayList<String>();
        for(int i=0;i<stalllist.size();i++){
        stl.add(stalllist.get(i).getStallname());
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
     * @return the showdisp
     */
    public List<Showdisplay> getShowdisp() {
        return showdisp;
    }

    /**
     * @param showdisp the showdisp to set
     */
    public void setShowdisp(List<Showdisplay> showdisp) {
        this.showdisp = showdisp;
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
     * @return the stl
     */
    public List<String> getStl() {
        return stl;
    }

    /**
     * @param stl the stl to set
     */
    public void setStl(List<String> stl) {
        this.stl = stl;
    }
}
