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
        <title> Sales Outlet Admin Page</title>
        <s:head theme="jquery"/>  
        <sj:head jqueryui="true" jquerytheme="flick"/> 
        <link rel="stylesheet" href="css/screen1.css" type="text/css" media="screen" title="default" />
        <!--[if IE]>
        <link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
        <![endif]-->

        <!--  jquery core -->
        <script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>

        <!--  checkbox styling script -->
        <script src="js/jquery/ui.core.js" type="text/javascript"></script>
        <script src="js/jquery/ui.checkbox.js" type="text/javascript"></script>
        <script src="js/jquery/jquery.bind.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function(){
                $('input').checkBox();
                $('#toggle-all').click(function(){
                    $('#toggle-all').toggleClass('toggle-checked');
                    $('#mainform input[type=checkbox]').checkBox('toggle');
                    return false;
                });
            });
        </script>  


        <![if !IE 7]>

        <!--  styled select box script version 1 -->
        <script src="js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.styledselect').selectbox({ inputClass: "selectbox_styled" });
            });
        </script>


        <![endif]>


        <!--  styled select box script version 2 --> 
        <script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
                $('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
            });
        </script>

        <!--  styled select box script version 3 --> 
        <script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
            });
        </script>

        <!--  styled file upload script --> 
        <script src="js/jquery/jquery.filestyle.js" type="text/javascript"></script>
        <script type="text/javascript" charset="utf-8">
            $(function() {
                $("input.file_1").filestyle({ 
                    image: "images/forms/upload_file.gif",
                    imageheight : 29,
                    imagewidth : 78,
                    width : 300
                });
            });
        </script>

        <!-- Custom jquery scripts -->
        <script src="js/jquery/custom_jquery.js" type="text/javascript"></script>

        <!-- Tooltips -->
        <script src="js/jquery/jquery.tooltip.js" type="text/javascript"></script>
        <script src="js/jquery/jquery.dimensions.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function() {
                $('a.info-tooltip ').tooltip({
                    track: true,
                    delay: 0,
                    fixPNG: true, 
                    showURL: false,
                    showBody: " - ",
                    top: -35,
                    left: 5
                });
            });
        </script> 

        <!--  date picker script -->
        <link rel="stylesheet" href="css/datePicker.css" type="text/css" />
        <script src="js/jquery/date.js" type="text/javascript"></script>
        <script src="js/jquery/jquery.datePicker.js" type="text/javascript"></script>
        <script type="text/javascript" charset="utf-8">
            $(function()
            {

                // initialise the "Select date" link
                $('#date-pick')
                .datePicker(
                // associate the link with a date picker
                {
                    createButton:false,
                    startDate:'01/01/2005',
                    endDate:'31/12/2020'
                }
            ).bind(
                // when the link is clicked display the date picker
                'click',
                function()
                {
                    updateSelects($(this).dpGetSelected()[0]);
                    $(this).dpDisplay();
                    return false;
                }
            ).bind(
                // when a date is selected update the SELECTs
                'dateSelected',
                function(e, selectedDate, $td, state)
                {
                    updateSelects(selectedDate);
                }
            ).bind(
                'dpClosed',
                function(e, selected)
                {
                    updateSelects(selected[0]);
                }
            );
	
                var updateSelects = function (selectedDate)
                {
                    var selectedDate = new Date(selectedDate);
                    $('#d option[value=' + selectedDate.getDate() + ']').attr('selected', 'selected');
                    $('#m option[value=' + (selectedDate.getMonth()+1) + ']').attr('selected', 'selected');
                    $('#y option[value=' + (selectedDate.getFullYear()) + ']').attr('selected', 'selected');
                }
                // listen for when the selects are changed and update the picker
                $('#d, #m, #y')
                .bind(
                'change',
                function()
                {
                    var d = new Date(
                    $('#y').val(),
                    $('#m').val()-1,
                    $('#d').val()
                );
                    $('#date-pick').dpSetSelected(d.asString());
                }
            );

                // default the position of the selects to today
                var today = new Date();
                updateSelects(today.getTime());

                // and update the datePicker to reflect it...
                $('#d').trigger('change');
            });
        </script>

        <!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
        <script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $(document).pngFix( );
            });
        </script>



        <script type="text/javascript" src="pagination.js"></script>
        <script type="text/javascript" src="jquery.min.js"></script>



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

                    

                </div>
                <!-- end nav-right -->


                <!--  start nav -->
                <div class="nav">
                    <div class="table">

                        <ul class="select">
                            <li><a href="showadminhomenav.action"><b>Home</b></a><!--<![endif]-->
		
		</li>
                            <li><a href="accountinformation.action"><b>Account information</b></a><!--<![endif]-->
                                <!--[if lte IE 6]><table><tr><td><![endif]-->

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


                <div id="page-heading"><h1>Sales Outlet and Information</h1></div>
               <s:actionmessage theme="jquery" />



               <table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
	<tr>
		<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
		<th class="topleft"></th>
		<td id="tbl-border-top">&nbsp;</td>
		<th class="topright"></th>
		<th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
	</tr>
	<tr>
		<td id="tbl-border-left"></td>
		<td>
		<!--  start content-table-inner ...................................................................... START -->
		<div id="content-table-inner">
		
			<!--  start table-content  -->
			<div id="table-content">
			
                           

                                <!--  start table-content  -->
                                <table  summary="2007 Major IT Companies' Profit">
			
			  
			      <td width="100" height="50"  scope="col" background="images/table/tableheaderfront.gif" style="color:#FFF;" align="center">Event Name</td>
			      
			      <td width="100" height="50" scope="col" background="images/table/tabelheadercenter.gif" style="color:#FFF;" align="center">Upload Event Images</td>
			      <td width="100" height="50" scope="col" background="images/table/tabelheadercenter.gif"style="color:#FFF;" align="center">Edit Event Info</td>
			      <td width="100" height="50"  scope="col" background="images/table/tabelheadercenter.gif"style="color:#FFF;" align="center">Status</td>
			      <td width="100" height="50"  scope="col" background="images/table/tabelheadercenter.gif" style="color:#FFF;" align="center">Add Sales Outlet and User</td>
			      <td width="100" height="50"  scope="col" background="images/table/tabelheadercenter.gif" style="color:#FFF;" align="center">Add Upcoming Events</td>
			      <td width="100" height="50"  scope="col" background="images/table/tabelheadercenter.gif" style="color:#FFF;" align="center">View Upcoming Events</td>
			      <td width="100" height="50" scope="col" background="images/table/tabelheadercenter.gif" style="color:#FFF;" align="center">View Sales Outlets</td>
			      <td width="100" height="50"  scope="col" background="images/table/tabelheaderback.gif" style="color:#FFF;" align="center">Add Sales Outlet Display Position</td>
		        </tr>
		      
			 
			   
                            <s:iterator  value="showlist" >

                            <tr class="user" id="product-table">
                                <s:url action="showinfo.action" var="showinfo">
                                        <s:param name="showId" value="%{showId}" />
                                        <s:param name="showname" value="%{showname}" />
                                        <s:param name="showCommision" value="%{showCommision}" />
                                        <s:param name="siteCommision" value="%{siteCommision}" />
                                        <s:param name="venueCommision" value="%{venueCommision}" />
                                        <s:param name="description" value="%{description}" />
                                        <s:param name="categories" value="%{categories}" />
                                        <s:param name="showtype" value="%{showtype}" />
                                        <s:param name="approve" value="%{approve}" />
                                        <s:param name="note" value="%{note}" />

                                </s:url>
                                <td align="center" ><s:property value="showname" /> </td>
                                     <s:url action="uploadshownav.action" var="uploadshowpic">
                                        <s:param name="showId" value="%{showId}" />

                                </s:url>
                                <td align="center" > <s:a href="%{uploadshowpic}" cssClass="ask" ><img src="images/upload.gif" alt="" width="70" height="30" /></s:a> </td>
                                <td align="center" ><s:a href="%{showinfo}" cssClass="ask" ><img src="images/pencil.png"/></s:a> </td>
                                <td align="center" ><s:property value="status" /> </td>
                                   <s:url action="addstallnavuser.action" var="addstallnavuser">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                <td align="center" ><s:a href="%{addstallnavuser}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false" ><img src="images/stalluser.png" alt="" width="70" height="30" /></s:a></td>    
                                   <s:url action="updateshownav.action" var="updateshownav">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                <td align="center" ><s:a href="%{updateshownav}" cssClass="ask" ><img src="images/upload_file.gif" alt="" width="70" height="30" /></s:a></td>    
                                   <s:url action="viewshowevents.action" var="viewshowevents">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                 <td align="center" > <s:a href="%{viewshowevents}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><img src="images/sketch.jpg" alt="" width="70" height="30" /></s:a> </td>
                                   <s:url action="viewshowstalls.action" var="viewshowstalls">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                 <td align="center" > <s:a href="%{viewshowstalls}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><p style="color:#666;">View </p></s:a> </td>
                           
                                    <s:url action="showdisplaymanage.action" var="showdisplaymanage">
                                        <s:param name="showid" value="%{showId}" />

                                </s:url>
                                 <td align="center"  > <s:a href="%{showdisplaymanage}"><p style="color:#666;">Manage Sales Outlets Position</p></s:a> </td>
                            

 </tr>

                        </s:iterator>
                    </table>
		   

                             </td>
                             
		<td id="tbl-border-right"></td>
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
	</tr>
	<tr>
		<th class="sized bottomleft"></th>
		<td id="tbl-border-bottom">&nbsp;</td>
		<th class="sized bottomright"></th>
	</tr>
	</table>
     <div  id="pageNavPosition">

                    </div> 
                     <script type="text/javascript">
                var pager = new Pager('results', 20, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>
	<div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer........................................................END -->

<div class="clear">&nbsp;</div>
    
<!-- start footer -->         
<div id="footer">
	<!--  start footer-left -->
	<div id="footer-left">
	
	 &copy; Copyright 2010 &nbsp; zorrit &nbsp;Powered by<a href="http://www.edubiz.org/">&nbsp;EduBiz.org</a></div>
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
<!-- end footer -->
 
</body>
</html>