<%-- 
    Document   : stalldisplay
    Created on : Dec 6, 2011, 5:29:16 PM
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
        <title>Stall Display Products</title>
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

    </head>
     <body background="images/background.jpg" style="width:600px; " >
        <%
Object obj= session.getAttribute("user");

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
        <div>
             <div id="rounded-corner">
            <s:actionmessage theme="jquery"/>
        </div>   
            <div class="box">
                <div>
                    <p style="font-size:25px; color:#030;">Stall&nbsp;&nbsp;<s:property value="stall.stallname" />&nbsp;&nbsp; Products</p>
                </div>




                <div style="height:330px;">
                    <table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <tr>
                            <th>Product Name</th>
                            <th>Connected Stall</th>

                            <th>Product Image</th>

                            <th>Status</th>

                            <s:iterator end="1" value="stalldisp" status="rowstatus">

                            <tr>

                                <td><s:property value="product.name" /> </td>
                                <td><s:property value="stall.stallname" /></td>
                                <td><img src="productimg.action?id=<s:property value="%{product.productId}" />" alt="" width="50" height="20" /></td>
                               
                          <s:url action="stalldisplayprodstatus.action" var="stalldisplayprodstatus">
                                <s:param name="stallid" value="%{stall.stallId}" />
                                <s:param name="productid" value="%{product.productId}" />
                                <s:param name="status" value="%{product.status}" />
                               
                            </s:url>
                           <td> <s:a href="%{stalldisplayprodstatus}" ><s:property value="product.status" /> </s:a> </td>
     

                            </tr>

                        </s:iterator>
                    </table>
                    <div  id="pageNavPosition">

                    </div> 
                    <div>
                        <form method="post" >
                            <input type="button" value="Close Window" 
                                   onclick="window.close()">
                        </form>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                var pager = new Pager('results', 20, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>
        </div>
   <div style="width:650px; height:70px; border-bottom-left-radius: 15px;
  border-bottom-right-radius: 15px; background-color:#cdcd5d;">
        </div>
 </div>
            
        </div>
        <!--<a href="http://www.google.com" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false">Food</a>-->
    </body>
</html>
