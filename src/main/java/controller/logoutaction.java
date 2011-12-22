/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

/**
 *
 * @author Administrator
 */
public class logoutaction extends ActionSupport{
    
    
    @Override
    public String execute() throws Exception { 
        
      Map session = ActionContext.getContext().getSession();
      session.put("user",null);
      session.clear();
      addActionMessage("Successfully Logged Out. Login as Different User");
      return SUCCESS;
  }
}
