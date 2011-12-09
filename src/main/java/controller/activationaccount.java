/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Administrator
 */
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import model.*;

public class activationaccount extends ActionSupport {

    
     private String uname;
     private String email;
     private String pwd;
     private spDAO myDao;
     private long confcode;
     private String catgry;
     private User user;
     private static userEnum ut;
     private Emailfunction sendMail;
     private String subject;
     private String content;
    @Override
     public String execute() throws Exception
     {
         User tuser=(User)myDao.getDbsession().get(User.class,email);
         confcode=tuser.getConfirmCode();
         tuser.setStatus(userEnum.Act_User.getUserType());
           myDao.getDbsession().update(tuser);
         Map session =ActionContext.getContext().getSession();
         session.put("user",user);
         
         subject="Activation Success";
                  content="Hi &nbsp;" + "\t\t"+tuser.getUserName()+"\n\n\n" +" Welcome to Zorrit.com<br><br>\n" +" \n Your Zorrit.com Account is Activated   & Verified \n\n<br><br>"+" Thanks & Regards <br>\n " +" Zorrit Team\n<br><br>";
       
        
             sendMail.test(email, subject, content);
             
            
          addActionMessage("New user\t "+tuser.getUserName()+"\tSuccessfully Verified please login to access your page");   
         return "success";
     }
     
     
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
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
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
     
      
    
    
    
    
    
    
    
    
}
