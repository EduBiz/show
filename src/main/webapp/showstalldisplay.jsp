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
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Event Sales Outlet  Manage</title>
        <s:head theme="jquery"/>  
        <sj:head jqueryui="true"/> 
        <sx:head />
<link rel="stylesheet" href="css/screen1.css" type="text/css" media="screen" title="default" />
 <link rel="stylesheet" type="text/css" href="css/imgareaselect-animated.css" />
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
          image: "images/forms/choose-file.gif",
          imageheight : 21,
          imagewidth : 78,
          width : 310
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



        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>
        <style type="text/css">
.button
{
	background:url(images/buttons/submit.gif) no-repeat;
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
		
		<ul class="select"><li><a href="showadminhomenav.action"><b>Home</b></a><!--<![endif]-->
		
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
 
<!-- start content-outer ........................................................................................................................START -->
<div id="content-outer">
<!-- start content -->
<div id="content">

	<!--  start page-heading -->
	<div id="page-heading">
		<h1>Add Event Display Position</h1>
                <s:actionerror theme="jquery"/> <s:actionmessage theme="jquery"/>   
	</div>
	<!-- end page-heading -->

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
			
				
				<!--  start message-blue -->
				<div id="message-blue">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
                <td>
					 <div id="content" class="container">
           <script type="text/javascript" src="scripts/jquery-1.6.1.min.js"></script>
            <script type="text/javascript" src="scripts/jquery.imgareaselect.pack.js"></script>
            <script type="text/javascript">
                function preview(img, selection) {
                    if (!selection.width || !selection.height)
                        return;
    
                    var scaleX = 100 / selection.width;
                    var scaleY = 100 / selection.height;

                    $('#preview img').css({
                        width: Math.round(scaleX * 300),
                        height: Math.round(scaleY * 300),
                        marginLeft: -Math.round(scaleX * selection.x1),
                        marginTop: -Math.round(scaleY * selection.y1)
                    });

                    $('#x1').val(selection.x1);
                    $('#y1').val(selection.y1);
                    $('#x2').val(selection.x2);
                    $('#y2').val(selection.y2);
                    $('#w').val(selection.width);
                    $('#h').val(selection.height);    
                }

                $(function () {
                    $('#photo').imgAreaSelect({ aspectRatio: '1:1', handles: true,
                        fadeSpeed: 200, onSelectChange: preview });
                });
            </script>

 
            <div class="container demo">
                <div style="float: left; width:350px;">
                    <p class="instructions">
                        Click and drag on the image to select an area. 
                    </p>

                    <div class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;">  <img id="photo" src="showlay.action?id=<s:property value="%{showid}" />" width="300px" height="300px"  /></span></span></span></div>
                </div>
<div style="float:left; padding-top:30px; padding-left:60px;" >
               
                <s:actionerror theme="jquery"/> 
                <s:form action="addshowdisplaystall" theme="simple" id="myform">
                    <h1></h1>
                    <table border="0" cellpadding="0" cellspacing="0"  id="id-form">
<tr>
<th valign="top">Select Stall:</th>
<td><sx:autocompleter size="1" list="stl" name="stname" />
                   


                    </td></tr> <s:hidden name="showid" value="%{show.showId}"/>
                                      <tr>
                                      <th valign="top">Display position X1:</th><td>
                    <s:textfield id="x1" name="x1" cssClass="inp-form"/></td></tr>
                    <tr>
                   <th valign="top">Display position X2:
                    </th>
                    <td>
                    <s:textfield id="x2" name="x2" cssClass="inp-form"/></td></tr>
                    <tr>
                    <th valign="top">Display position Y1:</th><td>
                    <s:textfield id="y1" name="y1" cssClass="inp-form"/></td></tr>
                    <tr>
                    <th valign="top">Display position Y2:
                    </th>
                    <td>
                    <s:textfield id="y2" name="y2" cssClass="inp-form"/>
                    </td>
                    </tr>
                    <tr>
                    <th valign="top">
                    </th>
                    <td>
                    <sj:submit value="Add Stall Display" cssClass="button"/>
                    </td></tr></table>
                </s:form>

            </div>
                <div style="float:right; padding-right:180px; padding-top:60px;">
                    <p style="font-size: 110%; font-weight: bold; padding-left: 0.1em;">
                        Selection Preview
                    </p>

                    <div class="frame" 
                         style="margin: 0 1em; width: 100px; height:100px;">
                        <div id="preview" style="width: 100px; height:100px; overflow: hidden;">
                            <img src="showlay.action?id=<s:property value="%{showid}" />" style="width: 100px; height: 100px;" />
                        </div>
                    </div>

                   
                </div>
            </div>

        </div>
                    </td>
				</tr>
				</table>
				</div>
				<!--  end message-blue -->
			
				
				<!--  start product-table ..................................................................................... -->
				
				<table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">
                 <tr>
                     <td colspan="3" id="page-heading"><h1>Event &nbsp; <s:property value="show.showname" />'s&nbsp;&nbsp;Sales Outlets&nbsp;&nbsp;</h1></td>
                  </tr>
				<tr>
					<td>
					<table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <tr>
                            
                            <th  background="images/table/Copy of tableheaderfront.gif" width="150" height="30"  style="color:#FFF" align="center">&nbsp;&nbsp;&nbsp;Sales Outlet Name</th>
                            
                           <th  background="images/table/Copy of tabelheadercenter.gif" width="150" height="30" style="color:#FFF" align="center">Event Name</th>
                            <th  background="images/table/Copy of tabelheadercenter.gif" width="150" height="30" style="color:#FFF" align="center">Sales Outlet Image</th>
                           <th  background="images/table/Copy of tabelheadercenter.gif" width="150" height="30" style="color:#FFF" align="center">Sales Outlet Status</th>
                            <th  background="images/table/Copy of tabelheaderback.gif" width="150" height="30" style="color:#FFF" align="center">Remove Sales Outlet</th></tr>
                            <s:iterator  value="showdisp" >

                            <tr>

                              
                                
                                <td><s:property value="stall.stallname" /></td>
                                <td><s:property value="show.showname" /> </td>
                                <td><img src="stallimg.action?id=<s:property value="%{stall.stallId}" />" alt="" width="50" height="20" /></td>
                                <td><s:property value="stall.status" /></td>
                                <s:url action="removeshowstall.action" var="removeshowstall">
                                    <s:param name="displayid" value="%{layoutid}" />
                                    <s:param name="showid" value="%{show.showId}" />
                                    
                                </s:url>
                                <td> <s:a href="%{removeshowstall}" cssClass="ask"><img src="images/trash.png"/></s:a> </td>


                                </tr>

                        </s:iterator>
                    </table>
                    </td>
                    
				</tr>
				</table>
				<!--  end product-table................................... --> 
				
			</div>
			<!--  end content-table  -->
		
			
			
			
			<div class="clear"></div>
		 
		</div>
		<!--  end content-table-inner ............................................END  -->
		</td>
		<td id="tbl-border-right"></td>
	</tr>
	<tr>
		<th class="sized bottomleft"></th>
		<td id="tbl-border-bottom">&nbsp;</td>
		<th class="sized bottomright"></th>
	</tr>
	</table>
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