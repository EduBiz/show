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

        <style type="text/css">
            a:link    {
                /* Applies to all unvisited links */
                text-decoration:  none;
                font-weight:      bold;

                color:#333;

            } 
            a:visited {
                /* Applies to all visited links */
                text-decoration:  none;
                font-weight:      bold;

                color:#333;
            } 
            a:hover   {
                /* Applies to links under the pointer */
                text-decoration:  underline;
                font-weight:      bold;

                color:#333;
            } 
            a:active  {
                /* Applies to activated links */
                text-decoration:  underline;
                font-weight:      bold;

                color:#333;
            } 
        </style>
    </head>
    <body background="images/background.jpg">
        <%
    Object obj = session.getAttribute("user");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
        %> 

        <div style=" vertical-align:top; width:1024px; padding-left: 150px; " align="center" >

            <div align="center" style=" height:1200px;  background-color:#f6f6d4;">
                <div style=" color:#2d2f16;  font-family:Verdana, Geneva, sans-serif;">
                    <s:include value="header.jsp"></s:include> 

                    <div style="font-size:18px; height:75px; ">
                        <div style="float:left; padding-left:30px;">
                            &nbsp;&nbsp; 
                            &nbsp;&nbsp;<a href="regnav.action">Home</a></div>  <div style="float:right; padding-right:60px;"> <a href="logoutaction.action">Logout</a>  
                        </div></div>
                    <div style="font-family:Verdana, Geneva, sans-serif; color:#030;">
                        <p style="font-size:25px; color:#030;"><strong>
                                Account Information</strong></p>
                    </div>

                    <div style=" font-family:Verdana, Geneva, sans-serif; font-size:18px;">


                        <s:actionerror theme="jquery"/>   
                        <s:form action="useRegistration">
                            <s:textfield name="email" label="Email id"  value="%{userdetails.user}" readonly="true" disabled="true" />
                            <s:textfield name="fname" label="First Name" value="%{userdetails.firstname}"/>
                            <s:textfield name="lname" label="Last Name" value="%{userdetails.lastname}" />
                            <s:textfield name="mow"  label="Memorable word for security purposes"  value="%{userdetails.memorableWord}" javascriptTooltip="Eg:Your Mother's maiden name" />
                            <s:textfield name="company" label="Company Name" value="%{userdetails.company}"/>
                            <s:select label="Is your company VAT registered?" name="vatreg" headerKey="Please select" headerValue="Please select" list="{'True','False'}" value="%{userdetails.vatregister}"/>
                            <s:textfield name="vatno" label="What is your company’s VAT registration number?" value="%{userdetails.vatno}"/>
                            <s:textfield name="weblink" label="Company website/eshop web address" value="%{userdetails.webLink}"/>
                            <s:textfield name="duedate" label="Monthly Payment Due Date" value="%{userdetails.duedate}"/>
                            <s:textfield name="phone" label="Company main contact Direct line" value="%{userdetails.phone}"/>
                            <s:textfield name="mobile" label="Company main contact Mobile number" value="%{userdetails.mobile}"/>
                            <s:hidden name="approve" label="Approves" value="%{userdetails.approve}"/>
                            <s:hidden name="balance" label="Balance" value="%{userdetails.balance}"/>
                            <s:hidden name="note" label="Note" value="%{userdetails.note}"/>
                            <s:textfield name="bankname" label="Name of bank/building society" value="%{userdetails.bankname}"/>
                            <s:textfield name="accno" label="Bank account number (8 digits) " value="%{userdetails.accountNo}"/>
                            <s:textfield name="bsc" label="Branch sort code (6 digits) " value="%{userdetails.branchCode}"/>
                            <s:textfield name="accname" label="Name of account holder" value="%{userdetails.accholderName}"/>
                            <s:textarea label="Description" name="info" rows="3" cols="16.7" value="%{userdetails.info}"/>
                            <s:textfield name="addl1" label="Address Line 1" value="%{uaddr.addressline1}"/>
                            <s:textfield name="addl2" label="Address Line 2" value="%{uaddr.addressline2}"/>
                            <s:textfield name="city" label="City" value="%{uaddr.city}"/>
                            <s:textfield name="country" label="Country" value="%{uaddr.country}"/>
                            <s:textfield name="postcode" label="Post Code" value="%{uaddr.postcode}"/>
                            <s:submit value="Update Information"/>
                        </s:form>

                    </div>
                </div>
            </div> 
        </div>

        <div style="padding-left:150px;">
            <s:include value="footer.jsp"></s:include>
        </div>


    </body>
</html>
