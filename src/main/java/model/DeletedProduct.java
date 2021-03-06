package model;
// Generated Dec 20, 2011 5:51:56 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;
import java.util.Date;

/**
 * DeletedProduct generated by hbm2java
 */
public class DeletedProduct  implements java.io.Serializable {


     private long productId;
     private User user;
     private String name;
     private double vat;
     private BigDecimal price;
     private BigDecimal postage;
     private String delivaryTime;
     private String description;
     private long unitsSold;
     private long qty;
     private Integer fflag;
     private String status;
     private Date date;

    public DeletedProduct() {
    }

	
    public DeletedProduct(long productId, User user, String name, double vat, BigDecimal price, BigDecimal postage, String delivaryTime, long unitsSold, long qty, Date date) {
        this.productId = productId;
        this.user = user;
        this.name = name;
        this.vat = vat;
        this.price = price;
        this.postage = postage;
        this.delivaryTime = delivaryTime;
        this.unitsSold = unitsSold;
        this.qty = qty;
        this.date = date;
    }
    public DeletedProduct(long productId, User user, String name, double vat, BigDecimal price, BigDecimal postage, String delivaryTime, String description, long unitsSold, long qty, Integer fflag, String status, Date date) {
       this.productId = productId;
       this.user = user;
       this.name = name;
       this.vat = vat;
       this.price = price;
       this.postage = postage;
       this.delivaryTime = delivaryTime;
       this.description = description;
       this.unitsSold = unitsSold;
       this.qty = qty;
       this.fflag = fflag;
       this.status = status;
       this.date = date;
    }
   
    public long getProductId() {
        return this.productId;
    }
    
    public void setProductId(long productId) {
        this.productId = productId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public double getVat() {
        return this.vat;
    }
    
    public void setVat(double vat) {
        this.vat = vat;
    }
    public BigDecimal getPrice() {
        return this.price;
    }
    
    public void setPrice(BigDecimal price) {
        this.price = price;
    }
    public BigDecimal getPostage() {
        return this.postage;
    }
    
    public void setPostage(BigDecimal postage) {
        this.postage = postage;
    }
    public String getDelivaryTime() {
        return this.delivaryTime;
    }
    
    public void setDelivaryTime(String delivaryTime) {
        this.delivaryTime = delivaryTime;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public long getUnitsSold() {
        return this.unitsSold;
    }
    
    public void setUnitsSold(long unitsSold) {
        this.unitsSold = unitsSold;
    }
    public long getQty() {
        return this.qty;
    }
    
    public void setQty(long qty) {
        this.qty = qty;
    }
    public Integer getFflag() {
        return this.fflag;
    }
    
    public void setFflag(Integer fflag) {
        this.fflag = fflag;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }




}


