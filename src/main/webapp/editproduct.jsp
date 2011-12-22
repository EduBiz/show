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
        <title> Sales Outlet Product Page</title>
        <s:head theme="jquery"/> 
        <sj:head/> 
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
Object obj= session.getAttribute("user");
   
if(obj==null)
   {
   response.sendRedirect(request.getContextPath()+"/sessionError.action");
}
     
        %>


        <div style=" vertical-align:top; width:1024px; padding-left: 150px; " align="center" >

            <div align="center" style=" height:600px;  background-color:#f6f6d4;">
                <div style=" color:#2d2f16;  font-family:Verdana, Geneva, sans-serif;">
                    <s:include value="header.jsp"></s:include> 

                     <div style="font-size:18px; height:75px; ">
                    <div style="float:left; padding-left:30px;">
                        &nbsp;&nbsp;<a href="stallhomenav.action">Home</a> 
                    </div>  <div style="float:right; padding-right:60px;"> <a href="logoutaction.action">Logout</a>  
                    </div></div>
                    <div align="center" style="font-family:Verdana, Geneva, sans-serif; font-size:18px; ">
                        <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif; color:#030;">Update  Product Details</p>
                        <s:actionerror theme="jquery"/>   
                        <s:form action="updateproduct" enctype="multipart/form-data" theme="xhtml">
                            <s:hidden name="productid" value="%{productid}"/>
                            <s:textfield name="pname" label="Product Name" value="%{pname}"/>
                            <s:textfield name="vat" label="Vat " value="%{vat}" />
                            <s:select label="Delivary Time" name="deltime" headerKey="Please select" headerValue="Please select" list="{'One Day','Two Day','Three Day','One Week'}" value="%{deltime}"/>
                            <s:textarea label="Description" name="desc" rows="3" cols="16.7" value="%{desc}"/>
                            <s:textfield name="qty" label="Quantity where stocks are limited" value="%{qty}"/>
                            <s:hidden name="sold" label="Units Sold"   value="0"/>
                            <s:file name="imag" label="Select Product Picture1"></s:file>
                            <s:file name="img2" label="Select Product Picture2"></s:file>
                            <s:file name="img3" label="Select Product Picture3"></s:file>
                            <s:textfield name="price" label="Product Price" value="%{price}" />
                            <s:textfield name="postage" label="Cost of Shipping" value="%{postage}"/>
                            <s:submit value="Update Product"/>
                        </s:form>

                    </div>
                    <div id="rounded-corner">
                        <s:actionmessage theme="jquery"/>
                    </div> 
                </div>   
            </div>
        </div>
        <div style="padding-left:150px;">
            <s:include value="footer.jsp"></s:include>
        </div> 

    </body>
</html>
