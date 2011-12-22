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
        <title>Show Stall  Manage</title>
        <s:head theme="jquery"/>  
        <sj:head jqueryui="true"/> 
        <sx:head />
        <link rel="stylesheet" type="text/css" href="css/imgareaselect-animated.css" />
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
        <%
Object obj= session.getAttribute("user");

if(obj==null)
{
response.sendRedirect(request.getContextPath()+"/sessionError.action");
}

        %>
        <div style=" vertical-align:top;  height:900px; width:1024px; padding-left: 150px; " align="center" >
           
 <div align="center" style=" height:900px; background-color:#f6f6d4;">
       <div style=" color:#2d2f16;  font-family:Verdana, Geneva, sans-serif;">
        
        <s:include value="header.jsp"></s:include>
        <s:actionmessage theme="jquery"/>
        <!-- Stall Display content -->
        <div>
            <div class="box">
             <div style="float:left; padding-left:30px;">
       &nbsp;&nbsp;<a href="accountinformation.action">Account information</a>  
             </div>
       
                <div style="padding-right:100px;">
                   <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif; color:#030;">Show<s:property value="show.showname" />&nbsp;&nbsp;Stalls&nbsp;&nbsp;</p>
                </div>




                <div >
                    <table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <tr>
                            
                            <th>Stall Name</th>
                            
                            <th>Show Name</th>
                            <th>Stall Image</th>
                            <th>Stall Status</th>
                            <th>Remove Stall </th></tr>
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
                    <div  id="pageNavPosition">

                    </div> 

                </div>
            </div>
            <script type="text/javascript">
                var pager = new Pager('results', 20, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>
        </div> 


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

<div style="width:auto; height:60px; background-color:#cdcd5d; border-radius: 15px; -webkit-border-radius: 15px; ">
                <p style="font-size:27px; color:#2d2f16; padding-top:10px; font-family:Verdana, Geneva, sans-serif;" align="center"><strong>ADD Stall Display Position</strong></p>
                </div>
            <div class="container demo">
                <div style="float: left; width:400px;">
                    <p class="instructions">
                        Click and drag on the image to select an area. 
                    </p>

                    <div class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;">  <img id="photo" src="showlay.action?id=<s:property value="%{showid}" />" width="300px" height="300px"  /></span></span></span></div>
                </div>
<div style="float:left; width:400px;" >
               
                <s:actionerror theme="jquery"/> 
                <s:form action="addshowdisplaystall" theme="xhtml" id="myform">
                    <h1></h1>
                    <s:hidden name="showid" value="%{show.showId}"/>


                    <sx:autocompleter size="1" label="Select Stall " 

                                      list="stl" name="stname"/>
                    <s:textfield id="x1" name="x1" label="Display position X1"  />
                    <s:textfield id="x2" name="x2" label="Display position X2"   />
                    <s:textfield id="y1" name="y1" label="Display position Y1"   />
                    <s:textfield id="y2" name="y2" label="Display position Y2"    />
                    <sj:submit value="Add Stall Display"  />
                </s:form>

            </div>
                <div style="float: left; width:200px;">
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
