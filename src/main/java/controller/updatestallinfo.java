/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.hibernate.HibernateException;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class updatestallinfo extends ActionSupport {

    private spDAO myDao;
    private User user;
    private Stall stall;
    private Long stallId;
    private Show show;
    private String stallname;
    private String description;
    private String category;
    private int approve;
    private String delivarytype;
    private String note;
    private List<Stall> stalllist;
    private File logo;
    private File ban;
    private File img;

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
        Criteria cstall = myDao.getDbsession().createCriteria(Stall.class);
        cstall.add(Restrictions.eq("stallId", stallId));
        cstall.setMaxResults(1);
        stall = (Stall) (cstall.list().get(0));

        try {

            stall = (Stall) myDao.getDbsession().get(Stall.class, stallId);
            stall.setStallname(stallname);
            stall.setDescription(description);
            stall.setNote(note);
            stall.setApprove(getApprove());
            stall.setCategory(category);
            stall.setDelivarytype(delivarytype);
            myDao.getDbsession().saveOrUpdate(stall);
            
            if(logo!=null){
            byte[] blogo = new byte[(int) getLogo().length()];
            byte[] bimg = new byte[(int) img.length()];
            byte[] ban1 = new byte[(int) getBan().length()];


            FileInputStream flogo;
            FileInputStream fban;
            FileInputStream fimg;

            flogo = new FileInputStream(getLogo());
            fban = new FileInputStream(getBan());
            fimg = new FileInputStream(img);

            flogo.read(blogo);
            fban.read(ban1);
            fimg.read(bimg);
            Stallimage stallimg = new Stallimage(getStall().getStallId(), getStall());
            stallimg.setBanimage(ban1);
            stallimg.setLogo(blogo);
            stallimg.setImg(bimg);
            getMyDao().getDbsession().saveOrUpdate(stallimg);
            }
            else{}
            addActionMessage(stall.getStallname() + "\t\tSales Outlet information Successfully Updated ");
            Criteria stcri = getMyDao().getDbsession().createCriteria(Stall.class);
            stcri.add(Restrictions.eq("user", user));
            stcri.setMaxResults(50);
            setStalllist((List<Stall>) stcri.list());
            return "success";

        } catch (HibernateException e) {
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
     * @return the stallId
     */
    public Long getStallId() {
        return stallId;
    }

    /**
     * @param stallId the stallId to set
     */
    public void setStallId(Long stallId) {
        this.stallId = stallId;
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

    /**
     * @return the stallname
     */
    public String getStallname() {
        return stallname;
    }

    /**
     * @param stallname the stallname to set
     */
    public void setStallname(String stallname) {
        this.stallname = stallname;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the delivarytype
     */
    public String getDelivarytype() {
        return delivarytype;
    }

    /**
     * @param delivarytype the delivarytype to set
     */
    public void setDelivarytype(String delivarytype) {
        this.delivarytype = delivarytype;
    }

    /**
     * @return the note
     */
    public String getNote() {
        return note;
    }

    /**
     * @param note the note to set
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * @return the stalllist
     */
    public List<Stall> getStalllist() {
        return stalllist;
    }

    /**
     * @param stalllist the stalllist to set
     */
    public void setStalllist(List<Stall> stalllist) {
        this.stalllist = stalllist;
    }

    /**
     * @return the logo
     */
    public File getLogo() {
        return logo;
    }

    /**
     * @param logo the logo to set
     */
    public void setLogo(File logo) {
        this.logo = logo;
    }

    /**
     * @return the ban
     */
    public File getBan() {
        return ban;
    }

    /**
     * @param ban the ban to set
     */
    public void setBan(File ban) {
        this.ban = ban;
    }

    /**
     * @return the approve
     */
    public int getApprove() {
        return approve;
    }

    /**
     * @param approve the approve to set
     */
    public void setApprove(int approve) {
        this.approve = approve;
    }

    /**
     * @return the img
     */
    public File getImg() {
        return img;
    }

    /**
     * @param img the img to set
     */
    public void setImg(File img) {
        this.img = img;
    }
}
