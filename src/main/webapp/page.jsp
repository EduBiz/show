<%-- 
    Document   : page
    Created on : Nov 14, 2011, 11:02:06 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">   
            .pg-normal {
                color: black;
                font-weight: normal;
                text-decoration: none;   
                cursor: pointer;   
            }
            .pg-selected {
                color: black;
                font-weight: bold;       
                text-decoration: underline;
                cursor: pointer;
            }
        </style>

        <script type="text/javascript" src="pagination.js"></script>
    </head>
        <form action="" method="get" >
        <table border="1" id="results">
            <tr><th>Name</th><th>Address</th><th>Contact No</th></tr>
            <tr><td>A</td><td>Delhi</td><td>1111111111</td></tr>
            <tr><td>B</td><td>Mumbai</td><td>2222222222</td></tr>
            <tr><td>C</td><td>Kolkata</td><td>3333333333</td></tr>
            <tr><td>D</td><td>Chennai</td><td>4444444444</td></tr> <tr><td>E</td><td>Hyderabad</td><td>5555555555</td></tr>
            <tr><td>F</td><td>Pune</td><td>6666666666</td></tr>
            <tr><td>G</td><td>Agra</td><td>7777777777</td></tr>
            <tr><td>H</td><td>Chandigarh</td><td>8888888888</td></tr>
            <tr><td>I</td><td>Bangalore</td><td>9999999999</td></tr>
            <tr><td>J</td><td>Lucknow</td><td>1010101010</td></tr>
        </table>
        <div id="pageNavPosition"></div>
        </form>

    <script type="text/javascript"><!--
    var pager = new Pager('results', 2, 'pager', 'pageNavPosition');
    pager.init();
    pager.showPage(1);
    </script>
   </html>
