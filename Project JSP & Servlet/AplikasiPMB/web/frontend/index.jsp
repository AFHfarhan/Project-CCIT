<%-- 
    Document   : index
    Created on : Apr 10, 2016, 8:05:19 PM
    Author     : Ugi Ispoyo Widodo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Admin"%>
<%@page import="Model.Code"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Config.KoneksiDatabase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
        String iddes, vision, mision, motto, purpose; 
        %>
                <%
                    Admin obj = new Admin();                    
                    String id = "1";
                    try{
                        obj.setIDDes(id);
                        ArrayList data = obj.getDeskription();
                        iddes = (String)data.get(0);
                        vision = (String)data.get(1);
                        mision = (String)data.get(2);
                        purpose = (String)data.get(3);  
                        motto = (String)data.get(4);         
                    }
                    catch(Exception ex) {
                        out.println("Data Gagal Ditampilkan");
                    }
                %>  
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WELCOME TO STMIK RAHARJA</title>

	
	<link rel="shortcut icon" href="img/Logo.png"/>
    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
        <!--<script src="js/jquery-1.11.1.min.js"></script>
    
    
<script>
            function readURL(input) { // Mulai membaca inputan gambar
                if (input.files && input.files[0]) {
                    var reader = new FileReader(); // Membuat variabel reader untuk API FileReader

                    reader.onload = function (e) { // Mulai pembacaan file
                        $('#preview_photo') // Tampilkan gambar yang dibaca ke area id #preview_gambar
                                .attr('src', e.target.result)
                                .width(100)// Menentukan lebar gambar preview (dalam pixel)
                                .height(100); // Jika ingin menentukan lebar gambar silahkan aktifkan perintah pada baris ini
                    };

                    reader.readAsDataURL(input.files[0]);
                }
                }
        </script>-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">STMIK RAHARJA</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#visi">Vision</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#misi">Mission</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#purpose">Purpose</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#motto">Motto</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#regis">Registration</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" width="200px" height="200px" src="img/Logo.png" alt="">
                    <div class="intro-text">
                        <span class="name">STMIK RAHARJA</span>
                        <hr class="star-light">
                        <span class="skills">"Building a prosperous society through science and technology"</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Grid Section -->
    <section id="visi">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Vision</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <p><%=vision%></p>
                </div>
            </div>
        </div>
    </section>

    <!-- Misi Section -->
    <section id="misi" style="background: #00a78e;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Mission</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <p><%=mision%></p>
                </div>
            </div>
        </div>
    </section>

    <!-- Purpose Section -->
    <section id="purpose">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Purpose</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <p><%=purpose%></p>
                </div>
            </div>
        </div>
    </section>
    
    <section id="motto"  style="background: #00a78e;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Motto</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <p><%=motto%></p>
                    <br>
                    <br>
                </div>
            </div>
        </div>
    </section>
    
     <section id="regis">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Registration</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="table-responsive">

                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th><center>Program</center></th>
                                                <th><center>Level</center></th>
                                                <th><center>Concentration</center></th>
                                                <th><center>Status</center></th>
                                                <th><center>Quota</center></th>
                                                <th><center>Action</center></th>
                                            </tr>
                                        </thead>
                                    <%
                                        KoneksiDatabase Kon = new KoneksiDatabase();
                                        ResultSet rs = null;
                                        try {
                                            Connection con = Kon.Open();
                                            String str = null;
                                            str = "SELECT * FROM Major";
                                            Statement s = con.createStatement();
                                            rs = s.executeQuery(str);
                                            while (rs.next()) {
                                                id = rs.getString(1);
                                                out.println("<tr>");
                                                out.println("<td>" + rs.getString(2) + "</td>");
                                                out.println("<td>" + rs.getString(3) + "</td>");
                                                out.println("<td>" + rs.getString(4) + "</td>");
                                                out.println("<td>" + rs.getString(5) + "</td>");
                                                out.println("<td>" + rs.getString(6) + "</td>");
                                                out.print("<td><a href='#portfolioModal"+ id +"' class='portfolio-link' data-toggle='modal'>Registration</td>");
                                                out.println("</tr>");
                                            }
                                        } catch (Exception ex) {
                                            out.println(ex.getMessage());
                                        }
                                    %>
                                </table>
                            </div>
            </div>
        </div>
    </section>
    <%
                                    String result = (String)request.getAttribute("return");
                                    if(result != null)
                                    {
                                %>
                                <script language="javascript">alert("<% out.print(result); %>"); window.location = "frontend/index.jsp";</script>
                              <% } %>  
    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; 2016 STMIK RAHARJA
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <%
                                        try {
                                            Connection con = Kon.Open();
                                            String str = null;
                                            str = "SELECT * FROM Major";
                                            Statement s1 = con.createStatement();
                                            rs = s1.executeQuery(str);
                                            while (rs.next()) {
                                                id = rs.getString(1);
                                            %>
    <!-- Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal<% out.print(id);%>" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="modal-body">
                            <h2>FORM REGISTRATION</h2>
                            <hr>
                    <form method="POST" action="../ProsesRegis"  data-toggle="validator" novalidate="true" enctype="multipart/form-data">
                        <div class="forms-grids">
                            <div class="col-md-4">
                                <div class="panel panel-widget">
                                    <div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
                                        <div class="form-body form-body-info">
                                            <div class="form-group valid-form">
                                                <input type="text" class="form-control" name="ids" id="inputStudent" value="<%
                                                    String idstudent = null;
                                                    Code auto = new Code();
                                                    idstudent = auto.autoidstudent();
                                                    out.print(idstudent);
                                                   %> 
                                                   " readonly="" placeholder="ID Student" required="">
                                        </div>
                                        <div class="form-group valid-form">
                                            <input type="text" class="form-control" name="idm" value="<% out.print(id);%>" id="inputMajor" readonly="" placeholder="ID Major" required="">
                                        </div>
                                        <div class="form-group has-feedback">
                                            <input type="text" name="name" data-toggle="validator" data-minlength="6" class="form-control" id="inputName" placeholder="Full Name" required="">
                                            <span class="help-block">Minimum of 6 characters</span>
                                        </div>
                                        <div class="form-group">
                                            <span><p align="left">Gender :</p></span>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" value="Female" name="gender" required="">
                                                        Female
                                                        <input type="radio" value="Male" name="gender" style="margin-left: 5px;" required="">
                                                        &nbsp; &nbsp; &nbsp; &nbsp;Male
                                                    </label>
                                                </div>
                                            </div>
                                        <div class="form-group">
                                            <input type="text" data-toggle="validator" data-minlength="6" class="form-control" name="birth" id="inputBirth" placeholder="Date of Birth" required="">
                                            <span class="help-block">Minimum of 6 characters</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="panel panel-widget">
                                <div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
                                    <div class="form-body form-body-info">
                                        <div class="form-group valid-form">
                                            <input type="text" data-toggle="validator" data-minlength="6" class="form-control" name="school" id="inputSchool" placeholder="School Name" required="">
                                            <span class="help-block">Minimum of 6 characters</span>
                                        </div>
                                        <div class="form-group has-feedback">
                                            <span><p align="left">Major :</p></span>
                                            <select name="major" id="selector1" class="form-control">
                                                <option value="Sains">Sains</option>
                                                <option value="Social">Social</option>
                                                <option value="Vocation">Vocational</option>
                                            </select>
                                        </div>
                                        <div class="form-group valid-form">
                                            <textarea data-toggle="validator" rows="5" data-minlength="6" class="form-control" name="address" id="inputAddress" placeholder="Address" required=""></textarea>
                                            <span class="help-block">Minimum of 6 characters</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="panel panel-widget">
                                <div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
                                    <div class="form-body form-body-info">
                                        <div class="form-group valid-form">
                                            <input type="text" data-toggle="validator" data-minlength="11" class="form-control" name="phone" id="inputName" placeholder="Phone No" required="">
                                            <span class="help-block">Minimum of 11 characters</span>
                                        </div>
                                        <div class="form-group valid-form">
                                            <input type="email" data-toggle="validator" class="form-control" name="email" id="inputName"  data-error="Bruh, that email address is invalid" placeholder="Email" required="">
                                            
                                            <span class="help-block with-errors">Please enter a valid email address</span>
                                        </div>
                                        <div class="form-group has-feedback">
                                            <span><p align="left">Year :</p></span>
                                            <select name="gra-year" id="selector1" class="form-control" required="">
                                                <option value="2002">2002</option>
                                                <option value="2003">2003</option>
                                                <option value="2004">2004</option>
                                                <option value="2005">2005</option>
                                                <option value="2006">2006</option>
                                                <option value="2007">2007</option>
                                                <option value="2008">2008</option>
                                                <option value="2009">2009</option>
                                                <option value="2010">2010</option>
                                                <option value="2011">2011</option>
                                                <option value="2012">2012</option>
                                                <option value="2013">2013</option>
                                                <option value="2014">2014</option>
                                                <option value="2015">2015</option>
                                                <option value="2016">2016</option>
                                            </select>
                                        </div>
                                        <div class="form-group has-feedback">
                                            <table>
                                                <tr>
                                                    <td>
                                                <!--<center><img width="100px" id="preview_photo" style="border-radius: 0%; border: 2px" height="100px" src="img/icon.png"></center>-->
                                                </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    <span><p align="left">Choose Photo</p></span> 
                                                        <input type="file" id="photoubah" name="photoubah" maxlength="200" onchange="readURL(this);" class="btn btn-default" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>

                        <div class="col-md-12">
                            <div class="panel panel-widget">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary disabled">Submit</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                </div>
                                </div>
                            </div>
                        </div>
                                    </form>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
                                            }
                                        }
catch (Exception ex) {
                                            out.println(ex.getMessage());
                                        }
                                    %>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/freelancer.js"></script>
    
   <script type="text/javascript" src="js/valida.2.1.6.min.js"></script>
		<script type="text/javascript" >

			$(document).ready(function() {

				// show Valida's version.
				$('#version').valida( 'version' );

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
				$('#partial-1').on('click', function( ev ) {
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
