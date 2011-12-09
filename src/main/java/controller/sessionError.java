/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Administrator
 */
public class sessionError extends ActionSupport {

    @Override
    public String execute() throws Exception {
        
       addActionMessage("Please Login to access the content requested");
        return "success";
    }

  public String showerror() throws Exception {
        
       addActionMessage("You hava no Show Please create new Show ");
        return "success";
    }
  public String stallerror() throws Exception {
        
       addActionMessage("You hava no Stall Please create new Stall ");
        return "success";
    }



}
