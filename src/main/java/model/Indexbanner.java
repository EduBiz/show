package model;
// Generated Dec 2, 2011 5:59:28 PM by Hibernate Tools 3.2.1.GA



/**
 * Indexbanner generated by hbm2java
 */
public class Indexbanner  implements java.io.Serializable {


     private Long imageNo;
     private long imageId;
     private byte[] indeximage;
     private String location;
     private String type;

    public Indexbanner() {
    }

	
    public Indexbanner(long imageId) {
        this.imageId = imageId;
    }
    public Indexbanner(long imageId, byte[] indeximage, String location, String type) {
       this.imageId = imageId;
       this.indeximage = indeximage;
       this.location = location;
       this.type = type;
    }
   
    public Long getImageNo() {
        return this.imageNo;
    }
    
    public void setImageNo(Long imageNo) {
        this.imageNo = imageNo;
    }
    public long getImageId() {
        return this.imageId;
    }
    
    public void setImageId(long imageId) {
        this.imageId = imageId;
    }
    public byte[] getIndeximage() {
        return this.indeximage;
    }
    
    public void setIndeximage(byte[] indeximage) {
        this.indeximage = indeximage;
    }
    public String getLocation() {
        return this.location;
    }
    
    public void setLocation(String location) {
        this.location = location;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }




}


