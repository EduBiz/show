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
       <link rel="stylesheet" href="css/screen1.css" type="text/css" media="screen" title="default" />

 <s:head theme="jquery"/>  
        <sj:head jqueryui="true" jquerytheme="flick"/> 
        
       <script type="text/javascript" src="pagination.js"></script>
        <script type="text/javascript" src="jquery.min.js"></script>



        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>
        <link rel="stylesheet" href="style.css" type="text/css" />
        <script type="text/javascript" src="pagination.js"></script>
        <script type="text/javascript" src="jquery.min.js"></script>



        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>
     <style type="text/css">
.button
{
	background:url(images/buttons/addproduct.gif) no-repeat;
	border: none;
	cursor: pointer;
	display: block;
	float: left;
	height: 30px;
	margin: 0 4px 0 0;
	padding: 0;
	text-indent: -3000px;
	width: 80px;
}
</style>  
</head>
<body> 
      <%
Object obj= session.getAttribute("user");

if(obj==null)
{
response.sendRedirect(request.getContextPath()+"/sessionError.action");
}

      %>
<!-- Start: page-top-outer -->
<div id="page-top-outer">    

<!-- Start: page-top -->
<div id="page-top">

	<!-- start logo -->
	<div id="logo">
	<a href=""><img src="images/m.gif" width="250" height="70" alt="" /></a>
	</div>
	<!-- end logo -->
	
	
 	<div class="clear"></div>

</div>
<!-- End: page-top -->

</div>
<!-- End: page-top-outer -->
	
<div class="clear">&nbsp;</div>
 
<!--  start nav-outer-repeat................................................................................................. START -->
<div class="nav-outer-repeat"> 
<!--  start nav-outer -->
<div class="nav-outer"> 

		<!-- start nav-right -->
		<div id="nav-right">
		
			
			<div class="nav-divider">&nbsp;</div>
			<a href="logoutaction.action" id="logout"><img src="images/shared/nav/nav_logout.gif" width="64" height="14" alt="" /></a>
			<div class="clear">&nbsp;</div>
		
			<!--  start account-content -->	
			<div class="account-content">
			<div class="account-drop-inner">
				<a href="" id="acc-settings">Settings</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-details">Personal details </a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-project">Project details</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-inbox">Inbox</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-stats">Statistics</a> 
			</div>
			</div>
			<!--  end account-content -->
		
		</div>
		<!-- end nav-right -->


		<!--  start nav -->
		<div class="nav">
		<div class="table">
		
		<ul class="select"><li><a href="stallhomenav.action"><b>Home</b></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		
		
		<div class="clear"></div>
		</div>
		<div class="clear"></div>
		</div>
		<!--  start nav -->

</div>
<div class="clear"></div>
<!--  start nav-outer -->
</div>
<!--  start nav-outer-repeat................................................... END -->
 
 <div class="clear"></div>
 
<!-- start content-outer -->
<div id="content-outer">
<!-- start content -->
<div id="content">


<div id="page-heading"><h1>Products</h1></div>
 
<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
	<th class="topleft"></th>
	<td id="tbl-border-top">&nbsp;</td>
	<th class="topright"></th>
	<th rowspan="3" class="sized">&nbsp;</th>
