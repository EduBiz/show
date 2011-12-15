/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

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
     private int showId;
     private User user;
     private List<Show> showlist;
    @Override
    public String execute() throws Exception
    {
        Map session=ActionContext.getContext().getSession();
          setUser((User) session.get("user"));
        Criteria sho=myDao.getDbsession().createCriteria(Show.class);
        sho.add(Restrictions.eq("showId", getShowId()));
        sho.setMaxResults(1);
        show=(Show)(sho.list().get(0));
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
         Showimage simg=new Showimage(getShowId(),show);
           simg.setLogo(blogo);
           simg.setShowImage(bimg);
           simg.setShowLayout(blay);
          myDao.getDbsession().saveOrUpdate(simg);
          addActionMessage("Show images Successfully Updated");
          Criteria slist=myDao.getDbsession().createCriteria(Show.class);
          slist.add(Restrictions.eq("user", user));
          slist.setMaxResults(50);
          showlist=slist.list();
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
     * @return the showId
     */
    public int getShowId() {
        return showId;
    }

    /**
     * @param showId the showId to set
     */
    public void setShowId(int showId) {
        this.showId = showId;
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
    
}
