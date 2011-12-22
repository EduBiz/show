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
        <title>Update Show</title>
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
           
 <div align="center" style=" height:700px;  background-color:#f6f6d4;">
       <div style="style="font-family:Verdana, Geneva, sans-serif; font-size:18px; ">
        <s:include value="header.jsp"></s:include> 
        <div
        style="padding-top:30px; font-family:Verdana, Geneva, sans-serif; font-size:18px;">
        <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif;">Update Show</p>
            <s:actionerror theme="jquery"/>  
            <s:form action="updateshow">
                <s:hidden name="showId" value="%{showId}"/>
                <s:textfield name="showname" label="Show Name"  value="%{showname}"  />
                <s:textarea name="description" label="Description" value="%{description}"   rows="3" cols="16.7" />
                <s:textfield name="showCommision" label="Show Commision"  value="%{showCommision}"  />
                <s:textfield name="siteCommision" label="Site Commision"  value="%{siteCommision}"  />
                <s:textfield name="venueCommision" label="Venue Commision"  value="%{venueCommision}"  />
                <s:textfield name="showtype" label="Show Type"  value="%{showtype}"  />
                <s:textarea name="categories" label="Categories" value="%{categories}"   rows="3" cols="16.7" />
                <s:textfield name="approve" label="Approves"  value="%{approve}"  />
                <s:textarea name="note" label="Note" value="%{note}"   rows="3" cols="16.7" />
                <s:submit value="Save Changes"/>

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
