/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;
import model.*;
/**
 *
 * @author Administrator
 */
public class uploadstallimg extends ActionSupport{
    private spDAO myDao;
     private Stall stall;
     private File logo;
     private File ban;
    
     
    @Override
    public String execute() throws Exception
    {
        Map session=ActionContext.getContext().getSession();
            setStall((Stall)session.get("Stall"));
        
              try{
                  System.out.println("Logo is"+getLogo());
                   
                  
           byte[] blogo = new byte[(int) getLogo().length()];
           byte[] bimg = new byte[(int) getBan().length()];
          
      
            FileInputStream flogo;
            FileInputStream fban;
           
	     flogo=new FileInputStream(getLogo());
	     fban=new FileInputStream(getBan());
            
	     flogo.read(blogo);
             fban.read(bimg);	    
        
             Stallimage stallimg=new Stallimage(getStall().getStallId(), getStall());
             stallimg.setBanimage(bimg);
             stallimg.setLogo(blogo);
            getMyDao().getDbsession().saveOrUpdate(stallimg);
           addActionMessage("Stall images Successfully Updated");
          return "success";
        }
        catch(NullPointerException e)
        {
            
            addActionError(e.getMessage()+"\n value, Please Select All images");
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
}