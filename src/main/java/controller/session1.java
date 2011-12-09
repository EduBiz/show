/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import org.springframework.beans.factory.annotation.Autowired;


    
/**
 *
 * @author Administrator
 */
public class session1 {
    private spDAO myDao;
    public void test() throws Exception
    {
        
    }
    @Autowired
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
