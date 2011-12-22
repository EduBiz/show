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
import model.UserAddress;
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
    private String mow;
    private String vatreg;
    private String weblink;
    private String duedate;
    private Long phone;
    private Long mobile;
    private Integer approve;
    private String note;
    private String info;
    private BigDecimal balance;
    private Users userdetails;
    private User  user;
    private String vatno;
    private String bankname;
    private String bsc;
    private String accname;
    private int accno;
    private String addl1;
    private String addl2;
    private String city;
    private String country;
    private String postcode;
    private UserAddress uaddr;
     @Override
    public String execute() throws Exception {
     
         Map session =ActionContext.getContext().getSession();
         setUser((User) session.get("user"));
           
         
        setUserdetails((Users) getMyDao().getDbsession().get(Users.class, getUser().getEmailId()));
            uaddr=(UserAddress)myDao.getDbsession().get(UserAddress.class, user.getEmailId());
    
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

    /**
     * @return the mow
     */
    public String getMow() {
        return mow;
    }

    /**
     * @param mow the mow to set
     */
    public void setMow(String mow) {
        this.mow = mow;
    }

    /**
     * @return the vatno
     */
    public String getVatno() {
        return vatno;
    }

    /**
     * @param vatno the vatno to set
     */
    public void setVatno(String vatno) {
        this.vatno = vatno;
    }

    /**
     * @return the bankname
     */
    public String getBankname() {
        return bankname;
    }

    /**
     * @param bankname the bankname to set
     */
    public void setBankname(String bankname) {
        this.bankname = bankname;
    }

    /**
     * @return the bsc
     */
    public String getBsc() {
        return bsc;
    }

    /**
     * @param bsc the bsc to set
     */
    public void setBsc(String bsc) {
        this.bsc = bsc;
    }

    /**
     * @return the accname
     */
    public String getAccname() {
        return accname;
    }

    /**
     * @param accname the accname to set
     */
    public void setAccname(String accname) {
        this.accname = accname;
    }

    /**
     * @return the accno
     */
    public int getAccno() {
        return accno;
    }

    /**
     * @param accno the accno to set
     */
    public void setAccno(int accno) {
        this.accno = accno;
    }

    /**
     * @return the addl1
     */
    public String getAddl1() {
        return addl1;
    }

    /**
     * @param addl1 the addl1 to set
     */
    public void setAddl1(String addl1) {
        this.addl1 = addl1;
    }

    /**
     * @return the addl2
     */
    public String getAddl2() {
        return addl2;
    }

    /**
     * @param addl2 the addl2 to set
     */
    public void setAddl2(String addl2) {
        this.addl2 = addl2;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * @return the postcode
     */
    public String getPostcode() {
        return postcode;
    }

    /**
     * @param postcode the postcode to set
     */
    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    /**
     * @return the uaddr
     */
    public UserAddress getUaddr() {
        return uaddr;
    }

    /**
     * @param uaddr the uaddr to set
     */
    public void setUaddr(UserAddress uaddr) {
        this.uaddr = uaddr;
    }

   
}