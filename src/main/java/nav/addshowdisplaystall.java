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
public class addshowdisplaystall extends ActionSupport {
   
    
    private int x1;
    private int x2;
    private int y1;
    private int y2;
    private int showid;
    private User user;
    private Stall stall;
    private Show show;
    private List<Stall> stalllist;
    private List<Showdisplay> showdisp;
    private spDAO myDao;
    private List<String> stl;
    private String stname;
    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
       
        Criteria cri=myDao.getDbsession().createCriteria(Show.class);
        cri.add(Restrictions.eq("showId", showid));
        cri.setMaxResults(1);
        show=(Show)(cri.list().get(0));
        Criteria sta=myDao.getDbsession().createCriteria(Stall.class);
        sta.add(Restrictions.eq("stallname", stname));
        sta.setMaxResults(1);
        stall=(Stall)(sta.list().get(0));
        Showdisplay disp=new Showdisplay(show,stall,x1,x2,y1,y2);
        myDao.getDbsession().save(disp);
        addActionMessage(stname+ "\t\tStall Position Successfully Added");
        Criteria shdis=myDao.getDbsession().createCriteria(Showdisplay.class);
        shdis.add(Restrictions.eq("show", show));
        shdis.setMaxResults(50);
        showdisp=shdis.list();
        Criteria stcr=myDao.getDbsession().createCriteria(Stall.class);
        stcr.add(Restrictions.eq("show", show));
        stcr.setMaxResults(50);
        stalllist=stcr.list();
        stl=new ArrayList<String>();
        for(int i=1;i<stalllist.size();i++){
        stl.add(stalllist.get(i).getStallname());
        }
        return "success";
    }

    /**
     * @return the x1
     */
    public int getX1() {
        return x1;
    }

    /**
     * @param x1 the x1 to set
     */
    public void setX1(int x1) {
        this.x1 = x1;
    }

    /**
     * @return the x2
     */
    public int getX2() {
        return x2;
    }

    /**
     * @param x2 the x2 to set
     */
    public void setX2(int x2) {
        this.x2 = x2;
    }

    /**
     * @return the y1
     */
    public int getY1() {
        return y1;
    }

    /**
     * @param y1 the y1 to set
     */
    public void setY1(int y1) {
        this.y1 = y1;
    }

    /**
     * @return the y2
     */
    public int getY2() {
        return y2;
    }

    /**
     * @param y2 the y2 to set
     */
    public void setY2(int y2) {
        this.y2 = y2;
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

    /**
     * @return the stname
     */
    public String getStname() {
        return stname;
    }

    /**
     * @param stname the stname to set
     */
    public void setStname(String stname) {
        this.stname = stname;
    }
}
