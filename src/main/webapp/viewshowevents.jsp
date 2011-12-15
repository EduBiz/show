<%-- 
    Document   : viewshowevents
    Created on : Dec 12, 2011, 4:36:05 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title>Show Admin Page</title>
        <s:head theme="jquery"/> 
        <sj:head/> 
    
        <script type="text/javascript" src="pagination.js"></script>

        <script type="text/javascript" src="jquery.min.js"></script>



        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>
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
        
        
         <div>
                        <form method="post" >
                            <input type="button" value="Close Window" 
                                   onclick="window.close()">
                        </form>
                    </div>
        
        
    </body>
</html>
