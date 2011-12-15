/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;
import model.*;

/**
 *
 * @author Administrator
 */
public class uploadshownav extends ActionSupport {

    private spDAO myDao;
    private Show show;
    private User user;
    private int showId;
    private InputStream shlogo;
    private InputStream shimg;
    private InputStream shlay;
     private int id;
    @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));



        return "success";

    }

    public String imag() throws Exception {

        try {

            Showimage pimg = (Showimage) getMyDao().getDbsession().get(Showimage.class, id);
            byte[] retadd1 = pimg.getLogo();
            byte[] retadd2 = pimg.getShowImage();
            byte[] retadd3 = pimg.getShowLayout();

            setShlogo(new ByteArrayInputStream(retadd1));
            setShimg(new ByteArrayInputStream(retadd2));
            setShlay(new ByteArrayInputStream(retadd3));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
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
     * @return the shlogo
     */
    public InputStream getShlogo() {
        return shlogo;
    }

    /**
     * @param shlogo the shlogo to set
     */
    public void setShlogo(InputStream shlogo) {
        this.shlogo = shlogo;
    }

    /**
     * @return the shimg
     */
    public InputStream getShimg() {
        return shimg;
    }

    /**
     * @param shimg the shimg to set
     */
    public void setShimg(InputStream shimg) {
        this.shimg = shimg;
    }

    /**
     * @return the shlay
     */
    public InputStream getShlay() {
        return shlay;
    }

    /**
     * @param shlay the shlay to set
     */
    public void setShlay(InputStream shlay) {
        this.shlay = shlay;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
}
