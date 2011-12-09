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
    Object obj1=session.getAttribute("Stall");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
       else if(obj1==null)
       {
       response.sendRedirect(request.getContextPath()+"/stallerror.action");
       }
    %>
        
    <h1>welcome Stall Admin &nbsp;&nbsp;<a href="logoutaction.action">Logout</a> &nbsp;&nbsp;<a href="accountinformation.action">Account information</a>  
        <a href="stallinfo.action">Update Stall information </a>&nbsp;&nbsp;  <a href="uploadstallnav.action">Upload Stall Images </a> &nbsp;&nbsp;<a href="editproductnav.action">Manage Products</a>   </h1>
   
    <div>
     Add new Products:
    <s:actionerror theme="jquery"/>   
    <s:form action="addproduct" enctype="multipart/form-data" theme="xhtml">
        <s:textfield name="pname" label="Product Name" />
        <s:textfield name="vat" label="Vat " />
        <s:textfield name="price" label="Price" />
        <s:textfield name="postage" label="Postage" />
        <s:select label="Delivary Time" name="deltime" headerKey="Please select" headerValue="Please select" list="{'One Day','Two Day','Three Day','One Week'}" />
        <s:textarea label="Description" name="desc" rows="3" cols="16.7"/>
        <s:textfield name="qty" label="Quantity" />
       <s:hidden name="sold" label="Units Sold"   value="0"/>
       <s:file name="imag" label="Select Product Picture"></s:file>
       <s:submit value="Add Product"/>
     </s:form>
      
    </div>
    <div id="rounded-corner">
          <s:actionmessage theme="jquery"/>
    </div>    
        
        
    </body>
</html>
