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
   <body background="images/background.jpg">
        <%
Object obj = session.getAttribute("user");

    
if(obj==null)
  {
  response.sendRedirect(request.getContextPath()+"/sessionError.action");
}
 
        %>
       <div style=" vertical-align:top; width:1024px; padding-left: 150px; " align="center" >
 <div align="center" style=" height:600px; background-color:#f6f6d4;">
        <s:include value="header.jsp"></s:include>
        
        <div style="color:#2d2f16; height: 375px; font-family:Verdana, Geneva, sans-serif; font-size:15px; padding-top:50px;"><strong>
        <div>
        <img src="images/uploadimages.gif" height="150px" width="250px;"/>
        </div>
            <s:actionerror theme="jquery"/>  
            <s:form action="uploadstallimg"  enctype="multipart/form-data">
                <s:hidden name="stallid" value="%{stallid}"/>
                 <div><p style="color:#2d2f16; height: 70px; font-family:Verdana, Geneva, sans-serif; font-size:21px;"> <strong>Select Images For Stall:</strong></div>
                <s:file name="logo" label="Select Stall Logo"></s:file>
                <s:file name="ban" label="Select Stall Banner Image"></s:file>

                <s:submit value="Upload" />

            </s:form>
            <s:actionmessage/>
            </strong>
        </div>
           
 </div>
            
        </div>
        <div style="padding-left:150px;">
<s:include value="footer.jsp"></s:include>
</div> 
    </body>
</html>
