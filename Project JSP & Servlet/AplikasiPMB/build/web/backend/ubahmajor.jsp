<%-- 
    Document   : ubahmajor
    Created on : Apr 12, 2016, 11:55:21 AM
    Author     : INTELAMD
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<%!
    String idmajor, program, stage, concentration, statusmajor, quota;
%>
<%
    Admin obj = new Admin();
    String id = request.getParameter("id");
    try {
        obj.setIdMajor(id);
        ArrayList data = obj.getDataMajor();
        idmajor = (String) data.get(0);
        program = (String) data.get(1);
        stage = (String) data.get(2);
        concentration = (String) data.get(3);
        statusmajor = (String) data.get(4);
        quota = (String) data.get(5);
    } catch (Exception ex) {
        out.println("Data Cannot Display");
    }
%>  
<html>
    <head>
        <title>Change Major Data | Administrator</title>
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

        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
        <script type="text/javascript">
                    $(document).ready(function () {
                        $("#ubahadmin").validate({
                            rules: {program: {required: true,
                                    minlength: 3,
                                    maxlength: 30
                                },
                                stage: {required: true,
                                    minlength: 6,
                                    maxlength: 100
                                },
                                concentration: {required: true,
                                    minlength: 6,
                                    maxlength: 500
                                },
                                statusmajor: {minlength: 6, required: true,
                                    maxlength: 50
                                },
                                quota: {minlength: 6, required: true,
                                    maxlength: 50
                                },
                                passwordlama1: {required: true
                                },
                                passwordlama2: {required: true
                                }
                            },
                            messages: {
                                program: {required: 'Please Enter Program!', minlength: 'Minimal 6 Character!'},
                                stage: {required: 'Please Enter Stage!', minlength: 'Minimal 6 Character!'},
                                concentration: {required: 'Please Enter Concentration!', minlength: 'Minimal 6 Character!'},
                                statusmajor: {required: 'Please Enter Status!', minlength: 'Minimal 6 Character!'},
                                quota: {required: 'Please Enter Quota!', minlength: 'Minimal 1 Character!'},
                                passwordlama1: {required: 'Password Tidak Boleh Kosong'},
                                passwordlama2: {required: 'Password Harus Di Isi!'}
                            }});
                    });
        </script>
        <style type="text/css">
        #ubahadmin label.error {
        color:#F00;
        font-size:12px
        }
        .modal-body .form-horizontal .col-sm-2,
        .modal-body .form-horizontal .col-sm-10 {
            width: 100%
        }

        .modal-body .form-horizontal .control-label {
            text-align: left;
        }
        .modal-body .form-horizontal .col-sm-offset-2 {
            margin-left: 15px;
        }
        </style>

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
            <div class="sticky-header header-section">
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
                    <div class="col-md-12"> 

                        <div class="col-md-6">
                            <div class="panel panel-widget">
                                <div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
                                    <div class="input-info">
                                        <h3>Change Major Data : <%=idadmin1%></h3>
                                        <%
                                            String result = (String) request.getAttribute("status");
                                            if (result != null) {
                                        %>
                                        <script language="javascript">alert("<% out.print(result); %>");
                                    window.location = "addmajor.jsp";</script>
                                        <% }%>  

                                    </div>
                                    <div class="form-body form-body-info">
                                        <form method="POST" action="proses_UbahMajor.jsp" id="ubahmanjor" name="ubahmajor" data-toggle="validator" novalidate>
                                            <div class="form-group valid-form">
                                                <input type="text" class="form-control" id="inputName" value="<%=idmajor%>" name="idmajor" readonly="" required="">
                                            </div>
                                            <div class="form-group valid-form">
                                                <input type="text" class="form-control" maxlength="30" id="program" value="<%=program%>" name="program" placeholder="Program.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" id="stage" value="<%=stage%>" name="stage"  placeholder="Stage.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="500" id="concentration" value="<%=concentration%>" name="concentration"  placeholder="Concentration.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" id="statusmajor" value="<%=statusmajor%>" name="statusmajor"  placeholder="Status.." required="">
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" minlength="1" id="quota" value="<%=quota%>" name="quota"  placeholder="Quota.." required="">
                                            </div>
                                            <button style="margin-top:20px;" type="reset" class="btn btn-primary">Reset</button>
                                        
                                        <div class="form-group">
                                            <button id="simpan" type="submit" class="btn btn-primary">Save</button>
                                        </div>
                                            </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-widget">
                                <div class="input-info">
                                    <h3><center>Data Major</center></h3>
                                    <hr>
                                </div>
                                <div style="overflow-x: auto;">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID Major</th>
                                                <th>Program</th>
                                                <th>Stage</th>
                                                <th>Concentration</th>
                                                <th>Status</th>
                                                <th>Quota</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <%
                                                try {
                                                                                ArrayList data = obj.displaydatamajor();
                                                                                for (int i = 0; i < data.size() - 1; i += 6) {
                                                                                    String idmajor = (String) data.get(i);
                                                                                    String program = (String) data.get(i + 1);
                                                                                    String stage = (String) data.get(i + 2);
                                                                                    String concentration = (String) data.get(i + 3);
                                                                                    String statusmajor = (String) data.get(i + 4);
                                                                                    String quota = (String) data.get(i + 5);

                                                                                    out.println("<tr>");
                                                                                    out.print("<td>" + idmajor + "</td>");
                                                                                    out.print("<td>" + program + "</td>");
                                                                                    out.print("<td>" + stage + "</td>");
                                                                                    out.print("<td>" + concentration + "</td>");
                                                                                    out.print("<td>" + statusmajor + "</td>");
                                                                                    out.print("<td>" + quota + "</td>");
                                                                                    out.println("</tr>");
                                                                                }
                                                                            } catch (Exception ex) {
                                                                                out.println("Cannot Display Data Major" + ex.getMessage());
                                                                            }
                                                %>                  
                                            </tr>
                                        </tbody>
                                    </table>
                                </div><!-- /.box-body -->
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
    </body>
</html>
</html>

