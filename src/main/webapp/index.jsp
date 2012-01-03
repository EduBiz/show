<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="/struts-tags" prefix="s"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ZORRIT ADMIN </title>
        <s:head theme="jquery"/>
<link rel="stylesheet" href="css/screen1.css" type="text/css" media="screen" title="default" />
<!--  jquery core -->
<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>

<!-- Custom jquery scripts -->
<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>
</head>
<body id="login-bg"> 
 
<!-- Start: login-holder -->
<div id="login-holder">
      <s:actionmessage theme="jquery" />
	<!-- start logo -->
	<div id="logo-login">
		<a href="loginnav.action"><img src="images/m.gif" width="180" height="50" alt="" /></a>
	</div>
	<!-- end logo -->
	
	<div class="clear"></div>
	
	<!--  start loginbox ................................................................................. -->
	<div id="loginbox">
	
	<!--  start login-inner -->
	<div id="login-inner">
     
     <s:actionerror theme="jquery"/> 
     <s:form action="loginAction">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
        
			
			<td>  <s:textfield name="email" label="User Name" size="24" cssClass="login-inp" /></td>
		</tr>
		<tr>
			
			<td> <s:password name="passwd" label="PassWord" size="24" cssClass="login-inp" /></td>
		</tr>
		
		<tr>
			
			<td>     <s:submit  cssClass="submit-login"/></td>
		</tr>
		</table>
        </s:form>
	</div>
 	<!--  end login-inner -->
	<div class="clear"></div>
	<a href="" class="forgot-pwd">Forgot Password?</a>
 </div>
 <!--  end loginbox -->
 
	<!--  start forgotbox ................................................................................... -->
	<div id="forgotbox">
		<div id="forgotbox-text">Please send us your email and we'll reset your password.</div>
		<!--  start forgot-inner -->
		<div id="forgot-inner">
                 
              <s:form action="forgotmail" theme="simple">
		<table border="0" cellpadding="0" cellspacing="0">
                    <tr> 
			<th>Email address:</th>
			<td><s:textfield name="forgetemail" cssClass="login-inp" /></td>
		</tr>
		<tr>
			<th> </th>
			<td> <s:submit value="Send Mail" cssClass="submit-login"  /></td>
                    </form>
		</tr>
		</table>
                 </s:form>
		</div>
		<!--  end forgot-inner -->
		<div class="clear"></div>
		<a href="" class="back-login">Back to login</a>
	</div>
	<!--  end forgotbox -->

</div>
<!-- End: login-holder -->
</body>
</html>
