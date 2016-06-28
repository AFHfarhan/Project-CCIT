<%-- 
    Document   : ubahadmin
    Created on : Apr 9, 2016, 12:49:51 AM
    Author     : Ugi Ispoyo Widodo
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
        <%!
        String idadminubah, nama, userubah, password, status; 
        %>
                <%
                    Admin obj = new Admin();                    
                    String id = request.getParameter("id");
                    try{
                        obj.setIDAdmin(id);
                        ArrayList data = obj.getDataAdmin();
                        idadminubah = (String)data.get(0);
                        nama = (String)data.get(1);
                        userubah = (String)data.get(2);
                        password = (String)data.get(3);     
                        status = (String)data.get(4);      
                    }
                    catch(Exception ex) {
                        out.println("Data Gagal Ditampilkan");
                    }
                %>  
<html>
<head>
<title>Manage Account | Administrator</title>
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
$(document).ready(function() {
$("#ubahadmin").validate({
    rules:{ nama:{required:true,
	              minlength:3,
				  maxlength:30
	},
            user:{required:true,
	              minlength:6,
				  maxlength:30
			},
            passwordbaru1:{
	              minlength:6,
				  maxlength:30
			},
            passwordbaru2:{equalTo:"#passwordbaru1"
				  },
            passwordlama1:{required:true
				  },
            passwordlama2:{required:true
	}
        },
    messages:{ 
            nama:{required:'Nama Harus Di Isi!',minlength:'Minimal 6 Character!'},
            user:{required:'Username Harus Di Isi!',minlength:'Minimal 6 Huruf!'},
            passwordbaru1:{minlength:'Minimal 6 Huruf!'},
            passwordbaru2:{equalT0:'Password Tidak Sama Dengan Sebelumnya!'},
            passwordlama1:{required:'Password Tidak Boleh Kosong'},
            passwordlama2:{required:'Password Harus Di Isi!'}
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
 <%
                    String hasilcekstatusadmin = status1;
                        if(!hasilcekstatusadmin.equals("Admin"))
                        {      
            response.sendRedirect("index.jsp");
                        }
                            %>
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
										<h3>Change Account : <%=idadmin1%></h3>
            <%
                                    String result = (String)request.getAttribute("status");
                                    if(result != null)
                                    {
                                %>
                                <script language="javascript">alert("<% out.print(result); %>"); window.location = "addadmin.jsp";</script>
                              <% } %>  
                              
									</div>
									<div class="form-body form-body-info">
                                                                            <form method="POST" action="proses_UbahAdmin.jsp" id="ubahadmin" name="ubahadmin" data-toggle="validator" novalidate>
											<div class="form-group valid-form">
                                <input type="text" class="form-control" id="inputName" value="<%=idadminubah%>" name="idadmin" readonly="" required="">
											</div>
											<div class="form-group valid-form">
                                                                                            <input type="text" class="form-control" maxlength="30" id="nama" value="<%=nama%>" name="nama" placeholder="Name.." required="">
                                                                      
											</div>
											<div class="form-group has-feedback">
												<input type="text" class="form-control" maxlength="30" id="user" value="<%=userubah%>" name="user"  placeholder="Username.." required="">
                                                                                                
											</div>
											<div class="form-group has-feedback">
											<select name="statusadmin" id="selector1" class="form-control1">
												<option value="<%=status%>"><%=status%></option>
												<option value="Admin">Admin</option>
												<option value="Staff">Staff</option>
											</select>
                                                                                        </div>
											<div class="form-group">
                                                                                            <input type="hidden" value="<%=password%>" data-toggle="validator" id="passswordlama1" name="passwordlama1" maxlength="30" class="form-control">
											  <input type="password" data-toggle="validator" name="passwordbaru1" id="passwordbaru1" maxlength="30" class="form-control" placeholder="Password.." required="">
											  
											</div>
											<div class="form-group">
											  <input type="password" class="form-control" id="passwordbaru2" maxlength="30" name="passwordbaru2" placeholder="Confirmation password.." required="">
											  <div class="help-block with-errors"></div>
											</div>
<div class="modal fade" id="myModalHorizontal" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm-4">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" 
                   data-dismiss="modal">
                       <span aria-hidden="true">&times;</span>
                       <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    Enter Your Old Password :
                </h4>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
              
                  <div class="form-group">
                    <div class="form-horizontal col-sm-10">
                        <input type="password" id="passwordlama2" name="passwordlama2" required="" class="form-control" placeholder="Password Anda.."/>
                    </div>
                  </div>
                  <br><hr>
                  <div class="form-group">
                <button type="submit" name="ubah_admin" class="btn btn-primary">
                    Save
                </button>
                </div>
            </div>
        </div>
    </div>
</div>
                                                                                          <button style="margin-top:20px;" type="reset" class="btn btn-primary">Reset</button>
                                    </form>
                  <div class="form-group">
                                    <button id="simpan" class="btn btn-primary" data-toggle="modal" data-target="#myModalHorizontal">Save</button>
									</div>
                                                                        </div>
								</div>
							</div>
					</div>
                                                                                          <div class="col-md-6">
                                                                                              <div class="panel panel-widget">
                                                            <div class="input-info">
                                                                <h3><center>Data Admin</center></h3>
                                                                                <hr>
									</div>
                                                            <div style="overflow-x: auto;">
                <table class="table table-bordered table-striped">
								<thead>
									<tr>
									  <th><center>ID Admin</center></th>
									  <th><center>Name</center></th>
									  <th><center>Username</center></th>
									  <th><center>Status</center></th>
									</tr>
								</thead>
								<tbody>
									<tr>
                    <%
                    try{
                        ArrayList data = obj.displaydataadmin();
                        for(int i = 0;i < data.size()-1;i+=4)
                        {
                            //fac_code, fac_name, fac_email, fac_phone
                            String idadmin1 = (String)data.get(i);
                            String nama1 = (String)data.get(i+1);
                            String usertampil = (String)data.get(i+2);
                            String status2 = (String)data.get(i+3);
                            
                            out.println("<tr>");
                            out.print("<td>"+idadmin1+"</td>");
                            out.print("<td>"+nama1+"</td>");
                            out.print("<td>"+usertampil+"</td>");
                            out.print("<td>"+status2+"</td>");
                            out.println("<tr>");
                        }
                    }
                    catch(Exception ex) {
                        out.println("Data Gagal Ditampilkan" + ex.getMessage());
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
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
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

