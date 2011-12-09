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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class manageshowproductnav extends ActionSupport {

    private spDAO myDao;
    private List<Product> prodlist;
    private InputStream fileInputStream;
    private long id;
    private Show show;
    private Stall stall;
    private List<Stall> stalllist;
    private List<User> userlist;

    @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        User user = (User) session.get("user");
        setShow((Show) session.get("Show"));


        stalllist = new ArrayList<Stall>(show.getStalls());
        System.out.println(" No. of Stalls\t\t " + stalllist.size());
        for (int i = 0; i < stalllist.size(); i++) {
            System.out.println(" No. of users"+i+"\t\t " + stalllist.get(i).getUser().getEmailId());
        }
String sql="";
        stalllist.listIterator();
        
        Criteria usercri = myDao.getDbsession().createCriteria(User.class);
     
        usercri.add(Restrictions.eq("emailId", stalllist.get(0).getUser().getEmailId()));
       
         userlist = (List<User>) usercri.list();
          
       
        
       System.out.println("No of userlist :\t\t"+userlist.size());
        Criteria pro = getMyDao().getDbsession().createCriteria(Product.class);

        pro.add(Restrictions.in("user", userlist));
          
        prodlist = (List<Product>) pro.list();
        System.out.println(" No. of products\t\t " + prodlist.size());
        return "success";
    }

    public String img() throws Exception {

        try {

            Productimage pimg = (Productimage) getMyDao().getDbsession().get(Productimage.class, getId());
            byte[] retadd1 = pimg.getImagefile();
            setFileInputStream(new ByteArrayInputStream(retadd1));
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
     * @return the prodlist
     */
    public List<Product> getProdlist() {
        return prodlist;
    }

    /**
     * @param prodlist the prodlist to set
     */
    public void setProdlist(List<Product> prodlist) {
        this.prodlist = prodlist;
    }

    /**
     * @return the fileInputStream
     */
    public InputStream getFileInputStream() {
        return fileInputStream;
    }

    /**
     * @param fileInputStream the fileInputStream to set
     */
    public void setFileInputStream(InputStream fileInputStream) {
        this.fileInputStream = fileInputStream;
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
     * @return the userlist
     */
    public List<User> getUserlist() {
        return userlist;
    }

    /**
     * @param userlist the userlist to set
     */
    public void setUserlist(List<User> userlist) {
        this.userlist = userlist;
    }
}
