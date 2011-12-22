<%-- 
    Document   : updateshow
    Created on : Nov 18, 2011, 3:19:01 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Show Events</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
       
       
        <script type="text/javascript" src="pagination.js"></script>

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
       
        <s:include value="header.jsp"></s:include>
          <div style="font-family:Verdana, Geneva, sans-serif; color:#2d2f16;">
           <div style="font-family:Verdana, Geneva, sans-serif; color:#2d2f16;">
                <p style="font-size:25px; color:#030;"><strong>Add New Show Events</strong></p></div>
            <s:actionerror theme="jquery"/>  
            <s:form action="updateshowevents">
                <s:hidden name="showid" value="%{showid}"/>
                <s:textfield name="venue" label="Show Venue"/>
                <sj:datepicker name="showdate" displayFormat="mm/dd/yy" label="Show Date"/>
                <s:submit value="Save Event"/>
            </s:form>
        </div>
        
             <div style=" height:300px;  background-color:#f6f6d4;">
            <div class="box">
         
                   <div style="width:auto; height:60px; background-color:#cdcd5d; border-radius: 15px; ">
                <p style="font-size:27px; color:#2d2f16; padding-top:10px; font-family:Verdana, Geneva, sans-serif;" align="center"><strong>Upcoming Events </strong></p>
                </div>




                <div style=" height:100px;  background-color:#f6f6d4;">
                    <table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <tr>
                            <th>Show Name</th>
                            <th>Venue</th>
                            <th>Show Date</th>
                           
                            <s:iterator  value="showevents" >

                            <tr>

                                <td><s:property value="show.showname" /> </td>
                                <td><s:property value="venue" /> </td>
                                <td><s:property value="showdate" /></td>
                               

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
<div style="padding-left:150px;">
<s:include value="footer.jsp"></s:include>
</div> 
      
    </body>
</html>
