<%-- 
    Document   : updateshow
    Created on : Nov 18, 2011, 3:19:01 PM
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
        <title>Update  Show Images</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <s:head theme="jquery"/>  
        <sj:head jqueryui="true" jquerytheme="flick"/> 
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
    <div>
        <s:actionmessage theme="jquery"/>
    </div>
    <div>
        <s:actionerror theme="jquery"/>  
     <s:form action="uploadshowimg"  enctype="multipart/form-data">
            <h3>Please  Select All Images For Show:</h3>
         <s:file name="logo" label="Select Show Logo*"></s:file>
         <s:file name="imag" label="Select Show Picture*"></s:file>
         <s:file name="layout" label="Select Show Layout*"></s:file>
         <s:submit label="Upload" />
                  
    </s:form>
    </div>
    </body>
</html>