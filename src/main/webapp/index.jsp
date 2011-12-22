<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="/struts-tags" prefix="s"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ZORRIT ADMIN </title>
        <s:head theme="jquery"/>  


        <link rel="stylesheet" type="text/css" href="style.css" />
        <script type="text/javascript" src="jquery.min.js"></script>
        <script type="text/javascript" src="ddaccordion.js"></script>
        <script type="text/javascript">
            ddaccordion.init({
                headerclass: "submenuheader", //Shared CSS class name of headers group
                contentclass: "submenu", //Shared CSS class name of contents group
                revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
                mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
                collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
                defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
                onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
                animatedefault: false, //Should contents open by default be animated into view?
                persiststate: true, //persist state of opened contents within browser session?
                toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
                togglehtml: ["suffix", "<img src='images/plus.gif' class='statusicon' />", "<img src='images/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
                animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
                oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
                    //do nothing
                },
                onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
                    //do nothing
                }
            })
        </script>

        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>

        <script language="javascript" type="text/javascript" src="niceforms.js"></script>
        <link rel="stylesheet" type="text/css" media="all" href="niceforms-default.css" />

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
        <div style=" vertical-align:top; width:1024px; padding-left: 150px; " align="center" >

            <div align="center" style=" height:600px;  background-color:#f6f6d4;">
                <div style=" color:#2d2f16;  font-family:Verdana, Geneva, sans-serif; ">

                    <s:include value="header.jsp"></s:include> 
                    <div id="main_container" >

                        <div style="font-size:18px; height:75px; ">
                            <div style="float:left; padding-left:30px;">
                                &nbsp;&nbsp;<a href="loginnav.action">Home</a> 
                            </div> </div>



                        <div style="padding-top:100px;">
                            <s:actionmessage theme="jquery" />
                            <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif; color:#030;">LOGIN PAGE</p>
                            <h3>&nbsp;</h3>

                            <a href="forgotpass.action" class="forgot_pass">Forgot password</a> 
                            <s:actionerror/>  
                            <fieldset>
                                <s:form action="loginAction">

                                    <s:textfield name="email" label="User Name/Email id" size="24" />
                                    <s:password name="passwd" label="PassWord" size="24" />
                                    <s:submit value="Login"/>

                                </s:form>
                            </fieldset>
                        </div>  

                    </div>
                </div>   
            </div>
        </div>
        <div style="padding-left:150px;">
            <s:include value="footer.jsp"></s:include>
        </div> 

    </body>
</html>