</tr>
<tr>
	<td id="tbl-border-left"></td>
	<td>
	<!--  start content-table-inner -->
	<div id="content-table-inner">
	
	<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr valign="top">
	<td>
	
	
		<!-- start id-form -->
        <s:actionmessage theme="jquery"/>
           
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
                                <form action="searchproduct.action">
		<tr>
			<th valign="top">Products:</th>
			<td><input type="text" value="Search" name="search" size="20" onBlur="if(this.value == '') { this.value = 'Search'; }" onFocus="if(this.value == 'Search') { this.value = ''; }" class="inp-form" /></td>
			<td></td>
		</tr>
		
		<tr>
			<th valign="top"></th>
			<td>  <input type="submit" value="Go" class="form-submit"/></td>
			<td></td>
		</tr>
        </form>
		<tr>
       
        <td colspan="3">
		<!--  start content-table-inner ...................................................................... START -->
		<div id="content-table-inner">
		
			<!--  start table-content  -->
			<div id="table-content">
			
			<div style="float:left;">
           <br>
           <br>
           <br>
            
          
				<table  width="100%" cellspacing="0" >
                  
				<tr>
					<td  background="images/table/tableheaderfront.gif" width="100px" height="35px;" style="color:#FFF" align="center"> &nbsp;&nbsp;&nbsp;Product Id</td>
			      
			     	<td  background="images/table/tabelheadercenter.gif" width="100px" height="35px;" style="color:#FFF" align="center">Product Name</td>
                    <td  background="images/table/tabelheadercenter.gif" width="100px" height="35px;" style="color:#FFF" align="center">Price</td>
                    <td  background="images/table/tabelheadercenter.gif" width="100px" height="35px;" style="color:#FFF" align="center">Image</td>
                      <td  background="images/table/tabelheadercenter.gif" width="100px" height="35px;" style="color:#FFF" align="center">Edit</td>
                    <td  background="images/table/tabelheadercenter.gif" width="100px" height="35px;" style="color:#FFF" align="center">Status</td>
                   
			     	<td  background="images/table/tabelheaderback.gif" width="100px" height="35px;" style="color:#FFF" align="center">Delete</td>
			    
			      <s:iterator value="prodlist" >
                                   
		
                
              <tr class="user" id="product-table">
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
				
 
                            
                                <td align="center" valign="middle"><s:property value="productId" /></td>
                                            <td align="center" valign="middle"><s:property value="name" /></td>
                                            <td align="center" valign="middle"><s:property value="price" /> </td>
                                            <td align="center" valign="middle"><img src="productimg.action?id=<s:property value="%{productId}" />" alt="" width="50" height="20" /></td>
                                            <td align="center" valign="middle"><s:a href="%{editproduct}" cssClass="ask" ><img src="images/pencil.png"/></s:a> </td>
                                            <td align="center" valign="middle"><s:property value="status" /> </td>
                                            <s:url action="deleteproduct.action" var="deletepro">
                                                <s:param name="productId" value="%{productId}" />
                                            </s:url>
                                            <td align="center" valign="middle"> <s:a href="%{deletepro}" cssClass="ask"><img src="images/trash.png" /></s:a> </td>

                 </tr>
                                   
                                </s:iterator>
				</table>
                 
				<!--  end product-table................................... --> 
				
              </div>
              <div style="float:right">
                <!--  start related-activities -->


</td>
        </tr>
	</table>
	<!-- end id-form  -->

	</td>
	<td>

	<!--  start related-activities -->
	<div id="related-activities">
		
		<!--  start related-act-top -->
		<div id="related-act-top">
		<img src="images/forms/header_related_act.gif" width="271" height="43" alt="" />
		</div>
		<!-- end related-act-top -->
		
		<!--  start related-act-bottom -->
		<div id="related-act-bottom">
		
			<!--  start related-act-inner -->
			<div id="related-act-inner">
			
				<div class="left"><a href=""><img src="images/forms/icon_plus.gif" width="21" height="21" alt="" /></a></div>
				<div class="right">
					<h5>Add another product</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>
				
				<div class="clear"></div>
				<div class="lines-dotted-short"></div>
				
				<div class="left"><a href=""><img src="images/forms/icon_minus.gif" width="21" height="21" alt="" /></a></div>
				<div class="right">
					<h5>Delete products</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>
				
				<div class="clear"></div>
				<div class="lines-dotted-short"></div>
				
				<div class="left"><a href=""><img src="images/forms/icon_edit.gif" width="21" height="21" alt="" /></a></div>
				<div class="right">
					<h5>Edit categories</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>
				<div class="clear"></div>
				
			</div>
			<!-- end related-act-inner -->
			<div class="clear"></div>
		
		</div>
		<!-- end related-act-bottom -->
	
	</div>
	<!-- end related-activities -->

</td>
<td></td>
<td>
</td>
</tr>
<tr>
<td><img src="images/shared/blank.gif" width="695" height="1" alt="blank" /></td>
<td></td>
</tr>
</table>
 
<div class="clear"></div>
 

</div>
<!--  end content-table-inner  -->
</td>
<td id="tbl-border-right"></td>
</tr>
<tr>
	<th class="sized bottomleft"></th>
	<td id="tbl-border-bottom">&nbsp;</td>
	<th class="sized bottomright"></th>
</tr>
</table>

<!--  end content-outer -->
 <div align="center" id="pageNavPosition">

                            </div> 
 
 <script type="text/javascript">
                        var pager = new Pager('results', 10, 'pager', 'pageNavPosition');
                        pager.init();
                        pager.showPage(1);
                    </script>

   <div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer -->

 

<div class="clear">&nbsp;</div> 

<!-- start footer -->         
<div id="footer">
	<!--  start footer-left -->
	<div id="footer-left">
	Admin Skin &copy; Copyright Internet Dreams Ltd. <a href="">www.netdreams.co.uk</a>. All rights reserved.</div>
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
<!-- end footer -->
 
</body>
</html>