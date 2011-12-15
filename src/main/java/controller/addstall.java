/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class addstall extends ActionSupport {

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
    private String uname;
    private String email;
    private spDAO myDao;
    private Emailfunction sendMail;
    private String subject;
    private String content;
    private static userEnum ut;
    private String sname;
    private List<Stall> stalllist;
    private List<User> uselist;
    private Show show;
    private User user;
    private User suser;
    private List<User> stalluserlist;
    private List<String> use;
    private int showid;

    @Override
    public void validate() {



        Criteria scri = getMyDao().getDbsession().createCriteria(Stall.class);
        scri.add(Restrictions.eq("stallname", getSname()));
        scri.setMaxResults(50);
        setStalllist((List<Stall>) scri.list());



        if (getStalllist().isEmpty()) {
        } else {
            addFieldError("sname", "Sorry Stall Already Registered");
        }

    }

    @Override
    public String execute() throws Exception {
        try {
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("user"));
            System.out.println("Show id is :\t\t"+showid);
            System.out.println("Email id is:\t\t"+email);
            System.out.println("Stall Name is:\t\t"+sname);
            Criteria sho = myDao.getDbsession().createCriteria(Show.class);
            sho.add(Restrictions.eq("showId", showid));
            sho.setMaxResults(1);
            show = (Show) (sho.list().get(0));
            System.out.println("size\t\t"+show.getShowname());
            Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
            ucri.add(Restrictions.eq("emailId", email));
            ucri.setMaxResults(1);
            suser = (User) (ucri.list().get(0));
            System.out.println("size\t\t"+suser.getEmailId());
            Stall stall = new Stall(show, suser, sname);
            stall.setStatus(userEnum.Active.getUserType());
            myDao.getDbsession().save(stall);
            setSubject("Welcome to Zorrit.com");
            setContent("Hi\t\t&nbsp;" + getEmail() + "\t\t&nbsp; welcome to Zorrit.com<br><br>\n\n" + "You are invited for &nbsp;\t" + "Stall" + "\t &nbsp;promoter for our site\n\n<br><br>"
                    + "Your Requested \t\t" + "Stall" + "\t\tname\t\t" + sname + "\t\tSuccessfully Created\n\n"
                    + "\n<br><br>" + " \nThanks & Regards <br> \n   " + " Zorrit Team\n\n<br><br>");
            getSendMail().test(getEmail(), getSubject(), getContent());
            addActionMessage("New Stall \t" + sname + "\tSuccessfully created");

            Criteria stu = myDao.getDbsession().createCriteria(User.class);
            stu.add(Restrictions.eq("userType", "stall"));
            stu.setMaxResults(50);
            stalluserlist = stu.list();
            use = new ArrayList();
            for (int i = 1; i < stalluserlist.size(); i++) {
                use.add(stalluserlist.get(i).getEmailId());
            }

            sname = null;


            return "success";

        } catch (Exception e) {
            addActionError("error" + e.getMessage());
            e.printStackTrace();
            return "error";
        }
    }

    /**
     * @return the uname
     */
    public String getUname() {
        return uname;
    }

    /**
     * @param uname the uname to set
     */
    public void setUname(String uname) {
        this.uname = uname;
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
     * @return the sendMail
     */
    public Emailfunction getSendMail() {
        return sendMail;
    }

    /**
     * @param sendMail the sendMail to set
     */
    public void setSendMail(Emailfunction sendMail) {
        this.sendMail = sendMail;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return the sname
     */
    public String getSname() {
        return sname;
    }

    /**
     * @param sname the sname to set
     */
    public void setSname(String sname) {
        this.sname = sname;
    }

    /**
     * @return the uselist
     */
    public List<User> getUselist() {
        return uselist;
    }

    /**
     * @param uselist the uselist to set
     */
    public void setUselist(List<User> uselist) {
        this.uselist = uselist;
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
     * @return the suser
     */
    public User getSuser() {
        return suser;
    }

    /**
     * @param suser the suser to set
     */
    public void setSuser(User suser) {
        this.suser = suser;
    }

    /**
     * @return the stalluserlist
     */
    public List<User> getStalluserlist() {
        return stalluserlist;
    }

    /**
     * @param stalluserlist the stalluserlist to set
     */
    public void setStalluserlist(List<User> stalluserlist) {
        this.stalluserlist = stalluserlist;
    }

    /**
     * @return the use
     */
    public List<String> getUse() {
        return use;
    }

    /**
     * @param use the use to set
     */
    public void setUse(List<String> use) {
        this.use = use;
    }
}
