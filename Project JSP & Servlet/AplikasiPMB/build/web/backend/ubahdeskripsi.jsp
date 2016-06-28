<%-- 
    Document   : ubahdeskripsi
    Created on : Apr 14, 2016, 7:25:35 AM
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
    String iddes, visi, misi, purpose, motto;
%>
<%
    Admin obj = new Admin();
    String id = request.getParameter("id");
    try {
        obj.setIDDes(id);
        ArrayList data = obj.getDeskription();
        iddes = (String) data.get(0);
        visi = (String) data.get(1);
        misi = (String) data.get(2);
        purpose = (String) data.get(3);
        motto = (String) data.get(4);
    } catch (Exception ex) {
        out.println("Data Cannot Display");
    }
%>  
<html>
    <head>
        <title>Change Description Data | Administrator</title>
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
        
</script><script language="javascript" type="text/javascript" src="editor/tiny_mce_src.js"></script>
<script type="text/javascript">
tinyMCE.init({
		mode : "textareas",
		theme : "advanced",
		plugins : "table,youtube,advhr,advimage,advlink,emotions,flash,searchreplace,paste,directionality,noneditable,contextmenu",
		
		theme_advanced_buttons2_add : "separator,preview,zoom,separator,forecolor,backcolor,liststyle,fontselect,fontsizeselect",
		theme_advanced_buttons2_add_before: "cut,copy,paste,separator,search,replace,separator",
		theme_advanced_buttons3_add_before : "tablecontrols,separator,youtube,separator",
		theme_advanced_buttons3_add : "emotions,flash",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		extended_valid_elements : "hr[class|width|size|noshade]",
		file_browser_callback : "fileBrowserCallBack",
		paste_use_dialog : false,
		theme_advanced_resizing : true,
		theme_advanced_resize_horizontal : false,
		theme_advanced_link_targets : "_something=My somthing;_something2=My somthing2;_something3=My somthing3;",
		apply_source_formatting : true
});

	function fileBrowserCallBack(field_name, url, type, win) {
		var connector = "../../filemanager/browser.html?Connector=connectors/php/connector.php";
		var enableAutoTypeSelection = true;
		
		var cType;
		tinymcpuk_field = field_name;
		tinymcpuk = win;
		
		switch (type) {
			case "image":
				cType = "Image";
				break;
			case "flash":
				cType = "Flash";
				break;
			case "file":
				cType = "File";
				break;
		}
		
		if (enableAutoTypeSelection && cType) {
			connector += "&Type=" + cType;
		}
		
		window.open(connector, "tinymcpuk", "modal,width=600,height=400");
	}
</script>
        <script src="js/metisMenu.min.js"></script>
        <script src="js/custom.js"></script>
        <link href="css/custom.css" rel="stylesheet">

        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
        <script type="text/javascript">
                    $(document).ready(function () {
                        $("#ubahdeskripsi").validate({
                            rules: {
                                visi: {required: true,
                                    minlength: 3,
                                    maxlength: 1000
                                },
                                misi: {required: true,
                                    minlength: 6,
                                    maxlength: 1000
                                },
                                purpose: {required: true,
                                    minlength: 6,
                                    maxlength: 1000
                                },
                                motto: {minlength: 6, required: true,
                                    maxlength: 1000
                                }
                            },
                            messages: {
                                visi: {required: 'Please Enter Vision!', minlength: 'Minimal 6 Character!'},
                                misi: {required: 'Please Enter Mission!', minlength: 'Minimal 6 Character!'},
                                purpose: {required: 'Please Enter Purpose!', minlength: 'Minimal 6 Character!'},
                                motto: {required: 'Please Enter Motto!', minlength: 'Minimal 6 Character!'},
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

                        <div class="col-md-12">
                            <div class="panel panel-widget">
                                <div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
                                    <div class="input-info">
                                        <h3><center>Change Description Data</center></h3>
                                        <%
                                            String result = (String) request.getAttribute("status");
                                            if (result != null) {
                                        %>
                                        <script language="javascript">alert("<% out.print(result); %>");
                                    window.location = "ubahdeskripsi.jsp";</script>
                                        <% }%>  

                                    </div>
                                     <div class="form-body form-body-info">
                                        <form method="POST" action="proses_UbahDeskripsi.jsp"  data-toggle="validator" novalidate="true">
                                            <div class="form-group valid-form">
                                                <input type="text" class="form-control" id="inputName" value="<%out.print(iddes);%>" name="iddes" readonly="" required="">
                                            </div>
                                            <div class="form-group valid-form">
                                                <textarea class="form-control" data-minlength="6" id="form-input" name="visi" placeholder="Vision.." required=""><%out.print(visi);%></textarea>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <textarea class="form-control"  data-minlength="6" id="form-input" name="misi" placeholder="Mission.." required=""><%out.print(misi);%></textarea>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <textarea  class="form-control"  data-minlength="6" id="form-input" name="purpose" placeholder="Purpose.." required=""><%out.print(purpose);%></textarea>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <textarea class="form-control"  data-minlength="6" id="form-input" name="motto" placeholder="Motto.." required=""><%out.print(motto);%></textarea>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-primary">Save</button>
                                            </div>
                                        </form>
                                    </div>
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
    </body>
</html>

