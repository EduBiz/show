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
            <s:actionerror theme="jquery"/>  
            <s:form action="updateshow">
                <s:hidden name="showId" value="%{show.showId}"/>
                <s:textfield name="showname" label="Show Name"  value="%{show.showname}"  />
                <s:textarea name="description" label="Description" value="%{show.description}"   rows="3" cols="16.7" />
                <s:textfield name="showCommision" label="Show Commision"  value="%{show.showCommision}"  />
                <s:textfield name="siteCommision" label="Site Commision"  value="%{show.siteCommision}"  />
                <s:textfield name="venueCommision" label="Venue Commision"  value="%{show.venueCommision}"  />
                <s:textfield name="showtype" label="Show Type"  value="%{show.showtype}"  />
                <s:textarea name="categories" label="Categories" value="%{show.categories}"   rows="3" cols="16.7" />
                <s:textfield name="approve" label="Approves"  value="%{show.approve}"  />
                <s:textarea name="note" label="Note" value="%{show.note}"   rows="3" cols="16.7" />
                <s:submit value="Save Changes"/>

            </s:form>
        </div>
    </body>
</html>
