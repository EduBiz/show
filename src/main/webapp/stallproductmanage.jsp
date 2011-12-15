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
        <title>Stall Products Manage</title>
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
    </head>
    <body>
        <%
Object obj= session.getAttribute("user");

if(obj==null)
{
response.sendRedirect(request.getContextPath()+"/sessionError.action");
}

        %>
        <h1><a href="stallhomenav.action">Home</a>&nbsp;&nbsp;<a href="logoutaction.action">Logout</a></h1>
        <s:actionmessage theme="jquery"/>
        <!-- Stall Display content -->
        <div>
            <div class="box">
                <div>
                    <p style="font-size:25px; color:#030;">Stall&nbsp;&nbsp;<s:property value="stall.stallname" />&nbsp;&nbsp; Products</p>
                </div>




                <div>
                    <table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <tr>
                            
                            <th>Product Name</th>
                            
                            <th>Stall Name</th>
                            <th>Product Image</th>
                            <th>Status</th>
                            
                            <th>Remove Product</th></tr>
                            <s:iterator end="1" value="stalldisp" status="rowstatus">

                            <tr>

                              
                                <td><s:property value="product.name" /> </td>
                                <td><s:property value="stall.stallname" /></td>
                                
                                <td><img src="productimg.action?id=<s:property value="%{product.productId}" />" alt="" width="50" height="20" /></td>
                               <td><s:property value="product.status" /></td>
                                <s:url action="removep.action" var="removepro">
                                    <s:param name="displayid" value="%{displayId}" />
                                    <s:param name="stallid" value="%{stall.stallId}" />
                                    <s:param name="pname" value="%{product.name}" />
                                </s:url>
                                <td> <s:a href="%{removepro}" cssClass="ask"><img src="images/trash.png"/></s:a> </td>


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


            <div class="container demo">
                <div style="float: left; width: 50%;">
                    <p class="instructions">
                        Click and drag on the image to select an area. 
                    </p>

                    <div class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;"><span class="frame" style="margin: 0 0.3em; width: 300px; height: 300px;">  <img id="photo" src="stallimg.action?id=<s:property value="%{stallid}" />" /></span></span></span></div>
                </div>

                <div style="float: left; width: 50%;">
                    <p style="font-size: 110%; font-weight: bold; padding-left: 0.1em;">
                        Selection Preview
                    </p>

                    <div class="frame" 
                         style="margin: 0 1em; width: 100px; height: 100px;">
                        <div id="preview" style="width: 100px; height: 100px; overflow: hidden;">
                            <img src="stallimg.action?id=<s:property value="%{stallid}" />" style="width: 100px; height: 100px;" />
                        </div>
                    </div>

                   
                </div>
            </div>

        </div>

        <div>



            <div style="float:left" >
                <div>
                    <p style="font-size:25px; color:#030;" align="center">ADD Stall Display Products</p>
                </div>
                <s:actionerror theme="jquery"/> 
                <s:form action="addstalldisp" theme="xhtml" id="myform">
                    <h1></h1>
                    <s:hidden name="stallid" value="%{stall.stallId}"/>


                    <sx:autocompleter size="1" label="Please Select Product " 

                                      list="pro" name="pname"/>
                    <s:textfield id="x1" name="x1" label="Display position X1"  />
                    <s:textfield id="x2" name="x2" label="Display position X2"   />
                    <s:textfield id="y1" name="y1" label="Display position Y1"   />
                    <s:textfield id="y2" name="y2" label="Display position Y2"    />
                    <sj:submit value="Add Display Product"  />
                </s:form>

            </div>  





        </div>



    </body>
</html>
