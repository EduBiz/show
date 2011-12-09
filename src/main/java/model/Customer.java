package model;
// Generated Dec 2, 2011 5:59:28 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Customer generated by hbm2java
 */
public class Customer  implements java.io.Serializable {


     private Long customerId;
     private String firstname;
     private String lastname;
     private String email;
     private String password;
     private Long contactno;
     private Long mobile;
     private String address;
     private String city;
     private String country;
     private String postcode;
     private Set<Basket> baskets = new HashSet<Basket>(0);

    public Customer() {
    }

	
    public Customer(String email, String password, String address, String country, String postcode) {
        this.email = email;
        this.password = password;
        this.address = address;
        this.country = country;
        this.postcode = postcode;
    }
    public Customer(String firstname, String lastname, String email, String password, Long contactno, Long mobile, String address, String city, String country, String postcode, Set<Basket> baskets) {
       this.firstname = firstname;
       this.lastname = lastname;
       this.email = email;
       this.password = password;
       this.contactno = contactno;
       this.mobile = mobile;
       this.address = address;
       this.city = city;
       this.country = country;
       this.postcode = postcode;
       this.baskets = baskets;
    }
   
    public Long getCustomerId() {
        return this.customerId;
    }
    
    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }
    public String getFirstname() {
        return this.firstname;
    }
    
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    public String getLastname() {
        return this.lastname;
    }
    
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public Long getContactno() {
        return this.contactno;
    }
    
    public void setContactno(Long contactno) {
        this.contactno = contactno;
    }
    public Long getMobile() {
        return this.mobile;
    }
    
    public void setMobile(Long mobile) {
        this.mobile = mobile;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public String getCity() {
        return this.city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    public String getPostcode() {
        return this.postcode;
    }
    
    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }
    public Set<Basket> getBaskets() {
        return this.baskets;
    }
    
    public void setBaskets(Set<Basket> baskets) {
        this.baskets = baskets;
    }




}


