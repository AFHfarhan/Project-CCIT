<%-- 
    Document   : lihatdeskripsi
    Created on : Apr 14, 2016, 7:07:25 AM
    Author     : INTELAMD
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <title>View Description | Administrator</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	
	<link rel="shortcut icon" href="images/Logo.png"/>
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom CSS -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- font CSS -->
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- chart -->
        <script src="js/Chart.js"></script>
        <!-- //chart -->
        <!-- js-->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <!--webfonts-->
        <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <!--//webfonts--> 
        <!--animate-->
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
        <script src="js/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>
        <!--//end-animate-->
        <!-- Metis Menu -->
        <script src="js/metisMenu.min.js"></script>
        <script src="js/custom.js"></script>
        <link href="css/custom.css" rel="stylesheet">

        <!--//Metis Menu -->
    </head> 
    <body class="cbp-spmenu-push">
        <div class="main-content">
            <!--left-fixed -navigation-->
            <div class="sidebar" role="navigation">
                <div class="navbar-collapse">
                    <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
                        <div class="scrollbar scrollbar1">
                            <!-- extend base layout -->
                            <%@ include file="data-menu.jsp" %>
                        </div>
                        <!-- //sidebar-collapse -->
                    </nav>
                </div>
            </div>
            <!--left-fixed -navigation-->
            <!-- header-starts -->
            <div class="sticky-header header-section ">
                <div class="header-left">
                    <!--logo -->
                    <div class="logo">
                        <a href="index.jsp">
                            <ul>	
                                <li><h1>Dashboard</h1></li>
                                <div class="clearfix"> </div>
                            </ul>
                        </a>
                    </div>
                    <!--//logo-->
                    <div class="header-right header-right-grid">
                        <div class="profile_details_left"><!--notifications of menu start -->
                            <ul class="nofitications-dropdown">

                            </ul>
                            <div class="clearfix"> </div>
                        </div>
                    </div>


                    <div class="clearfix"> </div>
                </div>
                <!--search-box-->
                <div class="search-box">
                </div>
                <!--//end-search-box-->
                <div class="header-right">

                    <!--notification menu end -->
                    <div class="profile_details">		
                        <%@ include file="data-header.jsp" %>
                    </div>
                    <!--toggle button start-->
                    <button id="showLeftPush"><i class="fa fa-bars"></i></button>
                    <!--toggle button end-->
                    <div class="clearfix"> </div>				
                </div>
                <div class="clearfix"> </div>	
            </div>
            <!-- //header-ends -->
            <!-- main content start-->
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="col-md-12 text-center"> 

                        <%                String result = (String) request.getAttribute("return");
                            if (result != null) {
                        %>
                        <script language="javascript">alert("<% out.print(result); %>");
            window.location = "lihatdeskripsi.jsp";</script>
                        <% } %>  
                        <div class="col-md-12">
                            <div class="panel panel-widget">
                                <div class="input-info">
                                    <h3>Data Description</h3>
                                </div>
                                <div>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th><center>Vision</center></th>
                                                <th><center>Mission</center></th>
                                                <th><center>Purpose</center></th>
                                                <th><center>Motto</center></th>
                                                <th><center>Action</center></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                try {
                                                    Admin obj = new Admin();
                                                    ArrayList data = obj.displaydatadescription();
                                                    for (int i = 0; i < data.size() - 1; i += 5) {
                                                        String iddes = (String) data.get(i);
                                                        String visi = (String) data.get(i + 1);
                                                        String misi = (String) data.get(i + 2);
                                                        String purpose = (String) data.get(i + 3);
                                                        String motto = (String) data.get(i + 4);

                                                        out.println("<tr>");
                                                        out.print("<td>" + visi + "</td>");
                                                        out.print("<td>" + misi + "</td>");
                                                        out.print("<td>" + purpose + "</td>");
                                                        out.print("<td>" + motto + "</td>");
                                                        out.print("<td><a href=ubahdeskripsi.jsp?id=" + iddes + " onClick='return confirm('Are You Sure Want Change This Data?...')'><i class='glyphicon glyphicon-pencil nav_icon' data-toggle='tooltip' data-placement='left' title='Edit'></i></a>");
                                                        out.println("</tr>");
                                                    }
                                                } catch (Exception ex) {
                                                    out.println("Cannot Display Data Description" + ex.getMessage());
                                                }
                                            %>                        
                                        </tbody>
                                    </table>
                                </div><!-- /.box-body -->
                            </div>
                        </div>
                    </div>
                </div>
                <!--//row-->
            </div>
        </div>
        <!--footer-->
        <div class="dev-page">

            <!-- page footer -->   
            <!-- dev-page-footer-closed dev-page-footer-fixed -->
            <div class="dev-page-footer dev-page-footer-fixed"> 
                <!-- container -->
                <div class="container">
                    <div class="copyright">
                        <%@ include file="data-footer.jsp" %>
                    </div>

                </div>
                <!-- //container -->
            </div>
            <!-- /page footer -->
        </div>
        <!--//footer-->
    </div>
    <!-- Classie -->
    <script src="js/classie.js"></script>
    <script>
