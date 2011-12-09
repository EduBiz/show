/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import model.*;

/**
 *
 * @author Administrator
 */
public class stallinfo extends ActionSupport {

    private spDAO myDao;
    private User user;
    private Stall stall;
    private Long stallId;
    private Show show;
    private String stallname;
    private String description;
    private String category;
    private Integer approve;
    private String delivarytype;
    private String note;

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
        setStall((Stall) session.get("Stall"));

     
        return "success";
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
     * @return the approve
     */
    public Integer getApprove() {
        return approve;
    }

    /**
     * @param approve the approve to set
     */
    public void setApprove(Integer approve) {
        this.approve = approve;
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
}
