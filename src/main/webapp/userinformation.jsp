<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>

<s:head theme="jquery"/>  <link rel="stylesheet" href="css/screen1.css" type="text/css" media="screen" title="default" />
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
<style type="text/css">
.button
{
	background:url(images/buttons/updateinformation.gif) no-repeat;
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
    Object obj = session.getAttribute("user");
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
		
		<ul class="select"><li><a href="regnav.action"><b>Home</b></a><!--<![endif]-->
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


<div id="page-heading"><h1>Account Information</h1></div>
 <s:actionerror/>   
                        <s:form action="useRegistration" theme="simple">
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
	<!--  start content-table-inner -->
	<div id="content-table-inner">
	
	<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr valign="top">
	<td>
	
	
		
	
		<!-- start id-form -->
        
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
        <s:hidden name="email" label="Email id"/>
		<tr>
			<td valign="top" width="300"><strong>First Name:</strong></td>
			<td><s:textfield name="fname" cssClass="inp-form" /></td>
			<td ></td>
		</tr>
		<tr>
			<td valign="top"><strong>Last Name:</strong></td>
			<td><s:textfield name="lname" cssClass="inp-form" /></td>
			<td></td>
		</tr>
        
		<tr>
		<td valign="top"><strong>Memorable word for security purposes:</strong></td>
		<td>	
		 <s:textfield name="mow"  javascriptTooltip="Eg:Your Mother's maiden name" cssClass="inp-form" />
		</td>
		<td></td>
		</tr>
		<tr>
		<td valign="top"><strong>Company Name:</strong></td>
		<td> <s:textfield name="company" label="Company Name" cssClass="inp-form" /></td>
		<td></td>
	</tr>
		<tr>
			<td valign="top"><strong>Is your company VAT registered ? :</strong></td>
			<td> <s:select name="vatreg" headerKey="Please select" headerValue="Please select" list="{'Yes','No'}" cssClass="styledselect_form_1"/></td>
			<td></td>
		</tr>
		<tr>
	<td><strong>What is your company’s VAT registration number?:</strong></td>
	<td><s:textfield name="vatno"  cssClass="inp-form" /></td>
	<td>
	</td>
	</tr>
	
	<td><strong>Company website/eshop web address:</strong></td>
	<td> <s:textfield name="weblink" value="http://" cssClass="inp-form" /></td>
	<td>
	</td>
	</tr>
	<tr>
	<td><strong>Monthly Payment Due Date:</strong></td>
	<td>  <s:textfield name="duedate" cssClass="inp-form" /></td>
	<td>
    </td>
	</tr>
	<tr>
			<td valign="top"><strong>Company main contact Direct line:</strong></td>
			<td><s:textfield name="phone" cssClass="inp-form" /></td>
			<td></td>
		</tr>
		<tr>
			<td valign="top"><strong>Company main contact Mobile number:</strong></td>
			<td> <s:textfield name="mobile" cssClass="inp-form" /></td>
			<td></td>
		</tr>
        <s:hidden name="approve" label="Approves"/>
                            <s:hidden name="balance" label="Balance"/>
                            <s:hidden name="note" label="Note"/>
        <tr>
			<td valign="top"><strong>Name of bank/building society:</strong></td>
			<td><s:textfield name="bankname" cssClass="inp-form" /></td>
			<td ></td>
		</tr>
		<tr>
			<td valign="top"><strong>Bank account number (8 digits):</strong></td>
			<td><s:textfield name="accno" cssClass="inp-form" /></td>
			<td></td>
		</tr>
        
		<tr>
		<td valign="top"><strong>Branch sort code (6 digits):</strong></td>
		<td>	
		<s:textfield name="bsc" cssClass="inp-form" />
		</td>
		<td></td>
		</tr>
		<tr>
		<td valign="top"><strong>Name of account holder:</strong></td>
		<td> <s:textfield name="accname" cssClass="inp-form" /></td>
		<td></td>
	</tr>
		<tr>
			<td valign="top"><strong>Description:</strong></td>
			<td>  <s:textarea name="info" cssClass="form-textarea"/></td>
			<td></td>
		</tr>
		<tr>
	<td><strong>Address Line 1:</strong></td>
	<td><s:textfield name="addl1" cssClass="inp-form" /></td>
	<td>
	</td>
	</tr>
	
	<td><strong>Address Line 2:</strong></td>
	<td> <s:textfield name="addl2" cssClass="inp-form" /></td>
	<td>
	</td>
	</tr>
	<tr>
	<td><strong>City:</strong></td>
	<td>  <s:textfield name="city" cssClass="inp-form" /></td>
	<td>
    </td>
	</tr>
	<tr>
			<td valign="top"><strong>Country:</strong></td>
			<td> <s:textfield name="country" label="Country" cssClass="inp-form" /></td>
			<td></td>
		</tr>
		<tr>
			<td valign="top"><strong>Post Code:</strong></td>
			<td><s:textfield name="postcode" cssClass="inp-form" /></td>
			<td></td>
		</tr>
	<tr>
		<td>&nbsp;</td>
		<td valign="top">
			<s:submit value="Update Information" cssClass="button"/>
			
		</td>
		<td></td>
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

 </s:form>







 





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
	 &copy; Copyright 2010 &nbsp; zorrit &nbsp;Powered by<a href="http://www.edubiz.org/">&nbsp;EduBiz.org</a></div>
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
<!-- end footer -->
 
</body>
</html>