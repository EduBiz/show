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
                    <p style="font-size:25px; color:#030;"> <a href="showadminhomenav.action">Home</a> &nbsp; &nbsp;<a href="logoutaction.action">Logout</a></p>
                </div>
          <div>
            <h1>Add New Show Events</h1>
            <s:actionerror theme="jquery"/>  
            <s:form action="updateshowevents">
                <s:hidden name="showid" value="%{showid}"/>
                <s:textfield name="venue" label="Show Venue"/>
                <sj:datepicker name="showdate" displayFormat="mm/dd/yy" label="Show Date"/>
                <s:submit value="Save Event"/>
            </s:form>
        </div>
        
             <div>
            <div class="box">
              <div>
                    <p style="font-size:25px; color:#030;">Upcoming Events </p>
                </div>




                <div>
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
      
        
        
      
    </body>
</html>
