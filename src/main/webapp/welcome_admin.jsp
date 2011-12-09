<%-- 
    Document   : welcome_admin
    Created on : Nov 9, 2011, 5:01:09 PM
    Author     : Administrator
--%>
<%-- 
    Document   : welcome_admin
    Created on : Nov 9, 2011, 5:01:09 PM
    Author     : Administrator
--%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title> Admin </title>
       <s:head theme="jquery"/> 
          <sj:head/> 
    </head>
    <body>
             <%
    Object obj = session.getAttribute("user");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
    %>
        
    <h1>welcome admin &nbsp; &nbsp;<a href="logoutaction.action">Logout</a>&nbsp;&nbsp;<a href="accountinformation.action">Account information</a>    </h1>
   
    <div>
     Add new Show User And Show:
       <s:actionerror theme="jquery"/>   
    <s:form action="addshowuser">
        <s:textfield name="uname" label="User Name" />
        <s:textfield name="email" label="Email id" />
        <s:hidden name="catgry" label="Show"   value="show"/>
        <s:textfield name="sname" label="Show Name" />
        <s:submit value="Create"/>
     </s:form>
      
    </div>
    <div id="rounded-corner">
          <s:actionmessage theme="jquery"/>
    </div>    
        
        
    </body>
</html>















