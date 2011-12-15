/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nav;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Administrator
 */
public class echo extends ActionSupport {
private String echo;
    @Override
    public String execute() throws Exception {
        return "success";
    }

    /**
     * @return the echo
     */
    public String getEcho() {
        return echo;
    }

    /**
     * @param echo the echo to set
     */
    public void setEcho(String echo) {
        this.echo = echo;
    }
}
