/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
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
public class addstalluser extends ActionSupport {

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
     private long confcode;
     private String catgry;
     private Emailfunction sendMail;
     private String subject;
     private String content;
     private PassPhrase passGen;
     private static userEnum ut; 
     private String sname;
     private List<Stall> showlist;
     private List<User> uselist;
     private Show show;
     
     
       @Override
  public void validate() {
            uselist=(List<User>) myDao.getDbsession().createQuery("from User").list();
            Criteria ucri=getMyDao().getDbsession().createCriteria(User.class);
            ucri.add( Restrictions.eq("userName", getUname()));
            ucri.setMaxResults(50);
            setUselist((List<User>)ucri.list());
            showlist=(List<Stall>) myDao.getDbsession().createQuery("from Stall").list();
            Criteria scri=getMyDao().getDbsession().createCriteria(Stall.class);
            scri.add( Restrictions.eq("stallname", getSname()));
            scri.setMaxResults(50);
            setShowlist((List<Stall>)scri.list());
       
       
 User user=(User)getMyDao().getDbsession().get(User.class, getEmail());
        if(user != null)
        { addFieldError("email","Sorry Email id Already Taken");
  
        }
       
      else 
        {
        }
        if (getUselist().isEmpty())
      {
      
      }
        else
        {
             addFieldError("uname","Sorry User Name Already Taken");
        }
    if( getShowlist().isEmpty())
    {
      
    }
    else
    {
        addFieldError("sname","Sorry Stall Already Registered");
    }
           
   }
     
    @Override
    public String execute() throws Exception
    {
     try{
        Map session =ActionContext.getContext().getSession();
            setShow((Show) session.get("Show"));
        Random rand=new Random();
            setConfcode(rand.nextLong());
       Date date=new Date();
       User tuser=new User(getEmail(),PassPhrase.pass(), getConfcode(), getCatgry(),userEnum.NotRegistered.getUserType(), getUname(),date);
        tuser.setUserName(getUname());
            getMyDao().getDbsession().save(tuser);
            
          
       Stall stall=new Stall(getShow(),tuser,sname);
       stall.setStatus(ut.Active.getUserType());
       myDao.getDbsession().save(stall);
        User user=(User)getMyDao().getDbsession().get(User.class, getEmail());
            setSubject("Welcome to Zorrit.com");
            setContent("Hi\t\t&nbsp;" + getEmail() + "\t\t&nbsp; welcome to Zorrit.com<br><br>\n\n" + "You are invited for &nbsp;\t" + getCatgry() + "\t &nbsp;promoter for our site\n\n<br><br>" 
                    +"Your Requested \t\t"+catgry+"\t\tname\t\t"+sname+"\t\tSuccessfully Created\n\n"
                    + "Your Zorrit login id is:&nbsp;\t" + getEmail() + "\n<br>" + "Your Zorrit pasword is:\t\t&nbsp;" + user.getPassword() + "\n\n<br><br>" + "Please Click the following link to activate your Account\n\n\n<br><br>" + "<a href='http://localhost:8080/show/activationaccount.action?email=" + getEmail() + "&confcode=" + getConfcode() + "'>www.zorrit.com/activation" + getConfcode() + "</a>" + "\n<br><br>" + " \nThanks & Regards <br> \n   " + " Zorrit Team\n\n<br><br>");
            getSendMail().test(getEmail(), getSubject(), getContent());
        addActionMessage("New user \t"+getUname()+"\tSuccessfully created");
        email=null;
        sname=null;
        uname=null;
        return "success";
    }
     catch(Exception e)
     {
        addActionError("error"+e.getMessage());
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
     * @return the confcode
     */
    public long getConfcode() {
        return confcode;
    }

    /**
     * @param confcode the confcode to set
     */
    public void setConfcode(long confcode) {
        this.confcode = confcode;
    }

    /**
     * @return the catgry
     */
    public String getCatgry() {
        return catgry;
    }

    /**
     * @param catgry the catgry to set
     */
    public void setCatgry(String catgry) {
        this.catgry = catgry;
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
     * @return the passGen
     */
    public PassPhrase getPassGen() {
        return passGen;
    }

    /**
     * @param passGen the passGen to set
     */
    public void setPassGen(PassPhrase passGen) {
        this.passGen = passGen;
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
     * @return the showlist
     */
    public List<Stall> getShowlist() {
        return showlist;
    }

    /**
     * @param showlist the showlist to set
     */
    public void setShowlist(List<Stall> showlist) {
        this.showlist = showlist;
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
    
}
