/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
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
public class useRegistration extends ActionSupport {

    /**
     * @return the type
     */
    public static userEnum getType() {
        return type;
    }

    /**
     * @param aType the type to set
     */
    public static void setType(userEnum aType) {
        type = aType;
    }
    private spDAO myDao;
    private String fname;
    private String lname;
    private String email;
    private String company;
    private Date dob;
    private String vatreg;
    private String weblink;
    private String duedate;
    private Long phone;
    private Long mobile;
    private Integer approve;
    private String bankinfo;
    private String note;
    private String info;
    private BigDecimal balance;
    private List<Users> uselist;
    private User user;
    private static userEnum type;
    private List<Show> showlist;
    private List<Stall> stalllist;
    private List<Product> prodlist;

    @Override
    public void validate() {


        if (vatreg.equals("Please select")) {
            addFieldError("vatreg", "Please Select Vat Registered");

        }



    }

    @Override
    public String execute() throws Exception {

        try {



            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("user"));
            setEmail(getUser().getEmailId());
            Users used = new Users(email, user);
            used.setFirstname(fname);
            used.setLastname(lname);
            used.setDateofbirth(dob);
            used.setMobile(mobile);
            used.setPhone(phone);
            used.setApprove(approve);
            used.setVatregister(vatreg);
            used.setCompany(company);
            used.setBalance(balance);
            used.setWebLink(weblink);
            used.setBankInfo(bankinfo);
            used.setNote(note);
            used.setInfo(info);
            used.setDuedate(duedate);
            getMyDao().getDbsession().saveOrUpdate(used);

            setUselist((List<Users>) getMyDao().getDbsession().createQuery("from Users").list());
            Criteria ucri = getMyDao().getDbsession().createCriteria(Users.class);
            ucri.add(Restrictions.like("user", getUser().getEmailId()));
            ucri.setMaxResults(1);
             if (user.getUserType().equals(userEnum.Admin.getUserType())) {
                Criteria allshow = myDao.getDbsession().createCriteria(Show.class);
                allshow.setMaxResults(50);
                showlist = allshow.list();
                Criteria allstall = myDao.getDbsession().createCriteria(Stall.class);
                allstall.setMaxResults(50);
                stalllist = allstall.list();
                Criteria allproduct = myDao.getDbsession().createCriteria(Product.class);
                allproduct.setMaxResults(50);
                prodlist = allproduct.list();
                addActionMessage("Your Account Information Successfully Updated");
                return "admin";
            } else if (user.getUserType().equals(userEnum.Show.getUserType())) {
                addActionMessage("Your Account Information Successfully Updated");
                return "show";
            } else if (user.getUserType().equals(userEnum.Stall.getUserType())) {
                addActionMessage("Your Account Information Successfully Updated");
                return "stall";
            } else {
                return "error";
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            addActionError("error" + e.getMessage());
            e.printStackTrace();
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
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the lname
     */
    public String getLname() {
        return lname;
    }

    /**
     * @param lname the lname to set
     */
    public void setLname(String lname) {
        this.lname = lname;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the company
     */
    public String getCompany() {
        return company;
    }

    /**
     * @param company the company to set
     */
    public void setCompany(String company) {
        this.company = company;
    }

    /**
     * @return the dob
     */
    public Date getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(Date dob) {
        this.dob = dob;
    }

    /**
     * @return the vatreg
     */
    public String getVatreg() {
        return vatreg;
    }

    /**
     * @param vatreg the vatreg to set
     */
    public void setVatreg(String vatreg) {
        this.vatreg = vatreg;
    }

    /**
     * @return the weblink
     */
    public String getWeblink() {
        return weblink;
    }

    /**
     * @param weblink the weblink to set
     */
    public void setWeblink(String weblink) {
        this.weblink = weblink;
    }

    /**
     * @return the duedate
     */
    public String getDuedate() {
        return duedate;
    }

    /**
     * @param duedate the duedate to set
     */
    public void setDuedate(String duedate) {
        this.duedate = duedate;
    }

    /**
     * @return the phone
     */
    public Long getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(Long phone) {
        this.phone = phone;
    }

    /**
     * @return the mobile
     */
    public Long getMobile() {
        return mobile;
    }

    /**
     * @param mobile the mobile to set
     */
    public void setMobile(Long mobile) {
        this.mobile = mobile;
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
     * @return the bankinfo
     */
    public String getBankinfo() {
        return bankinfo;
    }

    /**
     * @param bankinfo the bankinfo to set
     */
    public void setBankinfo(String bankinfo) {
        this.bankinfo = bankinfo;
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
     * @return the info
     */
    public String getInfo() {
        return info;
    }

    /**
     * @param info the info to set
     */
    public void setInfo(String info) {
        this.info = info;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    /**
     * @param balance the balance to set
     */
    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    /**
     * @return the uselist
     */
    public List<Users> getUselist() {
        return uselist;
    }

    /**
     * @param uselist the uselist to set
     */
    public void setUselist(List<Users> uselist) {
        this.uselist = uselist;
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
     * @return the showlist
     */
    public List<Show> getShowlist() {
        return showlist;
    }

    /**
     * @param showlist the showlist to set
     */
    public void setShowlist(List<Show> showlist) {
        this.showlist = showlist;
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
}
