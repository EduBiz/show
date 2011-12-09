<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>

<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
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




        <s:actionerror theme="jquery"/>   
        <s:form action="useRegistration">
            <s:textfield name="email" label="Email id"  value="%{userdetails.user}" readonly="true" disabled="true" />
            <s:textfield name="fname" label="First Name" value="%{userdetails.firstname}"/>
            <s:textfield name="lname" label="Last Name" value="%{userdetails.lastname}" />
            <sj:datepicker name="dob" displayFormat="mm/dd/yy" label="Date of Birth" value="%{userdetails.dateofbirth}"/>
            <s:textfield name="company" label="Company Name" value="%{userdetails.company}"/>
            <s:select label="Vat Registered?" name="vatreg" headerKey="Please select" headerValue="Please select" list="{'True','False'}" value="%{userdetails.vatregister}"/>
            <s:textfield name="weblink" label="Website Link" value="%{userdetails.webLink}"/>
            <s:textfield name="duedate" label="Due Date" value="%{userdetails.duedate}"/>
            <s:textfield name="phone" label="Enter Phone no" value="%{userdetails.phone}"/>
            <s:textfield name="mobile" label="Enter Mobile no" value="%{userdetails.mobile}"/>
            <s:textfield name="approve" label="Approves" value="%{userdetails.approve}"/>
            <s:textfield name="bankinfo" label="Bank Information" value="%{userdetails.bankInfo}"/>
            <s:textfield name="balance" label="Balance" value="%{userdetails.balance}"/>
            <s:textfield name="note" label="Note" value="%{userdetails.note}"/>
            <s:textarea label="Description" name="info" rows="3" cols="16.7" value="%{userdetails.info}"/>
            <s:submit value="Update Information"/>
        </s:form>


    </body>
</html>
