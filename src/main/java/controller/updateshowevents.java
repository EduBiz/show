/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.Map;
import model.*;
import org.hibernate.HibernateException;
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
    @Override
    public String execute() throws Exception{
        Map session=ActionContext.getContext().getSession();
          setShow((Show)session.get("Show"));
          try{
          events=new Showevents(show,venue,showdate);
          myDao.getDbsession().saveOrUpdate(events);
          addActionMessage(venue+"\t\tvenue Successfully Added");
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
}