package model;
// Generated Dec 7, 2011 4:20:30 PM by Hibernate Tools 3.2.1.GA



/**
 * Productimage generated by hbm2java
 */
public class Productimage  implements java.io.Serializable {


     private long prodId;
     private Product product;
     private byte[] imagefile;

    public Productimage() {
    }

	
    public Productimage(long prodId, Product product) {
        this.prodId = prodId;
        this.product = product;
    }
    public Productimage(long prodId, Product product, byte[] imagefile) {
       this.prodId = prodId;
       this.product = product;
       this.imagefile = imagefile;
    }
   
    public long getProdId() {
        return this.prodId;
    }
    
    public void setProdId(long prodId) {
        this.prodId = prodId;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public byte[] getImagefile() {
        return this.imagefile;
    }
    
    public void setImagefile(byte[] imagefile) {
        this.imagefile = imagefile;
    }




}


