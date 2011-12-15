/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Administrator
 */
public class updateshowevents extends ActionSupport{
    
   private spDAO myDao;
   private Showevents events;
   private String venue;
   private Date showdate;
   private Show show;
   private User user;
   private int showid;
   private List<Show> showlist;
    private List<Showevents> showevents;
    @Override
    public String execute() throws Exception{
        Map session=ActionContext.getContext().getSession();
         setUser((User) session.get("user")); 
       
          try{
           Criteria sh=myDao.getDbsession().createCriteria(Show.class);  
           sh.add(Restrictions.eq("showId", showid));
           sh.setMaxResults(1);
           show=(Show)(sh.list().get(0));
          events=new Showevents(show,venue,showdate);
          myDao.getDbsession().saveOrUpdate(events);
          addActionMessage(venue+"\t\tvenue Successfully Added");
           Criteria shcri = getMyDao().getDbsession().createCriteria(Show.class);
            shcri.add(Restrictions.eq("user", user));
            shcri.setMaxResults(50);
            showlist=shcri.list();
            Criteria seve=myDao.getDbsession().createCriteria(Showevents.class);
           seve.add(Restrictions.eq("show", show));
           seve.setMaxResults(50);
           showevents=seve.list();
        return "success";
          }
          catch(HibernateException e)
          {
              addActionError(e.getMessage());
          return "error";
          }
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
     * @return the events
     */
    public Showevents getEvents() {
        return events;
    }

    /**
     * @param events the events to set
     */
    public void setEvents(Showevents events) {
        this.events = events;
    }

    /**
     * @return the venue
     */
    public String getVenue() {
        return venue;
    }

    /**
     * @param venue the venue to set
     */
    public void setVenue(String venue) {
        this.venue = venue;
    }

    /**
     * @return the showdate
     */
    public Date getShowdate() {
        return showdate;
    }

    /**
     * @param showdate the showdate to set
     */
    public void setShowdate(Date showdate) {
        this.showdate = showdate;
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
     * @return the showevents
     */
    public List<Showevents> getShowevents() {
        return showevents;
    }

    /**
     * @param showevents the showevents to set
     */
    public void setShowevents(List<Showevents> showevents) {
        this.showevents = showevents;
    }
}