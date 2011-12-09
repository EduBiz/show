<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>

<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <s:head theme="jquery"/>  
        <sj:head jqueryui="true" jquerytheme="flick"/> 
    </head>
    <body>
        <%
    Object obj = session.getAttribute("user");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
    %> 

          
          
          
    <s:actionerror/>   
    <s:form action="useRegistration">
        <s:hidden name="email" label="Email id"/>
        <s:textfield name="fname" label="First Name"/>
        <s:textfield name="lname" label="Last Name"/>
        <sj:datepicker name="dob" displayFormat="mm/dd/yy" label="Date of Birth" value="%{dob}"/>
        <s:textfield name="company" label="Company Name"/>
        <s:select label="Vat Registered?" name="vatreg" headerKey="Please select" headerValue="Please select" list="{'Yes','No'}" />
        <s:textfield name="weblink" label="Website Link" value="http://"/>
        <s:textfield name="duedate" label="Due Date"/>
        <s:textfield name="phone" label="Enter Phone no"/>
        <s:textfield name="mobile" label="Enter Mobile no"/>
        <s:textfield name="approve" label="Approves"/>
        <s:textfield name="bankinfo" label="Bank Information"/>
        <s:textfield name="balance" label="Balance"/>
        <s:textfield name="note" label="Note"/>
        <s:textarea label="Description" name="info" rows="3" cols="16.7"/>
        <s:submit value="Update Information"/>
    </s:form>
    
        
    </body>
</html>
