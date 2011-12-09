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
        <title> Stall Admin Page</title>
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
    <body>
        <%
Object obj= session.getAttribute("user");

if(obj==null)
   {
   response.sendRedirect(request.getContextPath()+"/sessionError.action");
}
 
        %>

        <h1>welcome Stall Admin &nbsp;&nbsp;<a href="logoutaction.action">Logout</a> &nbsp;&nbsp;<a href="accountinformation.action">Account information</a>  
            <a href="stallinfo.action">Update Stall information </a>&nbsp;&nbsp;  <a href="uploadstallnav.action">Upload Stall Images </a> &nbsp;&nbsp;<a href="editproductnav.action">Manage Products</a>   </h1>

        <div>
            Add new Products:
            <s:actionerror theme="jquery"/>   
            <s:form action="addproduct" enctype="multipart/form-data" theme="xhtml">
                <s:textfield name="pname" label="Product Name" />
                <s:textfield name="vat" label="Vat " />
                <s:textfield name="price" label="Price" />
                <s:textfield name="postage" label="Postage" />
                <s:select label="Delivary Time" name="deltime" headerKey="Please select" headerValue="Please select" list="{'One Day','Two Day','Three Day','One Week'}" />
                <s:textarea label="Description" name="desc" rows="3" cols="16.7"/>
                <s:textfield name="qty" label="Quantity" />
                <s:hidden name="sold" label="Units Sold"   value="0"/>
                <s:file name="imag" label="Select Product Picture"></s:file>
                <s:submit value="Add Product"/>
            </s:form>

        </div>
        <div id="rounded-corner">
            <s:actionmessage theme="jquery"/>
        </div>    




        <div>
           <div class="box">
            <div>
                <p style="font-size:25px; color:#030;" align="center">Products</p>
            </div> 
        <div>
            <table class="user" id="results" cellspacing="15" cellpadding="8" >
                <tr>
                    <th>Stall Name</th>
                    <th>Connected Show</th>
                    <th>Stall Logo</th>
                    <th>Stall Image</th>
                    <th>Upload Stall Images</th>
                    <th>Edit Stall Info</th>
                    <th>Status</th>
                    <th>View Products</th>   
                    <th>Display Products</th></tr>
                    <s:iterator end="1" value="stalllist" status="rowstatus">
                        <s:if test="#rowstatus.odd == true">
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
                            <td><s:property value="stallname" /></td>
                            <td><s:property value="show.showname" /> </td>
                            <td><img src="stalllogo.action?id=<s:property value="%{stallId}" />" alt="" width="50" height="20" /></td>
                            <td><img src="stallimg.action?id=<s:property value="%{stallId}" />" alt="" width="50" height="20" /></td>
                            <s:url action="uploadstallnav.action" var="uploadstallpic">
                                <s:param name="stallid" value="%{stallId}" />
                               
                            </s:url>
                            <td> <s:a href="%{uploadstallpic}" cssClass="ask" ><img src="images/uplod.jpg" alt="" width="70" height="40" /></s:a> </td>
                            <td><s:a href="%{updatestallinfo}" cssClass="ask" ><img src="images/pencil.png"/></s:a> </td>
                            <td><s:property value="status" /> </td>
                            <s:url action="stalldispnav.action" var="stalldispnav">
                                <s:param name="stallid" value="%{stallId}" />
                               
                            </s:url>
                           <td> <s:a href="%{stalldispnav}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><img src="images/view.jpg" alt="" width="30" height="20" /></s:a> </td>
                           <s:url action="stalldispmanage.action" var="stalldispmanage">
                                <s:param name="stallid" value="%{stallId}" />
                               
                            </s:url>
                           
                               <td> <s:a href="%{stalldispmanage}" cssClass="ask"><img src="images/addremove.jpg" alt="" width="70" height="40" /></s:a> </td>
                            </tr>
                    </s:if>
                    <s:else>
                        <tr class="alt">
                              <s:url action="stallinfo.action" var="updatestallinfo">
                                <s:param name="stallId" value="%{stallId}" />
                                <s:param name="stallname" value="%{stallname}" />
                                <s:param name="description" value="%{description}" />
                                <s:param name="category" value="%{category}" />
                                <s:param name="approve" value="%{approve}" />
                                <s:param name="delivarytype" value="%{delivarytype}" />
                                <s:param name="note" value="%{note}" />
                                
                            </s:url>
                            <td><s:property value="stallname" /></td>
                            <td><s:property value="show.showname" /> </td>
                            <td><img src="stalllogo.action?id=<s:property value="%{stallId}" />" alt="" width="50" height="20" /></td>
                            <td><img src="stallimg.action?id=<s:property value="%{stallId}" />" alt="" width="50" height="20" /></td>
                            <s:url action="uploadstallnav.action" var="uploadstallpic">
                                <s:param name="stallid" value="%{stallId}" />
                               
                            </s:url>
                            <td> <s:a href="%{uploadstallpic}" cssClass="ask" ><img src="images/uplod.jpg" alt="" width="70" height="40" /></s:a> </td>
                            <td><s:a href="%{updatestallinfo}" cssClass="ask" ><img src="images/pencil.png"/></s:a> </td>
                            <td><s:property value="status" /> </td>
                            <s:url action="stalldispnav.action" var="stalldispnav">
                                <s:param name="stallid" value="%{stallId}" />
                               
                            </s:url>
                           <td> <s:a href="%{stalldispnav}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><img src="images/view.jpg" alt="" width="30" height="20" /></s:a> </td>
                           <s:url action="stalldispmanage.action" var="stalldispmanage">
                                <s:param name="stallid" value="%{stallId}" />
                               
                            </s:url>
                           
                               <td> <s:a href="%{stalldispmanage}" cssClass="ask"><img src="images/addremove.jpg" alt="" width="70" height="40" /></s:a> </td>
                            </tr>
                    </s:else>
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

    </body>
</html>
