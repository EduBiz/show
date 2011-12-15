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



        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>
    </head>
    <body>
        <%
Object obj = session.getAttribute("user");
if(obj==null)
   {
   response.sendRedirect(request.getContextPath()+"/sessionError.action");
}
        %>

        <p style="font-size:25px; color:#030;" align="center">welcome Admin &nbsp; &nbsp;<a href="logoutaction.action">Logout</a>&nbsp;&nbsp;<a href="accountinformation.action">Account information</a>    </p>

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
            <div>
                <div class="box">
                    <div>
                        <p style="font-size:25px; color:#030;">ALL SHOWS  </p>
                    </div>

                <form action="allshows.action"> <div><input type="text" value="Search" name="search" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
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










        <div> 
            <div class="box">
                 <form action="allstalls.action"> <div><input type="text" value="Search" name="search" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                </div></form>     
                
                <p style="font-size:25px; color:#030;" >ALL STALLS </p>
                
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


        <div>
            <div class="box">
                <div>
                    <p style="font-size:25px; color:#030;" > ALL PRODUCTS</p>
                </div>


                <div>  <form action="allprod.action"> <input type="text" value="Search" name="search" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
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






    </body>
</html>















