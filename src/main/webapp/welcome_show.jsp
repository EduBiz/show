<%-- 
    Document   : welcome_show
    Created on : Nov 9, 2011, 5:01:09 PM
    Author     : Administrator
--%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title>Show Admin Page</title>
        <s:head theme="jquery"/> 
        <sj:head/> 
        <sx:head />
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
        <div style="float:left; padding-left:30px;">
       &nbsp;&nbsp;<a href="accountinformation.action">Account information</a>  
             </div>  <div style="float:right; padding-right:60px;"> <a href="logoutaction.action">Logout</a>  
             </div></div>
         <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif;">Welcome Show Admin</p>
          

        </h1>
       <div id="rounded-corner">
            <s:actionmessage theme="jquery" />
        </div>    
      
        <div>
        <div>
            <div class="box">
                <div style="width:auto; height:60px; background-color:#cdcd5d; border-radius: 15px; ">
                    <p style="font-size:27px; color:#2d2f16; padding-top:10px; font-family:Verdana, Geneva, sans-serif;" align="center"><strong>Show List for the Member&nbsp; <s:property value="user.userName" />&nbsp;&nbsp;</strong> </p> </div>
                      
                </div>




                <div>
                    <table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <tr>
                            <th>Show Name</th>
                            <th>Show Logo</th>
                            <th>Show Layout</th>
                            <th>Show Image</th>
                            <th>Upload Show Images</th>
                            <th>Edit Show Info</th>
                            <th>Status</th>
                            <th>Add Stall/User</th>   
                            <th>Add Upcoming Events</th>   
                            <th>View Upcoming Events</th>   
                            <th>View Stalls</th>   
                            <th>Add Stall Display Position </th>   
                            
                            <s:iterator  value="showlist" >

                            <tr>
                                <s:url action="showinfo.action" var="showinfo">
                                        <s:param name="showId" value="%{showId}" />
                                        <s:param name="showname" value="%{showname}" />
                                        <s:param name="showCommision" value="%{showCommision}" />
                                        <s:param name="siteCommision" value="%{siteCommision}" />
                                        <s:param name="venueCommision" value="%{venueCommision}" />
                                        <s:param name="description" value="%{description}" />
                                        <s:param name="categories" value="%{categories}" />
                                        <s:param name="showtype" value="%{showtype}" />
                                        <s:param name="approve" value="%{approve}" />
                                        <s:param name="note" value="%{note}" />

                                </s:url>
                                <td><s:property value="showname" /> </td>
                                <td><img src="showlogo.action?id=<s:property value="%{showId}" />" alt="" width="50" height="20" /></td>
                                <td><img src="showlay.action?id=<s:property value="%{showId}" />" alt="" width="50" height="20" /></td>
                                <td><img src="showimg.action?id=<s:property value="%{showId}" />" alt="" width="50" height="20" /></td>
                                    <s:url action="uploadshownav.action" var="uploadshowpic">
                                        <s:param name="showId" value="%{showId}" />

                                </s:url>
                                <td> <s:a href="%{uploadshowpic}" cssClass="ask" ><img src="images/uplod.jpg" alt="" width="70" height="40" /></s:a> </td>
                                <td><s:a href="%{showinfo}" cssClass="ask" ><img src="images/pencil.png"/></s:a> </td>
                                <td><s:property value="status" /> </td>
                                   <s:url action="addstallnavuser.action" var="addstallnavuser">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                <td><s:a href="%{addstallnavuser}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false" ><img src="images/stalluser.png" alt="" width="70" height="40" /></s:a></td>    
                                   <s:url action="updateshownav.action" var="updateshownav">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                <td><s:a href="%{updateshownav}" cssClass="ask" ><img src="images/event.jpg" alt="" width="70" height="40" /></s:a></td>    
                                   <s:url action="viewshowevents.action" var="viewshowevents">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                 <td> <s:a href="%{viewshowevents}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><img src="images/calendar_icon.png" alt="" width="70" height="40" /></s:a> </td>
                                   <s:url action="viewshowstalls.action" var="viewshowstalls">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                 <td> <s:a href="%{viewshowstalls}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><img src="images/street_stall.png" alt="" width="70" height="40" /></s:a> </td>
                           
                                    <s:url action="showdisplaymanage.action" var="showdisplaymanage">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                 <td> <s:a href="%{showdisplaymanage}">Manage Stall Position</s:a> </td>
                            

 </tr>

                        </s:iterator>
                    </table>
                    <div  id="pageNavPosition">

                    </div> 

                </div>
            </div>
            <script type="text/javascript">
                var pager = new Pager('results', 20, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>
        </div> 
        </div>
   </div>   
         </div>
          </div>
<div style="padding-left:150px;">
<s:include value="footer.jsp"></s:include>
</div> 

    </body>
</html>
