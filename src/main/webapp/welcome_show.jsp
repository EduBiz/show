<%-- 
    Document   : welcome_show
    Created on : Nov 9, 2011, 5:01:09 PM
    Author     : Administrator
--%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title>Show Admin Page</title>
         <s:head theme="jquery"/> 
          <sj:head/> 
    </head>
    <body>
             <%
    Object obj = session.getAttribute("user");
    Object obj1=session.getAttribute("Show");
    
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
       else if(obj1==null)
       {
       response.sendRedirect(request.getContextPath()+"/showerror.action");
       }
    %>
        
    <h1>welcome Show Admin &nbsp; &nbsp;<a href="logoutaction.action">Logout</a> &nbsp;&nbsp;<a href="accountinformation.action">Account information</a>  &nbsp;&nbsp;<a href="showinfo.action">Update Show information</a> 
        <br> <a href="updateshownav.action">Add new Events</a>
        &nbsp;<a href="uploadshownav.action">Upload Show images</a>
        &nbsp;&nbsp;<a href="manageshowproductnav.action">Manage Products</a>
    </h1>
   
    <div>
     Add new Stall user and Stall:
    <s:actionerror theme="jquery"/>   
    <s:form action="addstalluser">
       <s:textfield name="uname" label="User Name" />
        <s:textfield name="email" label="Email id" />
        <s:hidden name="catgry" label="Stall"   value="stall"/>
        <s:textfield name="sname" label="Stall Name" />
        <s:submit value="Create Stall"/>
     </s:form>
      
    </div>
    <div id="rounded-corner">
          <s:actionmessage theme="jquery" />
    </div>    
        
        
    </body>
</html>
