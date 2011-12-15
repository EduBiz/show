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
    </head>
    <body>
        <%
Object obj = session.getAttribute("user");
   
    
if(obj==null)
   {
   response.sendRedirect(request.getContextPath()+"/sessionError.action");
}
      
        %>

        <p style="font-size:25px; color:#030;">Add New Stall and User &nbsp; &nbsp;</p>
      
        
         <div id="rounded-corner">
            <s:actionmessage theme="jquery" />  <s:actionerror theme="jquery"/>  
        </div>    
        <div>
            <div style="float:none" >
              
               
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
        
        <div>
           
                       <form method="post"  >
                            <input type="button" value="Close Window" 
                                   onclick="window.close()"  >
                        </form>
                
        </div>
        
    </body>
</html>
