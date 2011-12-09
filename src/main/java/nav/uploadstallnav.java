/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;

import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import model.Stallimage;

/**
 *
 * @author Administrator
 */
public class uploadstallnav extends ActionSupport{
    private String stallid;
    private long id;
    private InputStream slogo;
    private InputStream simg;
    private spDAO myDao;
    @Override
    public String execute() throws Exception
    
    {
        
        return "success";
    }

    public String img() throws Exception {

        try {

            Stallimage pimg = (Stallimage) getMyDao().getDbsession().get(Stallimage.class, getId());
            byte[] retadd1 = pimg.getBanimage();
            byte[] retadd2 = pimg.getLogo();
            
           slogo =new ByteArrayInputStream(retadd1);
           simg=new ByteArrayInputStream(retadd2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }
    /**
     * @return the stallid
     */
    public String getStallid() {
        return stallid;
    }

    /**
     * @param stallid the stallid to set
     */
    public void setStallid(String stallid) {
        this.stallid = stallid;
    }

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the slogo
     */
    public InputStream getSlogo() {
        return slogo;
    }

    /**
     * @param slogo the slogo to set
     */
    public void setSlogo(InputStream slogo) {
        this.slogo = slogo;
    }

    /**
     * @return the simg
     */
    public InputStream getSimg() {
        return simg;
    }

    /**
     * @param simg the simg to set
     */
    public void setSimg(InputStream simg) {
        this.simg = simg;
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
    
}