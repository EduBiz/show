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
public class updateproduct extends ActionSupport {

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
    private long productid;
    private String pname;
    private double vat;
    private BigDecimal price;
    private BigDecimal postage;
    private String deltime;
    private String desc;
    private long qty;
    private long sold;
    private spDAO myDao;
    private static userEnum ut;
    private List<Product> prodcheck;
    private User user;
    private Product product;
    private Productimage pimg;
    private File imag;
    private List<Product> prodlist;
    private Stall stall;
    private File img2;
    private File img3;

    @Override
    public void validate() {


        if (getDeltime().equals("Please select")) {
            addFieldError("deltime", "Please Select Delivary Time");

        }



    }

    @Override
    public String execute() throws Exception {
        try {


            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("user"));
            Date date=new Date();
            System.out.println("Time\t\t" + getDeltime() + "\t\t");
            setProduct((Product) getMyDao().getDbsession().get(Product.class, getProductid()));
            getProduct().setUser(getUser());
            getProduct().setName(getPname());
            getProduct().setDelivaryTime(getDeltime());
            getProduct().setDescription(getDesc());
            getProduct().setQty(getQty());
            getProduct().setVat(getVat());
            getProduct().setPrice(getPrice());
            getProduct().setPostage(getPostage());
            getProduct().setUnitsSold(getSold());
            getProduct().setStatus(userEnum.Active.getUserType());
            getProduct().setDate(date);
            getMyDao().getDbsession().update(getProduct());

            if (getImag() != null) {


                byte[] bimg = new byte[(int) getImag().length()];
                  byte[] bimg2 = new byte[(int) getImg2().length()];
                byte[] bimg3 = new byte[(int) getImg3().length()];

                FileInputStream flogo = new FileInputStream(getImag());
                 FileInputStream fim1 = new FileInputStream(getImg2());
                FileInputStream fim2 = new FileInputStream(getImg3());
                flogo.read(bimg);
                fim1.read(bimg2);
                fim2.read(bimg3);
               
                setPimg(new Productimage(getProductid(), getProduct()));

                getPimg().setImagefile(bimg);
                 getPimg().setImg2(bimg2);
                getPimg().setImg3(bimg3);
                getMyDao().getDbsession().saveOrUpdate(getPimg());
            } else {
            }
            Criteria pro = getMyDao().getDbsession().createCriteria(Product.class);
            pro.add(Restrictions.eq("user", getUser()));
            pro.setMaxResults(50);
            setProdlist((List<Product>) pro.list());
            addActionMessage("Product \t"+ getPname() +"\tSuccessfully Updated");

            return "success";
        } catch (Exception e) {
            addActionError("error" + e.getMessage());
            e.printStackTrace();
            return "error";
        }
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
     * @return the prodcheck
     */
    public List<Product> getProdcheck() {
        return prodcheck;
    }

    /**
     * @param prodcheck the prodcheck to set
     */
    public void setProdcheck(List<Product> prodcheck) {
        this.prodcheck = prodcheck;
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

    /**
     * @return the img2
     */
    public File getImg2() {
        return img2;
    }

    /**
     * @param img2 the img2 to set
     */
    public void setImg2(File img2) {
        this.img2 = img2;
    }

    /**
     * @return the img3
     */
    public File getImg3() {
        return img3;
    }

    /**
     * @param img3 the img3 to set
     */
    public void setImg3(File img3) {
        this.img3 = img3;
    }

  
}
