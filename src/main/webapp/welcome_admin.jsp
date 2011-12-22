<%-- 
    Document   : welcome_admin
    Created on : Nov 9, 2011, 5:01:09 PM
    Author     : Administrator
--%>
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
        <title>Welcome Admin</title>
        <s:head theme="jquery"/>  
        <sj:head jqueryui="true" jquerytheme="flick"/> 
        <link rel="stylesheet" href="style.css" type="text/css" />
        <script type="text/javascript" src="pagination.js"></script>
        <script type="text/javascript" src="jquery.min.js"></script>



      
<script type="text/javascript" src="jquery.min.js"></script>

<script type="text/javascript" src="ddaccordion.js">

/***********************************************
* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* This notice must stay intact for legal use
***********************************************/

</script>


<style type="text/css">

.mypets{ /*header of 1st demo*/
cursor: hand;
cursor: pointer;
padding: 2px 5px;
border: 1px solid gray;
background:#cdcd5d;
}

.openpet{ /*class added to contents of 1st demo when they are open*/
background:#FFF;
}

.technology{ /*header of 2nd demo*/
cursor: hand;
cursor: pointer;
font: bold 14px Verdana;
margin: 10px 0;
}


.openlanguage{ /*class added to contents of 2nd demo when they are open*/
color: green;
}

.closedlanguage{ /*class added to contents of 2nd demo when they are closed*/
color: red;
}

</style>

<script type="text/javascript">

