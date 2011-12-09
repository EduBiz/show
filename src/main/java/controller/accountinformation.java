/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;
import model.User;
import model.Users;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Administrator
 */
public class accountinformation extends ActionSupport {
  
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
    private String city;
    private BigDecimal balance;
    private Users userdetails;
    private User  user;
     @Override
    public String execute() throws Exception {
     
         Map session =ActionContext.getContext().getSession();
         setUser((User) session.get("user"));
           
         
        setUserdetails((Users) getMyDao().getDbsession().get(Users.class, getUser().getEmailId()));
            
    
           if(getUserdetails()!=null)
                           
            {
                
              
            Criteria ucri=getMyDao().getDbsession().createCriteria(Users.class);
            ucri.add(Restrictions.eq("user", getUser().getEmailId()));
            ucri.setMaxResults(1);
            setUserdetails((Users)(ucri.list().get(0)));
             
          return "update";
            }
            else
            {
  
             
       return "save";
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

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the balance
     */
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
     * @return the userdetails
     */
    public Users getUserdetails() {
        return userdetails;
    }

    /**
     * @param userdetails the userdetails to set
     */
    public void setUserdetails(Users userdetails) {
        this.userdetails = userdetails;
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

   
}