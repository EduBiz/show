/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class showinfo extends ActionSupport {

    private spDAO myDao;
    private User user;
    private Show show;
    private Integer showId;
    private Double showCommision;
    private Double siteCommision;
    private Double venueCommision;
    private String showname;
    private String description;
    private String categories;
    private String showtype;
    private Integer approve;
    private String note;

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        user = (User) session.get("user");

        Criteria scri = myDao.getDbsession().createCriteria(Show.class);
        scri.add(Restrictions.eq("user", user));
        scri.setMaxResults(1);
        show = (Show) (scri.list()).get(0);

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
     * @return the showId
     */
    public Integer getShowId() {
        return showId;
    }

    /**
     * @param showId the showId to set
     */
    public void setShowId(Integer showId) {
        this.showId = showId;
    }

    /**
     * @return the showCommision
     */
    public Double getShowCommision() {
        return showCommision;
    }

    /**
     * @param showCommision the showCommision to set
     */
    public void setShowCommision(Double showCommision) {
        this.showCommision = showCommision;
    }

    /**
     * @return the siteCommision
     */
    public Double getSiteCommision() {
        return siteCommision;
    }

    /**
     * @param siteCommision the siteCommision to set
     */
    public void setSiteCommision(Double siteCommision) {
        this.siteCommision = siteCommision;
    }

    /**
     * @return the venueCommision
     */
    public Double getVenueCommision() {
        return venueCommision;
    }

    /**
     * @param venueCommision the venueCommision to set
     */
    public void setVenueCommision(Double venueCommision) {
        this.venueCommision = venueCommision;
    }

    /**
     * @return the showname
     */
    public String getShowname() {
        return showname;
    }

    /**
     * @param showname the showname to set
     */
    public void setShowname(String showname) {
        this.showname = showname;
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
     * @return the categories
     */
    public String getCategories() {
        return categories;
    }

    /**
     * @param categories the categories to set
     */
    public void setCategories(String categories) {
        this.categories = categories;
    }

    /**
     * @return the showtype
     */
    public String getShowtype() {
        return showtype;
    }

    /**
     * @param showtype the showtype to set
     */
    public void setShowtype(String showtype) {
        this.showtype = showtype;
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
