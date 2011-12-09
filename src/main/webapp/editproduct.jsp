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
        <title> Stall Admin Page</title>
         <s:head theme="jquery"/> 
         <sj:head/> 
    </head>
    <body>
             <%
    Object obj= session.getAttribute("user");
   
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
     
    %>
        
   <h1><a href="stallhomenav.action">Home</a>&nbsp;&nbsp;<a href="logoutaction.action">Logout</a></h1>
    <div>
    Update  Product Details:
    <s:actionerror theme="jquery"/>   
    <s:form action="updateproduct" enctype="multipart/form-data" theme="xhtml">
        <s:hidden name="productid" value="%{productid}"/>
        <s:textfield name="pname" label="Product Name" value="%{pname}" />
        <s:textfield name="vat" label="Vat " value="%{vat}"  />
        <s:textfield name="price" label="Price" value="%{price}" />
        <s:textfield name="postage" label="Postage" value="%{postage}" />
        <s:select label="Delivary Time" name="deltime" headerKey="Please select" headerValue="Please select" list="{'One Day','Two Day','Three Day','One Week'}" value="%{deltime}" />
        <s:textarea label="Description" name="desc" rows="3" cols="16.7" value="%{desc}" />
        <s:textfield name="qty" label="Quantity" value="%{qty}" />
       <s:hidden name="sold" label="Units Sold"    value="%{sold}" />
       <s:file name="imag" label="Select Product Picture"></s:file>
       <s:submit value="Update Product"/>
     </s:form>
      
    </div>
    <div id="rounded-corner">
          <s:actionmessage theme="jquery"/>
    </div>    
        
        
    </body>
</html>
