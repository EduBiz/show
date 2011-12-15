/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Product;
import model.Stall;
import model.Stalldisplay;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class addstalldisplayproduct extends ActionSupport {

    private long stallid;
    private long prodid;
    private long displayid;
    private int x1;
    private int x2;
    private int y1;
    private int y2;
    private User user;
    private Stall stall;
    private List<Product> prodlist;
    private List<Stalldisplay> stalldisp;
    private spDAO myDao;
    private Product prod;
    private Stalldisplay dispstall;
    private String pname;
    private String prname;
    private List<String> pro;

 
    @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("user"));
        System.out.println("Selected name is:\t\t" + getPname() + "\t\t");

        Criteria pro1 = myDao.getDbsession().createCriteria(Product.class);
        pro1.add(Restrictions.eq("name", getPname()));
        pro1.setMaxResults(1);
        prod = (Product) (pro1.list().get(0));
        Criteria st = myDao.getDbsession().createCriteria(Stall.class);
        st.add(Restrictions.eq("stallId", stallid));
        st.setMaxResults(1);
        stall = (Stall) (st.list().get(0));
        dispstall = new Stalldisplay(stall, prod, x1, x2, y1, y2);
        myDao.getDbsession().save(dispstall);
        addActionMessage(" Product\t\t" + pname + "\t\t Successfully Added to Stall Display");
        Criteria prod1 = myDao.getDbsession().createCriteria(Product.class);
        prod1.add(Restrictions.eq("user", user));
        prod1.setMaxResults(50);
        prodlist = prod1.list();
        setPro((List<String>) new ArrayList());
        for (int i = 1; i < prodlist.size(); i++) {
            getPro().add(prodlist.get(i).getName());
        }
        Criteria stdis = myDao.getDbsession().createCriteria(Stalldisplay.class);
        stdis.add(Restrictions.eq("stall", stall));
        stdis.setMaxResults(50);
        setStalldisp((List<Stalldisplay>) stdis.list());
        x1 = 0;
        x2 = 0;
        y1 = 0;
        y2 = 0;

        return "success";
    }

    /**
     * @return the stallid
     */
    public long getStallid() {
        return stallid;
    }

    /**
     * @param stallid the stallid to set
     */
    public void setStallid(long stallid) {
        this.stallid = stallid;
    }

    /**
     * @return the prodid
     */
    public long getProdid() {
        return prodid;
    }

    /**
     * @param prodid the prodid to set
     */
    public void setProdid(long prodid) {
        this.prodid = prodid;
    }

    /**
     * @return the displayid
     */
    public long getDisplayid() {
        return displayid;
    }

    /**
     * @param displayid the displayid to set
     */
    public void setDisplayid(long displayid) {
        this.displayid = displayid;
    }

    /**
     * @return the x1
     */
    public int getX1() {
        return x1;
    }

    /**
     * @param x1 the x1 to set
     */
    public void setX1(int x1) {
        this.x1 = x1;
    }

    /**
     * @return the x2
     */
    public int getX2() {
        return x2;
    }

    /**
     * @param x2 the x2 to set
     */
    public void setX2(int x2) {
        this.x2 = x2;
    }

    /**
     * @return the y1
     */
    public int getY1() {
        return y1;
    }

    /**
     * @param y1 the y1 to set
     */
    public void setY1(int y1) {
        this.y1 = y1;
    }

    /**
     * @return the y2
     */
    public int getY2() {
        return y2;
    }

    /**
     * @param y2 the y2 to set
     */
    public void setY2(int y2) {
        this.y2 = y2;
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
     * @return the stalldisp
     */
    public List<Stalldisplay> getStalldisp() {
        return stalldisp;
    }

    /**
     * @param stalldisp the stalldisp to set
     */
    public void setStalldisp(List<Stalldisplay> stalldisp) {
        this.stalldisp = stalldisp;
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
     * @return the prod
     */
    public Product getProd() {
        return prod;
    }

    /**
     * @param prod the prod to set
     */
    public void setProd(Product prod) {
        this.prod = prod;
    }

    /**
     * @return the dispstall
     */
    public Stalldisplay getDispstall() {
        return dispstall;
    }

    /**
     * @param dispstall the dispstall to set
     */
    public void setDispstall(Stalldisplay dispstall) {
        this.dispstall = dispstall;
    }

    /**
     * @return the pname
     */
    public String getPname() {
        return pname;
    }

    /**
     * @param pname the pname to set
     */
    public void setPname(String pname) {
        this.pname = pname;
    }

    /**
     * @return the pro
     */
    public List<String> getPro() {
        return pro;
    }

    /**
     * @param pro the pro to set
     */
    public void setPro(List<String> pro) {
        this.pro = pro;
    }

    /**
     * @return the prname
     */
    public String getPrname() {
        return prname;
    }

    /**
     * @param prname the prname to set
     */
    public void setPrname(String prname) {
        this.prname = prname;
    }
}
