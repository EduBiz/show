/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class editproduct extends ActionSupport {

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
    private String pname;
    private long productid;
    private double vat;
    private BigDecimal price;
    private BigDecimal postage;
    private String deltime;
    private String desc;
    private long qty;
    private long sold;
    private spDAO myDao;
    private static userEnum ut;
    private User user;
    private Product product;
    private Productimage pimg;
    private File imag;
    private List<Product> prodlist;
    private long productId;
    private Stall stall;
    @Override
    public String execute() throws Exception {



        return "success";
    }

    public String deletepro() throws Exception {
        Map session = ActionContext.getContext().getSession();
        user = (User) session.get("user");
        Date date=new Date();
        product=(Product)myDao.getDbsession().get(Product.class, productId);
        
        DeletedProduct delpr=new DeletedProduct(product.getProductId(),user,product.getName(),product.getVat(),product.getPrice(),product.getPostage(),product.getDelivaryTime(),product.getUnitsSold(),product.getQty(),date);
        myDao.getDbsession().save(delpr);
        
        myDao.getDbsession().delete(product);
        
        
        Criteria pro = myDao.getDbsession().createCriteria(Product.class);
        pro.add(Restrictions.eq("user", user));
        pro.setMaxResults(50);
        prodlist = (List<Product>) pro.list();
        addActionMessage("Product\t"+product.getName()+"\t successfully deleted");
        return "success";
    }

    /**
     * @return the pname
     */
    public String getPname() {
        return pname;
    }

    /**
     * @param pname the pname to set
     */
    public void setPname(String pname) {
        this.pname = pname;
    }

   

    /**
     * @return the vat
     */
    public double getVat() {
        return vat;
    }

    /**
     * @param vat the vat to set
     */
    public void setVat(double vat) {
        this.vat = vat;
    }

    /**
     * @return the price
     */
    public BigDecimal getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    /**
     * @return the postage
     */
    public BigDecimal getPostage() {
        return postage;
    }

    /**
     * @param postage the postage to set
     */
    public void setPostage(BigDecimal postage) {
        this.postage = postage;
    }

    /**
     * @return the deltime
     */
    public String getDeltime() {
        return deltime;
    }

    /**
     * @param deltime the deltime to set
     */
    public void setDeltime(String deltime) {
        this.deltime = deltime;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * @return the qty
     */
    public long getQty() {
        return qty;
    }

    /**
     * @param qty the qty to set
     */
    public void setQty(long qty) {
        this.qty = qty;
    }

    /**
     * @return the sold
     */
    public long getSold() {
        return sold;
    }

    /**
     * @param sold the sold to set
     */
    public void setSold(long sold) {
        this.sold = sold;
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
     * @return the product
     */
    public Product getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(Product product) {
        this.product = product;
    }

    /**
     * @return the pimg
     */
    public Productimage getPimg() {
        return pimg;
    }

    /**
     * @param pimg the pimg to set
     */
    public void setPimg(Productimage pimg) {
        this.pimg = pimg;
    }

    /**
     * @return the imag
     */
    public File getImag() {
        return imag;
    }

    /**
     * @param imag the imag to set
     */
    public void setImag(File imag) {
        this.imag = imag;
    }

    /**
     * @return the prodlist
     */
    public List<Product> getProdlist() {
        return prodlist;
    }

    /**
     * @param prodlist the prodlist to set
     */
    public void setProdlist(List<Product> prodlist) {
        this.prodlist = prodlist;
    }

    /**
     * @return the productid
     */
    public long getProductid() {
        return productid;
    }

    /**
     * @param productid the productid to set
     */
    public void setProductid(long productid) {
        this.productid = productid;
    }

    /**
     * @return the productId
     */
    public long getProductId() {
        return productId;
    }

    /**
     * @param productId the productId to set
     */
    public void setProductId(long productId) {
        this.productId = productId;
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
}
