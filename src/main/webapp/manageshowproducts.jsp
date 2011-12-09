<%-- 
    Document   : editproductlist
    Created on : Nov 30, 2011, 4:21:00 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title>Manage Show Products</title>
        
        <script type="text/javascript" src="jquery.min.js"></script>
        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>
     
 <script type="text/javascript" src="pagination.js"></script>
    </head>
    <body>
        <%
Object obj= session.getAttribute("user");
Object obj1=session.getAttribute("Show");
if(obj==null)
{
response.sendRedirect(request.getContextPath()+"/sessionError.action");
}
else if(obj1==null)
{
response.sendRedirect(request.getContextPath()+"/showerror.action");
}
        %>
        <h1><a href="logoutaction.action">Logout</a></h1>
        <div class="box">
            <div>
                <p style="font-size:25px; color:#030;" align="center">Products</p>
            </div>

            <s:actionmessage/>
            <form action="searchproduct.action"> <div><input type="text" value="Search" name="search" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                </div></form>     

            <div>
                <table class="user" id="results" cellspacing="15" cellpadding="8" >
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Edit</th>
                    <th>Status</th>
                    <th>Delete</th>   

                    <s:iterator end="1" value="prodlist" status="rowstatus">
                        <s:if test="#rowstatus.odd == true">
                            <tr>
                                <s:url action="editproduct.action" var="editproduct">
                                    <s:param name="productid" value="%{productId}" />
                                    <s:param name="pname" value="%{name}" />
                                    <s:param name="vat" value="%{vat}" />
                                    <s:param name="price" value="%{price}" />
                                    <s:param name="postage" value="%{postage}" />
                                    <s:param name="deltime" value="%{delivaryTime}" />
                                    <s:param name="desc" value="%{description}" />
                                    <s:param name="qty" value="%{qty}" />
                                    <s:param name="sold" value="%{unitsSold}" />
                                </s:url>
                                <td><s:property value="name" /></td>
                                <td><s:property value="price" /> </td>
                                <td><img src="sproductimg.action?id=<s:property value="%{productId}" />" alt="" width="50" height="20" /></td>
                                <td><s:a href="%{editproduct}" cssClass="ask" ><img src="images/pencil.png"/></s:a> </td>
                                <td><s:property value="status" /> </td>
                                <s:url action="deleteproduct.action" var="deletepro">
                                    <s:param name="productId" value="%{productId}" />
                                </s:url>
                                <td> <s:a href="%{deletepro}" cssClass="ask"><img src="images/trash.png" /></s:a> </td>
                                </tr>
                        </s:if>
                        <s:else>
                            <tr class="alt">
                                <s:url action="editproduct.action" var="editproduct">
                                    <s:param name="productid" value="%{productId}" />
                                    <s:param name="pname" value="%{name}" />
                                    <s:param name="vat" value="%{vat}" />
                                    <s:param name="price" value="%{price}" />
                                    <s:param name="postage" value="%{postage}" />
                                    <s:param name="deltime" value="%{delivaryTime}" />
                                    <s:param name="desc" value="%{description}" />
                                    <s:param name="qty" value="%{qty}" />
                                    <s:param name="sold" value="%{unitsSold}" />
                                </s:url>
                                <td><s:property value="name" /> </td>
                                <td><s:property value="price" /> </td>
                                <td><img src="sproductimg.action?id=<s:property value="%{productId}" />" alt=""  width="50" height="20" /></td>
                                <td><s:a href="%{editproduct}" cssClass="ask"><img src="images/pencil.png"/></s:a></td>
                                <td><s:property value="status" /> </td>

                                <s:url action="deleteproduct.action" var="deletepro">
                                    <s:param name="productId" value="%{productId}" />
                                </s:url>
                                <td> <s:a href="%{deletepro}" cssClass="ask"><img src="images/trash.png"/></s:a> </td>
                                </tr>
                        </s:else>
                    </s:iterator>
                </table>
                <div align="right" id="pageNavPosition"></div> 
 </div>



        </div>
            <div>
        <script type="text/javascript">
            var pager = new Pager('results', 3, 'pager', 'pageNavPosition');
            pager.init();
            pager.showPage(1);
        </script>
            </div>

<script type="text/javascript" src="jquery-latest.js"></script>
<script type="text/javascript" src="zoomer.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
 	$('ul.thumb li').Zoomer({speedView:200,speedRemove:400,altAnim:true,speedTitle:400,debug:false});
});
</script>
<a href="#" class="ask">click</a>
    </body>
</html>
