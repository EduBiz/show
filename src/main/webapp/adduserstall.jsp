<%-- 
    Document   : adduserstall
    Created on : Dec 12, 2011, 10:48:05 AM
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
           <div style="height:350px; padding-top:60px;">
   <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif; color:#030;">Add New Stall and User &nbsp; &nbsp;</p>
      
        
         <div id="rounded-corner">
            <s:actionmessage theme="jquery" />  <s:actionerror theme="jquery"/>  
        </div>    
        <div>
<div align="center" style="font-family:Verdana, Geneva, sans-serif; font-size:18px; ">
              
               
                <s:form action="addstalluser">
                    <s:hidden name="showid" value="%{showid}"/>
                    <s:textfield name="uname" label="User Name" />
                    <s:textfield name="email" label="Email id" />
                    <s:hidden name="catgry" label="Stall"   value="stall"/>
                    <s:textfield name="sname" label="Stall Name" />
                    <s:submit value="Create User & Stall"/>
                </s:form>
            </div>
           
        </div>
        <br>
        <br>
        
        <div>
           
                       <form method="post"  >
                            <input type="button" value="Close Window" 
                                   onclick="window.close()"  >
                        </form>
                
        </div>
        </div>
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
