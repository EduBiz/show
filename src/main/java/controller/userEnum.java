/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Administrator
 */
public enum userEnum {
    
    
    
    Active("Active"),Suspend("Suspend"),NotRegistered("Not_Activated"),Act_User("Activated"),Admin("admin"),Show("show"),Stall("stall");
    
    private String userType;
    
    private userEnum(String userType)
    {
    this.userType=userType;
    }

    /**
     * @return the userType
     */
    public String getUserType() {
        return userType;
    }
}
