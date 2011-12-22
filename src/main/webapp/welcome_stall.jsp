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
        <title> Sales Outlet Admin Page</title>
         <s:head theme="jquery"/>  
        <sj:head jqueryui="true" jquerytheme="flick"/> 
        <link rel="stylesheet" href="style.css" type="text/css" />
        <script type="text/javascript" src="pagination.js"></script>
        <script type="text/javascript" src="jquery.min.js"></script>



        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>

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
 <div align="center" style=" background-color:#f6f6d4; height: 700px;">
        <div align="center" style="font-size:24px;  border-top-left-radius: 15px;
  border-top-right-radius: 15px; background-color:#cdcd5d; height:120px;">
        <div style="float:left;"> <img src="images/m.gif" alt="" width="300px" height="100px" />
        </div>
        <div  style="padding-top:27px;float:left; padding-left:90px; color:#2d2f16; font-family:Verdana, Geneva, sans-serif;"><strong>WELCOME  SALES OUTLET ADMIN</strong>
        </div></div>
        </br>
        <div style="font-size:18px; height:75px; ">
        <div style="float:left; padding-left:30px;">
       &nbsp;&nbsp;<a href="stallhomenav.action">Home</a> 
           </div>  <div style="float:right; padding-right:60px;"> <a href="logoutaction.action">Logout</a>  
             </div></div>

 
        <div id="rounded-corner">
            <s:actionmessage theme="jquery"/>
        </div>   
<div align="center">
           <div class="box">
            <div style="width:auto; height:60px; background-color:#cdcd5d; border-radius: 15px; ">
                <p style="font-size:27px; color:#2d2f16; padding-top:10px; font-family:Verdana, Geneva, sans-serif;" align="center"><strong>Sales Outlet and Information</strong></p>
            </div> 
        <div style=" color:#2d2f16;  font-family:Verdana, Geneva, sans-serif;">
            <table class="user" id="results" cellspacing="15" cellpadding="8" >
                <tr>
                    <th>Edit Seller information</th>
                    <th>Manage All Products</th>
                    <th>Sales Outlet Name</th>
                    <th>Connected Event</th>
                    <th>Edit Sales Outlet Info</th>
                    <th>Status</th>
                    <th>Add Product</th>         
                    <th>Display Products</th></tr>
                    <s:iterator  value="stalllist" >
                       
                        <tr>
                             <s:url action="stallinfo.action" var="updatestallinfo">
                                <s:param name="stallId" value="%{stallId}" />
                                <s:param name="stallname" value="%{stallname}" />
                                <s:param name="description" value="%{description}" />
                                <s:param name="category" value="%{category}" />
                                <s:param name="approve" value="%{approve}" />
                                <s:param name="delivarytype" value="%{delivarytype}" />
                                <s:param name="note" value="%{note}" />
                                
                            </s:url>
                            <td><a href="accountinformation.action">Seller information</a> </td>
                            <td><a href="editproductnav.action">Click Here</a></td>
                            <td><s:property value="stallname" /></td>
                            <td><s:property value="show.showname" /> </td>
                            <td><s:a href="%{updatestallinfo}" cssClass="ask" ><img src="images/pencil.png"/></s:a> </td>
                            <td><s:property value="status" /> </td>
                            <td><a href="addpronav.action">Click here</a> </td>
                            
                               <s:url action="stalldispmanage.action" var="stalldispmanage">
                                <s:param name="stallid" value="%{stallId}" />
                               
                            </s:url>
                           
                               <td> <s:a href="%{stalldispmanage}" cssClass="ask"><img src="images/webManageIcon.gif" alt="" width="70" height="40" /></s:a> </td>
                            </tr>
                   
                       
                </s:iterator>
            </table>
            <div align="right" id="pageNavPosition"></div> 

        </div>
           </div>
     
            <script type="text/javascript">
                var pager = new Pager('results', 3, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>
        </div>
            



</div>
        
</div>
<div style="padding-left:150px;">
<s:include value="footer.jsp"></s:include>
</div>
    </body>
</html>
