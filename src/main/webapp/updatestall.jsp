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
        <title>Update Sales Outlet</title>
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
 <div align="center" style=" background-color:#f6f6d4;">
        <s:include value="header.jsp"></s:include>
         <div style="font-size:18px; height:75px; ">
        <div style="float:left; padding-left:30px;">
      
             &nbsp;&nbsp;<a href="stallhomenav.action">Home</a></div>  <div style="float:right; padding-right:60px;"> <a href="logoutaction.action">Logout</a>  
             </div></div>
        <div><p style="color:#2d2f16; height: 70px; font-family:Verdana, Geneva, sans-serif; font-size:21px;"> <strong>Sales Outlet Information</strong></p></div>
        <div style="float:left; padding-left:60px;"> 
        <img src="images/update.gif" height="150px" width="230px"/>
        </div>
        <div style="color:#2d2f16; height: 375px; font-family:Verdana, Geneva, sans-serif; padding-right:250px; font-size:15px;"><strong>
            <s:actionerror theme="jquery"/>  
            <s:form action="updatestall" enctype="multipart/form-data">
                <s:hidden name="stallId" value="%{stallId}"/>
                <s:textfield name="stallname" label="Name of Sales Outlet"  value="%{stallname}"  />
                <s:textarea name="description" label="Description" value="%{description}"   rows="3" cols="16.7" />
                <s:textfield name="category" label="Category "  value="%{category}"  />
                <s:textfield name="delivarytype" label="Delivary Type" value="%{delivarytype}"   />
                <s:textfield name="approve" label="Product approved for sale"  value="%{approve}"  />
                <s:textarea name="note" label="Note" value="%{note}"   rows="3" cols="16.7" />
                <s:file name="logo" label="Select Stall Logo*"></s:file>
                <s:file name="ban" label="Select Stall Banner Image*"></s:file>
                <s:file name="img" label="Select Stall  Image*"></s:file>
                
                <s:submit value="Save Changes"/>

            </s:form>
        </strong></div>
           
 </div>
            
        </div>
          <div style="padding-left:150px;">
<s:include value="footer.jsp"></s:include>
</div>  
    </body>
</html>
