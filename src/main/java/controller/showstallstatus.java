/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Administrator
 */
public class showstallstatus  extends ActionSupport {

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
      private spDAO myDao;
   private Show show;
   private User user;
   private int showid;
   private Stall stall;
   private List<Show> showlist;
   private List<Stall> stalllist;
   private static userEnum ut;
   private long stallid;
   private String status;
     @Override
    public String execute() throws Exception
    
    {
    Map session=ActionContext.getContext().getSession();
         setUser((User) session.get("user")); 

         Criteria sh=myDao.getDbsession().createCriteria(Show.class);  
           sh.add(Restrictions.eq("showId", showid));
           sh.setMaxResults(1);
           show=(Show)(sh.list().get(0));   
         Criteria st=myDao.getDbsession().createCriteria(Stall.class);
         st.add(Restrictions.eq("show", show));
         st.setMaxResults(50);
         stalllist=st.list();
         stall=(Stall)myDao.getDbsession().get(Stall.class, stallid);
         if(status.equals(userEnum.Active.getUserType()))
         {
         stall.setStatus(userEnum.Suspend.getUserType());
          myDao.getDbsession().update(stall);
         }
         else{
             stall.setStatus(userEnum.Active.getUserType());
             myDao.getDbsession().update(stall);
         }
         
         addActionMessage("One Sales Outlet Status Successfully Changed");
         return "success";
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