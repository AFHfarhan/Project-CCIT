<%-- 
    Document   : data-header
    Created on : Apr 6, 2016, 5:12:08 PM
    Author     : Ugi Ispoyo Widodo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">
									<span class="prfil-img"><img style="width:50px; margin-top:5px; height:50px; border-radius:50%;" src="images/user1.png" alt=""> </span>  
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <center><i class="fa fa-user"></i>
                            <%
                        String user1 = (String)session.getAttribute("username");
                        if(user1 != null)
                        {
                            out.println(user1);
                        }
                        else
                        {
                            response.sendRedirect("login.jsp");
                        }
                    %></center></li>
								<li> <a href="proses_Logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
