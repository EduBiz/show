<%-- 
    Document   : viewshowstalls
    Created on : Dec 12, 2011, 6:17:10 PM
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
                        
 <div style="width:650px;" align="center" >
 <div align="center" style=" background-color:#f6f6d4;">
        <div align="center" style="font-size:24px;  border-top-left-radius: 15px;
  border-top-right-radius: 15px; background-color:#cdcd5d; height:120px; width:650px;">
        <div style="float:left;"> <img src="images/m.gif" alt="" width="300px" height="100px" />
        </div>
        </div>
           <div style="height:100%;">
                <div id="rounded-corner">
            <s:actionmessage theme="jquery"/>
        </div>   
            <div class="box">
                <div>
                    <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif;">Stalls and Products </p>
                </div>





                <div>
                    <table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <tr>
                            <th>Stall Name</th>
                            <th>Connected Show</th>
                            <th>Stall Logo</th>
                            <th>Stall Image</th>
                            <th>Status</th>
                            <th>View Products</th>  </tr>
                           <s:iterator  value="stalllist" >

                            <tr>

                               
                                <td><s:property value="stallname" /> </td>
                                 <td><s:property value="show.showname" /> </td>
                                 <td><img src="stalllogo.action?id=<s:property value="%{stallId}" />" alt="" width="50" height="20" /></td>
                                <td><img src="stallimg.action?id=<s:property value="%{stallId}" />" alt="" width="50" height="20" /></td>
                                <s:url action="showstallstatus.action" var="showstallstatus">
                                <s:param name="stallid" value="%{stallId}" />
                                <s:param name="showid" value="%{show.showId}" />
                                <s:param name="status" value="%{status}" />
                               
                            </s:url>
                           <td> <s:a href="%{showstallstatus}" ><s:property value="status" /></s:a> </td>
     
                                                                                             
                               <s:url action="stalldispnav.action" var="stalldispnav">
                                <s:param name="stallid" value="%{stallId}" />
                               
                            </s:url>
                           <td> <s:a href="%{stalldispnav}" ><img src="images/view.jpg" alt="" width="30" height="20" /></s:a> </td>
     

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
        
        
         <div>
                        <form method="post" >
                            <input type="button" value="Close Window" 
                                   onclick="window.close()">
                        </form>
                    </div>
           </div>   
         </div>
   <div style="width:650px; height:70px; border-bottom-left-radius: 15px;
  border-bottom-right-radius: 15px; background-color:#cdcd5d;">
        </div>
 </div>
            
        </div> 
    </body>
</html>
