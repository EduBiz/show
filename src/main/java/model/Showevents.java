package model;
// Generated Dec 15, 2011 4:01:57 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Showevents generated by hbm2java
 */
public class Showevents  implements java.io.Serializable {


     private Integer eventid;
     private Show show;
     private String venue;
     private Date showdate;

    public Showevents() {
    }

    public Showevents(Show show, String venue, Date showdate) {
       this.show = show;
       this.venue = venue;
       this.showdate = showdate;
    }
   
    public Integer getEventid() {
        return this.eventid;
    }
    
    public void setEventid(Integer eventid) {
        this.eventid = eventid;
    }
    public Show getShow() {
        return this.show;
    }
    
    public void setShow(Show show) {
        this.show = show;
    }
    public String getVenue() {
        return this.venue;
    }
    
    public void setVenue(String venue) {
        this.venue = venue;
    }
    public Date getShowdate() {
        return this.showdate;
    }
    
    public void setShowdate(Date showdate) {
        this.showdate = showdate;
    }




}


