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
        <title> Sales Outlet Add Product </title>
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
        <div style=" vertical-align:top; width:1024px; padding-left: 150px; " align="center" >
            <div align="center" style=" background-color:#f6f6d4;">
                <div align="center" style="font-size:24px;  border-top-left-radius: 15px;
                     border-top-right-radius: 15px; background-color:#cdcd5d; height:120px;">
                    <div style="float:left;"> <img src="images/m.gif" alt="" width="300px" height="100px" />
                    </div>
                    <div  style="padding-top:27px;float:left; padding-left:90px; color:#2d2f16; font-family:Verdana, Geneva, sans-serif;"><strong>WELCOME  SALES OUTLET ADMIN</strong>
                    </div></div>
                </br>
                <div style="font-size:18px; height:75px; ">
                    <div style="float:left; padding-left:30px;">
                        &nbsp;&nbsp;<a href="stallhomenav.action">Home</a> 
                    </div>  <div style="float:right; padding-right:60px;"> <a href="logoutaction.action">Logout</a>  
                    </div></div>

                <div align="center" style="height:700px;font-family:Verdana, Geneva, sans-serif; font-size:18px; ">
                    <p style="font-size:30px; font-family:Verdana, Geneva, sans-serif; color:#030;">  Add New Product</p>
                      <div id="rounded-corner">
                    <s:actionmessage theme="jquery"/>
                </div>  
                    <s:actionerror theme="jquery"/>   
                    <s:form action="addproduct" enctype="multipart/form-data" theme="xhtml">
                        <s:textfield name="pname" label="Product Name" />
                        <s:textfield name="vat" label="Vat " />
                        <s:select label="Delivary Time" name="deltime" headerKey="Please select" headerValue="Please select" list="{'One Day','Two Day','Three Day','One Week'}" />
                        <s:textarea label="Description" name="desc" rows="3" cols="16.7"/>
                        <s:textfield name="qty" label="Quantity where stocks are limited" />
                        <s:hidden name="sold" label="Units Sold"   value="0"/>
                        <s:file name="imag" label="Select Product Picture1"></s:file>
                        <s:file name="img2" label="Select Product Picture2"></s:file>
                        <s:file name="img3" label="Select Product Picture3"></s:file>
                        <s:textfield name="price" label="Product Price" />
                        <s:textfield name="postage" label="Cost of Shipping" />

                        <s:submit value="Add Product"/>
                    </s:form>

                </div>
               




            </div>

        </div>
        <div style="padding-left:150px;">
            <s:include value="footer.jsp"></s:include>
        </div>
    </body>
</html>
