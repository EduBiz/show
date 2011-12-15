package model;
// Generated Dec 15, 2011 4:01:57 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Show generated by hbm2java
 */
public class Show  implements java.io.Serializable {


     private Integer showId;
     private User user;
     private Double showCommision;
     private Double siteCommision;
     private Double venueCommision;
     private Double ppc1;
     private Double ppc2;
     private Date analytics;
     private String showname;
     private String description;
     private String categories;
     private String showtype;
     private Integer approve;
     private Integer fflag1;
     private Integer fflag2;
     private String note;
     private String status;
     private Set<Showdisplay> showdisplaies = new HashSet<Showdisplay>(0);
     private Set<Showevents> showeventses = new HashSet<Showevents>(0);
     private Set<Stall> stalls = new HashSet<Stall>(0);
     private Set<Visitor> visitors = new HashSet<Visitor>(0);
     private Set<Showimage> showimages = new HashSet<Showimage>(0);

    public Show() {
    }

	
    public Show(User user, String showname) {
        this.user = user;
        this.showname = showname;
    }
    public Show(User user, Double showCommision, Double siteCommision, Double venueCommision, Double ppc1, Double ppc2, Date analytics, String showname, String description, String categories, String showtype, Integer approve, Integer fflag1, Integer fflag2, String note, String status, Set<Showdisplay> showdisplaies, Set<Showevents> showeventses, Set<Stall> stalls, Set<Visitor> visitors, Set<Showimage> showimages) {
       this.user = user;
       this.showCommision = showCommision;
       this.siteCommision = siteCommision;
       this.venueCommision = venueCommision;
       this.ppc1 = ppc1;
       this.ppc2 = ppc2;
       this.analytics = analytics;
       this.showname = showname;
       this.description = description;
       this.categories = categories;
       this.showtype = showtype;
       this.approve = approve;
       this.fflag1 = fflag1;
       this.fflag2 = fflag2;
       this.note = note;
       this.status = status;
       this.showdisplaies = showdisplaies;
       this.showeventses = showeventses;
       this.stalls = stalls;
       this.visitors = visitors;
       this.showimages = showimages;
    }
   
    public Integer getShowId() {
        return this.showId;
    }
    
    public void setShowId(Integer showId) {
        this.showId = showId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public Double getShowCommision() {
        return this.showCommision;
    }
    
    public void setShowCommision(Double showCommision) {
        this.showCommision = showCommision;
    }
    public Double getSiteCommision() {
        return this.siteCommision;
    }
    
    public void setSiteCommision(Double siteCommision) {
        this.siteCommision = siteCommision;
    }
    public Double getVenueCommision() {
        return this.venueCommision;
    }
    
    public void setVenueCommision(Double venueCommision) {
        this.venueCommision = venueCommision;
    }
    public Double getPpc1() {
        return this.ppc1;
    }
    
    public void setPpc1(Double ppc1) {
        this.ppc1 = ppc1;
    }
    public Double getPpc2() {
        return this.ppc2;
    }
    
    public void setPpc2(Double ppc2) {
        this.ppc2 = ppc2;
    }
    public Date getAnalytics() {
        return this.analytics;
    }
    
    public void setAnalytics(Date analytics) {
        this.analytics = analytics;
    }
    public String getShowname() {
        return this.showname;
    }
    
    public void setShowname(String showname) {
        this.showname = showname;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getCategories() {
        return this.categories;
    }
    
    public void setCategories(String categories) {
        this.categories = categories;
    }
    public String getShowtype() {
        return this.showtype;
    }
    
    public void setShowtype(String showtype) {
        this.showtype = showtype;
    }
    public Integer getApprove() {
        return this.approve;
    }
    
    public void setApprove(Integer approve) {
        this.approve = approve;
    }
    public Integer getFflag1() {
        return this.fflag1;
    }
    
    public void setFflag1(Integer fflag1) {
        this.fflag1 = fflag1;
    }
    public Integer getFflag2() {
        return this.fflag2;
    }
    
    public void setFflag2(Integer fflag2) {
        this.fflag2 = fflag2;
    }
    public String getNote() {
        return this.note;
    }
    
    public void setNote(String note) {
        this.note = note;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Set<Showdisplay> getShowdisplaies() {
        return this.showdisplaies;
    }
    
    public void setShowdisplaies(Set<Showdisplay> showdisplaies) {
        this.showdisplaies = showdisplaies;
    }
    public Set<Showevents> getShoweventses() {
        return this.showeventses;
    }
    
    public void setShoweventses(Set<Showevents> showeventses) {
        this.showeventses = showeventses;
    }
    public Set<Stall> getStalls() {
        return this.stalls;
    }
    
    public void setStalls(Set<Stall> stalls) {
        this.stalls = stalls;
    }
    public Set<Visitor> getVisitors() {
        return this.visitors;
    }
    
    public void setVisitors(Set<Visitor> visitors) {
        this.visitors = visitors;
    }
    public Set<Showimage> getShowimages() {
        return this.showimages;
    }
    
    public void setShowimages(Set<Showimage> showimages) {
        this.showimages = showimages;
    }




}


