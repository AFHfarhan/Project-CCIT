<%-- 
    Document   : ubahstudent
    Created on : Apr 14, 2016, 1:01:16 PM
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
    String idstudent, idmajor, name, gender, birth, school, major, address, phone, email, graduation, photo;
%>
<%
    Admin obj = new Admin();
    String id = request.getParameter("id");
    try {
        obj.setIdStudent(id);
        ArrayList data = obj.getDataMajor();
        idstudent = (String) data.get(0);
        idmajor = (String) data.get(1);
        name = (String) data.get(2);
        gender = (String) data.get(3);
        birth = (String) data.get(4);
        school = (String) data.get(5);
        major = (String) data.get(6);
        address = (String) data.get(7);
        phone = (String) data.get(8);
        email = (String) data.get(9);
        graduation = (String) data.get(10);
        photo = (String) data.get(11);
    } catch (Exception ex) {
        out.println("Data Cannot Displayed");
    }
%>  
<html>
    <head>
        <title>Change Student Data | Administrator</title>
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
                            rules: {idmajor: {required: true,
                                    minlength: 3,
                                    maxlength: 30
                                },
                                name: {required: true,
                                    minlength: 6,
                                    maxlength: 100
                                },
                                gender: {required: true,
                                    minlength: 6,
                                    maxlength: 500
                                },
                                birth: {minlength: 6, required: true,
                                    maxlength: 50
                                },
                                school: {minlength: 6, required: true,
                                    maxlength: 50
                                },
                                major: {required: true,
                                    minlength: 6,
                                    maxlength: 100
                                },
                                address: {required: true,
                                    minlength: 6,
                                    maxlength: 500
                                },
                                phone: {minlength: 6, required: true,
                                    maxlength: 50
                                },
                                email: {minlength: 6, required: true,
                                    maxlength: 50
                                },
                                graduation: {minlength: 6, required: true,
                                    maxlength: 50
                                },
                                photo: {minlength: 6, required: true,
                                    maxlength: 50
                                },
                                passwordlama1: {required: true
                                },
                                passwordlama2: {required: true
                                }
                            },
                            messages: {
                                idmajor: {required: 'Please Enter ID Major!', minlength: 'Minimal 6 Character!'},
                                name: {required: 'Please Enter Name!', minlength: 'Minimal 6 Character!'},
                                gender: {required: 'Please Enter Gender!', minlength: 'Minimal 6 Character!'},
                                birth: {required: 'Please Enter Date of Birth!', minlength: 'Minimal 6 Character!'},
                                school: {required: 'Please Enter School Name!', minlength: 'Minimal 6 Character!'},
                                major: {required: 'Please Enter Major!', minlength: 'Minimal 6 Character!'},
                                address: {required: 'Please Enter Address!', minlength: 'Minimal 6 Character!'},
                                phone: {required: 'Please Enter Phone!', minlength: 'Minimal 6 Character!'},
                                email: {required: 'Please Enter Email!', minlength: 'Minimal 6 Character!'},
                                graduation: {required: 'Please Enter Graduation!', minlength: 'Minimal 6 Character!'},
                                photo: {required: 'Please Enter Photo!', minlength: 'Minimal 6 Character!'},
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
                                        <h3>Change Student Data : <%=idstudent%></h3>
                                        <%
                                            String result = (String) request.getAttribute("status");
                                            if (result != null) {
                                        %>
                                        <script language="javascript">alert("<% out.print(result); %>");
                                    window.location = "ubahstudent.jsp";</script>
                                        <% }%>  

                                    </div>
                                    <div class="form-body form-body-info">
                                        <form method="POST" action="proses_UbahStudent.jsp" id="ubahstudent" name="ubahstudent" data-toggle="validator" novalidate>
                                            <div class="form-group valid-form">
                                                <input type="text" class="form-control" id="idstudent" value="<%=idstudent%>" name="idstudent" readonly="" required="">
                                            </div>
                                            <div class="form-group valid-form">
                                                <input type="text" class="form-control" maxlength="30" id="idmajor" value="<%=idmajor%>" name="idmajor" placeholder="ID Major.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" id="name" value="<%=name%>" name="name"  placeholder="Name.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="500" id="gender" value="<%=gender%>" name="gender"  placeholder="Gender.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" id="birth" value="<%=birth%>" name="birth"  placeholder="Birth.." required="">
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" minlength="1" id="school" value="<%=school%>" name="school"  placeholder="School.." required="">
                                            </div>
                                            <div class="form-group valid-form">
                                                <input type="text" class="form-control" maxlength="30" id="major" value="<%=major%>" name="major" placeholder="Major.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" id="address" value="<%=address%>" name="address"  placeholder="Address.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="500" id="phone" value="<%=phone%>" name="phone"  placeholder="Phone.." required="">

                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" id="email" value="<%=email%>" name="email"  placeholder="Email.." required="">
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" minlength="1" id="graduation" value="<%=graduation%>" name="graduation"  placeholder="Graduation.." required="">
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input type="text" class="form-control" maxlength="30" minlength="1" id="photo" value="<%=photo%>" name="photo"  placeholder="Photo.." required="">
                                            </div>
                                            <button style="margin-top:20px;" type="reset" class="btn btn-primary">Cancel</button>
                                        
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
                                    <h3><center>Data Student</center></h3>
                                    <hr>
                                </div>
                                <div style="overflow-x: auto;">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID Student</th>
                                                <th>ID Major</th>
                                                <th>Full Name</th>
                                                <th>Gender</th>
                                                <th>Date of Birth</th>
                                                <th>School Name</th>
                                                <th>Major</th>
                                                <th>Address</th>
                                                <th>Phone</th>
                                                <th>Email</th>
                                                <th>Graduation</th>
                                                <th>Photo</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <%
                                                try {
                                                                                ArrayList data = obj.displaydatastudent();
                                                                                for (int i = 0; i < data.size() - 1; i += 6) {
                                                                                    String idstudent = (String) data.get(i);
                                                                                    String idmajor = (String) data.get(i + 1);
                                                                                    String name = (String) data.get(i + 2);
                                                                                    String gender = (String) data.get(i + 3);
                                                                                    String birth = (String) data.get(i + 4);
                                                                                    String school = (String) data.get(i + 5);
                                                                                    String major = (String) data.get(i + 6);
                                                                                    String address = (String) data.get(i + 7);
                                                                                    String phone = (String) data.get(i + 8);
                                                                                    String email = (String) data.get(i + 9);
                                                                                    String graduation = (String) data.get(i + 10);
                                                                                    String photo = (String) data.get(i + 11);

                                                                                    out.println("<tr>");
                                                                                    out.print("<td>" + idstudent + "</td>");
                                                                                    out.print("<td>" + idmajor + "</td>");
                                                                                    out.print("<td>" + name + "</td>");
                                                                                    out.print("<td>" + gender + "</td>");
                                                                                    out.print("<td>" + birth + "</td>");
                                                                                    out.print("<td>" + school + "</td>");
                                                                                    out.print("<td>" + major + "</td>");
                                                                                    out.print("<td>" + address + "</td>");
                                                                                    out.print("<td>" + phone + "</td>");
                                                                                    out.print("<td>" + email + "</td>");
                                                                                    out.print("<td>" + graduation + "</td>");
                                                                                    out.print("<td>" + photo + "</td>");
                                                                                    out.println("</tr>");
                                                                                }
                                                                            } catch (Exception ex) {
                                                                                out.println("Cannot Display Data Student" + ex.getMessage());
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