var menuLeft = document.getElementById('cbp-spmenu-s1'),
        showLeftPush = document.getElementById('showLeftPush'),
        body = document.body;

showLeftPush.onclick = function () {
    classie.toggle(this, 'active');
    classie.toggle(body, 'cbp-spmenu-push-toright');
    classie.toggle(menuLeft, 'cbp-spmenu-open');
    disableOther('showLeftPush');
};


function disableOther(button) {
    if (button !== 'showLeftPush') {
        classie.toggle(showLeftPush, 'disabled');
    }
}
    </script>
    <!-- Bootstrap Core JavaScript --> 

    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <script type="text/javascript" src="js/dev-loaders.js"></script>
    <script type="text/javascript" src="js/dev-layout-default.js"></script>
    <script type="text/javascript" src="js/jquery.marquee.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- candlestick -->
    <script type="text/javascript" src="js/jquery.jqcandlestick.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/jqcandlestick.css" />
    <!-- //candlestick -->

    <!--max-plugin-->
    <script type="text/javascript" src="js/plugins.js"></script>
    <!--//max-plugin-->

    <!--scrolling js-->
    <script src="js/jquery.nicescroll.js"></script>
    <script src="js/scripts.js"></script>
    <!--//scrolling js-->

    <script type="text/javascript" src="js/valida.2.1.6.min.js"></script>
    <script type="text/javascript" >

$(document).ready(function () {

    // show Valida's version.
    $('#version').valida('version');

    // Exemple 1
    $('.valida').valida();

    // Exemple 2
    /*
     $('.valida').valida({
                 
     // basic settings
     validate: 'novalidate',
     autocomplete: 'off',
     tag: 'p',
                 
     // default messages
     messages: {
     submit: 'Wait ...',
     required: 'Este campo é obrigatório',
     invalid: 'Field with invalid data',
     textarea_help: 'Digitados <span class="at-counter">{0}</span> de {1}'
     },
                 
     // filters & callbacks
     use_filter: true,
                 
     // a callback function that will be called right before valida runs.
     // it must return a boolan value (true for good results and false for errors)
     before_validate: null,
                 
     // a callback function that will be called right after valida runs.
     // it must return a boolan value (true for good results and false for errors)
     after_validate: null
                 
     });
     */

    // setup the partial validation
    $('#partial-1').on('click', function (ev) {
        ev.preventDefault();
        $('#res-1').click(); // clear form error msgs
        $('form').valida('partial', '#field-1'); // validate only field-1
        $('form').valida('partial', '#field-1-3'); // validate only field-1-3
    });

});

    </script>
    <!-- //input-forms -->
    <!--validator js-->
    <script src="js/validator.min.js"></script>
</body>
</html>
</html>

