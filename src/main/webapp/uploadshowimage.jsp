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
           
 <div align="center" style=" height:600px;  background-color:#f6f6d4;">
       <div style=" color:#2d2f16;  font-family:Verdana, Geneva, sans-serif;">
        <s:include value="header.jsp"></s:include> 
    <div>
        <s:actionmessage theme="jquery"/>
    </div>
    <div style="font-family:Verdana, Geneva, sans-serif; font-size:18px; padding-top:60px;">
        <s:actionerror theme="jquery"/>  
     <s:form action="uploadshowimg"  enctype="multipart/form-data">
         <s:hidden name="showId" value="%{showId}"/>   
         <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif;">Please  Select All Images For Show</p>
         <s:file name="logo" label="Select Show Logo*"></s:file>
         <s:file name="imag" label="Select Show Picture*"></s:file>
         <s:file name="layout" label="Select Show Layout*"></s:file>
         <s:submit label="Upload" />
                  
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