//Initialize first demo:
ddaccordion.init({
	headerclass: "mypets", //Shared CSS class name of headers group
	contentclass: "thepet", //Shared CSS class name of contents group
	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["none", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})

//Initialize 2nd demo:
ddaccordion.init({
	headerclass: "technology", //Shared CSS class name of headers group
	contentclass: "thelanguage", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: false, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: false, //persist state of opened contents within browser session?
	toggleclass: ["closedlanguage", "openlanguage"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["prefix", "<img src='http://i13.tinypic.com/80mxwlz.gif' style='width:13px; height:13px' /> ", "<img src='http://i18.tinypic.com/6tpc4td.gif' style='width:13px; height:13px' /> "], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})

</script>
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
        <%/*
Object obj = session.getAttribute("user");
if(obj==null)
   {
   response.sendRedirect(request.getContextPath()+"/sessionError.action");
}
        */%>
 <div style=" vertical-align:top; width:1024px; padding-left: 150px; " align="center" >
           
 <div align="center" style=" height:1300px;  background-color:#f6f6d4;">
       <div style=" color:#2d2f16;  font-family:Verdana, Geneva, sans-serif;">
        <s:include value="header.jsp"></s:include> 
        <div style="font-size:18px; height:50px; ">
        <div style="float:left; padding-left:30px;">
       &nbsp;&nbsp;<a href="accountinformation.action">Account information</a>  
             </div>  <div style="float:right; padding-right:60px;"> <a href="logoutaction.action">Logout</a>  
             </div></div>
 <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif; ">Welcome Admin</p>
        <div>
            Add new Show User And Show:
            <s:actionerror theme="jquery"/>   
            <s:form action="addshowuser">
                <s:textfield name="uname" label="User Name" />
                <s:textfield name="email" label="Email id" />
                <s:hidden name="catgry" label="Show"   value="show"/>
                <s:textfield name="sname" label="Show Name" />
                <s:submit value="Create"/>
            </s:form>

        </div>
        <div id="rounded-corner">
            <s:actionmessage theme="jquery"/>
        </div>    



        <div>
            <h1 class="mypets">All Shows</h1>
<div class="thepet">

            <div>
                <div class="box">
                    <div>
                  

                <form action="allshows.action"> <div><input type="text" value="Search" name="search" size="20" onBlur="if(this.value == '') { this.value = 'Search'; }" onFocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                </div></form>     


                    <div>
                        <table class="user" id="results" cellspacing="15" cellpadding="8" >
                            <tr>
                                <th>Show Name</th>
                                <th>Show Logo</th>
                                <th>Show Layout</th>
                                <th>Show Image</th>
                                <th>Status</th>
                                <th>View Upcoming Events</th>   
                                <th>View Stalls</th>   


                                <s:iterator  value="showlist" >

                                <tr>

                                    <td><s:property value="showname" /> </td>
                                    <td><img src="showlogo.action?id=<s:property value="%{showId}" />" alt="" width="50" height="20" /></td>
                                    <td><img src="showlay.action?id=<s:property value="%{showId}" />" alt="" width="50" height="20" /></td>
                                    <td><img src="showimg.action?id=<s:property value="%{showId}" />" alt="" width="50" height="20" /></td>

                                    <s:url action="shostatus.action" var="shostatus">
                                        <s:param name="showid" value="%{showId}" />
                                        <s:param name="status" value="%{status}" /> 
                                    </s:url>


                                    <td><s:a href="%{shostatus}" cssClass="ask" ><s:property value="status" /></s:a> </td>
                                    <s:url action="viewshowevents.action" var="viewshowevents">
                                        <s:param name="showid" value="%{showId}" />

                                    </s:url>
                                    <td> <s:a href="%{viewshowevents}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><img src="images/calendar_icon.png" alt="" width="70" height="40" /></s:a> </td>
                                        <s:url action="viewshowstalls.action" var="viewshowstalls">
                                            <s:param name="showid" value="%{showId}" />

                                    </s:url>
                                    <td> <s:a href="%{viewshowstalls}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><img src="images/street_stall.png" alt="" width="70" height="40" /></s:a> </td>
                                </tr>

                            </s:iterator>
                        </table>
                        <div  id="pageNavPosition">

                        </div> 

                    </div>
                </div>
                <script type="text/javascript">
                    var pager = new Pager('results', 10, 'pager', 'pageNavPosition');
                    pager.init();
                    pager.showPage(1);
                </script>
            </div> 
        </div>
</div>

<h1 class="mypets">All Stalls</h1>
<div class="thepet">
 <div> 
            <div class="box">
                 <form action="allstalls.action"> <div><input type="text" value="Search" name="search" size="20" onBlur="if(this.value == '') { this.value = 'Search'; }" onFocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                </div></form>     
                
              
                
                <table class="user" id="results" cellspacing="15" cellpadding="8" >
                    <tr>
                        <th>Stall Name</th>
                        <th>Connected Show</th>
                        <th>Stall Logo</th>
                        <th>Stall Image</th>
                        <th>Status</th>
                        <th>View Products</th>   
                    </tr>
                    <s:iterator end="1" value="stalllist" status="rowstatus">

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
                                <s:url action="stalstatus.action" var="stalstatus">
                                    <s:param name="stallid" value="%{stallId}" />
                                    <s:param name="status" value="%{status}" />
                                </s:url>


                            <td><s:a href="%{stalstatus}" cssClass="ask" ><s:property value="status" /></s:a> </td>
                            <s:url action="stalldispnav.action" var="stalldispnav">
                                <s:param name="stallid" value="%{stallId}" />

                            </s:url>
                            <td> <s:a href="%{stalldispnav}" onclick="window.open(this.href, 'child', 'scrollbars,width=650,height=600'); return false"><img src="images/view.jpg" alt="" width="30" height="20" /></s:a> </td>
                        </tr>

                    </s:iterator>
                </table>
                <div align="right" id="st"></div> 

            </div>


            <script type="text/javascript">
                var pager = new Pager('results', 10, 'pager', 'st');
                pager.init();
                pager.showPage(1);
            </script>

        </div>
</div>

<h1 class="mypets">All Products</h1>
<div class="thepet"><div>
            <div class="box">
                


                <div>  <form action="allprod.action"> <input type="text" value="Search" name="search" size="20" onBlur="if(this.value == '') { this.value = 'Search'; }" onFocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                    </form>  </div>   

                <div>
                    <table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Image</th>
                        <th>Status</th>


                        <s:iterator  value="prodlist" >

                            <tr>

                                <td><s:property value="name" /></td>
                                <td><s:property value="price" /> </td>
                                <td><img src="productimg.action?id=<s:property value="%{productId}" />" alt="" width="50" height="20" /></td>
                                    <s:url action="prostatus.action" var="prostatus">
                                        <s:param name="productid" value="%{productId}" />
                                        <s:param name="status" value="%{status}" />

                                </s:url>


                                <td><s:a href="%{prostatus}" cssClass="ask" ><s:property value="status" /></s:a> </td>


                                </tr>

                        </s:iterator>
                    </table>
                    <div align="center" id="pr">

                    </div> 

                </div>



            </div>
            <script type="text/javascript">
                var pager = new Pager('results', 10, 'pager', 'pr');
                pager.init();
                pager.showPage(1);
            </script>

        </div>

		
	</div>
	
</div>

<p>&nbsp;</p>


<br />

</div>   
         </div>
          </div>
<div style="padding-left:150px;">
<s:include value="footer.jsp"></s:include>
</div> 




    </body>
</html>















