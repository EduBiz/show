package model;
// Generated Dec 7, 2011 4:20:30 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Stall generated by hbm2java
 */
public class Stall  implements java.io.Serializable {


     private Long stallId;
     private Show show;
     private User user;
     private Double ppc1;
     private Double ppc2;
     private Double ppc3;
     private Date analytics;
     private String stallname;
     private String description;
     private String category;
     private Integer approve;
     private String delivarytype;
     private Integer x1;
     private Integer x2;
     private Integer y1;
     private Integer y2;
     private String note;
     private Integer fflag1;
     private Integer fflag2;
     private Integer fflag3;
     private String status;
     private Set<Stallimage> stallimages = new HashSet<Stallimage>(0);
     private Set<Stalldisplay> stalldisplaies = new HashSet<Stalldisplay>(0);
     private Set<Visitor> visitors = new HashSet<Visitor>(0);

    public Stall() {
    }

	
    public Stall(Show show, User user, String stallname) {
        this.show = show;
        this.user = user;
        this.stallname = stallname;
    }
    public Stall(Show show, User user, Double ppc1, Double ppc2, Double ppc3, Date analytics, String stallname, String description, String category, Integer approve, String delivarytype, Integer x1, Integer x2, Integer y1, Integer y2, String note, Integer fflag1, Integer fflag2, Integer fflag3, String status, Set<Stallimage> stallimages, Set<Stalldisplay> stalldisplaies, Set<Visitor> visitors) {
       this.show = show;
       this.user = user;
       this.ppc1 = ppc1;
       this.ppc2 = ppc2;
       this.ppc3 = ppc3;
       this.analytics = analytics;
       this.stallname = stallname;
       this.description = description;
       this.category = category;
       this.approve = approve;
       this.delivarytype = delivarytype;
       this.x1 = x1;
       this.x2 = x2;
       this.y1 = y1;
       this.y2 = y2;
       this.note = note;
       this.fflag1 = fflag1;
       this.fflag2 = fflag2;
       this.fflag3 = fflag3;
       this.status = status;
       this.stallimages = stallimages;
       this.stalldisplaies = stalldisplaies;
       this.visitors = visitors;
    }
   
    public Long getStallId() {
        return this.stallId;
    }
    
    public void setStallId(Long stallId) {
        this.stallId = stallId;
    }
    public Show getShow() {
        return this.show;
    }
    
    public void setShow(Show show) {
        this.show = show;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
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
    public Double getPpc3() {
        return this.ppc3;
    }
    
    public void setPpc3(Double ppc3) {
        this.ppc3 = ppc3;
    }
    public Date getAnalytics() {
        return this.analytics;
    }
    
    public void setAnalytics(Date analytics) {
        this.analytics = analytics;
    }
    public String getStallname() {
        return this.stallname;
    }
    
    public void setStallname(String stallname) {
        this.stallname = stallname;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getCategory() {
        return this.category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
    public Integer getApprove() {
        return this.approve;
    }
    
    public void setApprove(Integer approve) {
        this.approve = approve;
    }
    public String getDelivarytype() {
        return this.delivarytype;
    }
    
    public void setDelivarytype(String delivarytype) {
        this.delivarytype = delivarytype;
    }
    public Integer getX1() {
        return this.x1;
    }
    
    public void setX1(Integer x1) {
        this.x1 = x1;
    }
    public Integer getX2() {
        return this.x2;
    }
    
    public void setX2(Integer x2) {
        this.x2 = x2;
    }
    public Integer getY1() {
        return this.y1;
    }
    
    public void setY1(Integer y1) {
        this.y1 = y1;
    }
    public Integer getY2() {
        return this.y2;
    }
    
    public void setY2(Integer y2) {
        this.y2 = y2;
    }
    public String getNote() {
        return this.note;
    }
    
    public void setNote(String note) {
        this.note = note;
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
    public Integer getFflag3() {
        return this.fflag3;
    }
    
    public void setFflag3(Integer fflag3) {
        this.fflag3 = fflag3;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Set<Stallimage> getStallimages() {
        return this.stallimages;
    }
    
    public void setStallimages(Set<Stallimage> stallimages) {
        this.stallimages = stallimages;
    }
    public Set<Stalldisplay> getStalldisplaies() {
        return this.stalldisplaies;
    }
    
    public void setStalldisplaies(Set<Stalldisplay> stalldisplaies) {
        this.stalldisplaies = stalldisplaies;
    }
    public Set<Visitor> getVisitors() {
        return this.visitors;
    }
    
    public void setVisitors(Set<Visitor> visitors) {
        this.visitors = visitors;
    }




}


