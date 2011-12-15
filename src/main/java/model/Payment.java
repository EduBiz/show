package model;
// Generated Dec 15, 2011 4:01:57 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Payment generated by hbm2java
 */
public class Payment  implements java.io.Serializable {


     private Long paymentId;
     private String cardname;
     private String cardno;
     private String cardtype;
     private String validfrom;
     private String expiry;
     private String cardholdername;
     private String delivaryAddress;
     private String postcode;
     private BigDecimal amount;
     private Date saledate;
     private Set<Basket> baskets = new HashSet<Basket>(0);

    public Payment() {
    }

	
    public Payment(String cardname, String cardno, String cardtype, String validfrom, String expiry, String cardholdername, BigDecimal amount, Date saledate) {
        this.cardname = cardname;
        this.cardno = cardno;
        this.cardtype = cardtype;
        this.validfrom = validfrom;
        this.expiry = expiry;
        this.cardholdername = cardholdername;
        this.amount = amount;
        this.saledate = saledate;
    }
    public Payment(String cardname, String cardno, String cardtype, String validfrom, String expiry, String cardholdername, String delivaryAddress, String postcode, BigDecimal amount, Date saledate, Set<Basket> baskets) {
       this.cardname = cardname;
       this.cardno = cardno;
       this.cardtype = cardtype;
       this.validfrom = validfrom;
       this.expiry = expiry;
       this.cardholdername = cardholdername;
       this.delivaryAddress = delivaryAddress;
       this.postcode = postcode;
       this.amount = amount;
       this.saledate = saledate;
       this.baskets = baskets;
    }
   
    public Long getPaymentId() {
        return this.paymentId;
    }
    
    public void setPaymentId(Long paymentId) {
        this.paymentId = paymentId;
    }
    public String getCardname() {
        return this.cardname;
    }
    
    public void setCardname(String cardname) {
        this.cardname = cardname;
    }
    public String getCardno() {
        return this.cardno;
    }
    
    public void setCardno(String cardno) {
        this.cardno = cardno;
    }
    public String getCardtype() {
        return this.cardtype;
    }
    
    public void setCardtype(String cardtype) {
        this.cardtype = cardtype;
    }
    public String getValidfrom() {
        return this.validfrom;
    }
    
    public void setValidfrom(String validfrom) {
        this.validfrom = validfrom;
    }
    public String getExpiry() {
        return this.expiry;
    }
    
    public void setExpiry(String expiry) {
        this.expiry = expiry;
    }
    public String getCardholdername() {
        return this.cardholdername;
    }
    
    public void setCardholdername(String cardholdername) {
        this.cardholdername = cardholdername;
    }
    public String getDelivaryAddress() {
        return this.delivaryAddress;
    }
    
    public void setDelivaryAddress(String delivaryAddress) {
        this.delivaryAddress = delivaryAddress;
    }
    public String getPostcode() {
        return this.postcode;
    }
    
    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }
    public BigDecimal getAmount() {
        return this.amount;
    }
    
    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }
    public Date getSaledate() {
        return this.saledate;
    }
    
    public void setSaledate(Date saledate) {
        this.saledate = saledate;
    }
    public Set<Basket> getBaskets() {
        return this.baskets;
    }
    
    public void setBaskets(Set<Basket> baskets) {
        this.baskets = baskets;
    }




}


