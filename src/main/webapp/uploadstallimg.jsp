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
        <title>Update Stall Images </title>
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
        <div>
            <s:actionerror theme="jquery"/>  
            <s:form action="uploadstallimg"  enctype="multipart/form-data">
                <s:hidden name="stallid" value="%{stallid}"/>
                <h3>Select Images For Stall:</h3>
                <s:file name="logo" label="Select Stall Logo"></s:file>
                <s:file name="ban" label="Select Stall Banner Image"></s:file>

                <s:submit value="Upload" />

            </s:form>
            <s:actionmessage/>
            <div>
                
            </div>
        </div>
    </body>
</html>
