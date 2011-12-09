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
public class uploadshowimg extends ActionSupport{
    private spDAO myDao;
     private Show show;
     private File logo;
     private File imag;
     private File layout;
     
    @Override
    public String execute() throws Exception
    {
        Map session=ActionContext.getContext().getSession();
          setShow((Show)session.get("Show"));
        
              try{
                  System.out.println("Logo is"+logo);
                   System.out.println("Logo is"+imag);
                    System.out.println("Logo is"+layout);
           byte[] blogo = new byte[(int) logo.length()];
           byte[] bimg = new byte[(int) imag.length()];
           byte[] blay = new byte[(int) layout.length()];
      
            FileInputStream flogo;
            FileInputStream fimg;
            FileInputStream flayout;
	     flogo=new FileInputStream(logo);
	     fimg=new FileInputStream(imag);
             flayout=new FileInputStream(layout);
	     flogo.read(blogo);
	    fimg.read(bimg);
            flayout.read(blay);
         Showimage simg=new Showimage(show.getShowId(),show);
           simg.setLogo(blogo);
           simg.setShowImage(bimg);
           simg.setShowLayout(blay);
          myDao.getDbsession().saveOrUpdate(simg);
          addActionMessage("Show images Successfully Updated");
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
     * @return the imag
     */
    public File getImag() {
        return imag;
    }

    /**
     * @param imag the imag to set
     */
    public void setImag(File imag) {
        this.imag = imag;
    }

    /**
     * @return the layout
     */
    public File getLayout() {
        return layout;
    }

    /**
     * @param layout the layout to set
     */
    public void setLayout(File layout) {
        this.layout = layout;
    }
    
}
