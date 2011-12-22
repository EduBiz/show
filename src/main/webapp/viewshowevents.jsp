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
        <%/*
Object obj = session.getAttribute("user");

    
if(obj==null)
  {
  response.sendRedirect(request.getContextPath()+"/sessionError.action");
}
 
        */%>
                  
 <div style="width:650px;" align="center" >
 <div align="center" style=" background-color:#f6f6d4;">
        <div align="center" style="font-size:24px;  border-top-left-radius: 15px;
  border-top-right-radius: 15px; background-color:#cdcd5d; height:120px; width:650px;">
        <div style="float:left;"> <img src="images/m.gif" alt="" width="300px" height="100px" />
        </div>
        </div>
           <div style="height:100%;">
            <div class="box">
                <div>
     <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif;;">Upcoming Events </p>
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
        
        </div>   
     </div>
   <div style="width:650px; height:70px; border-bottom-left-radius: 15px;
  border-bottom-right-radius: 15px; background-color:#cdcd5d;">
        </div>
 </div>
            
        </div>
    </body>
</html>
