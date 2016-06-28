<%-- 
    Document   : data-menu
    Created on : Apr 6, 2016, 5:10:27 PM
    Author     : Ugi Ispoyo Widodo
--%>

<%@page import="Model.Admin" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
    <%!
        String status1, idadmin1, nama1, user2, password1; 
        %>
        
<ul class="nav" id="side-menu">   	<li>
								<a href="index.jsp"><i class="fa fa-home nav_icon"></i>Dashboard</a>
							</li>
        <%
                        String cekuser = (String)session.getAttribute("username");
                            Admin cek = new Admin();
                        if(cekuser != null)
                        {
                    try{
                        cek.setUsername(cekuser);
                        ArrayList data = cek.cekDataStatusAdmin();
                        idadmin1 = (String)data.get(0);
                        nama1 = (String)data.get(1);
                        user2 = (String)data.get(2);
                        password1 = (String)data.get(3);     
                        status1 = (String)data.get(4);   
                    }
                    catch(Exception ex) {
                        out.println("Gagal Ambil Data!");
                    }
                    String hasilcekstatusadmin = status1;
                        if(hasilcekstatusadmin.equals("Admin"))
                        {      
                            %>
                            <li>
								<a href="#"><i class="glyphicon glyphicon-user nav_icon"></i>Administrator <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="addadmin.jsp">Add Account Data</a>
									</li>
									<li>
										<a href="lihatadmin.jsp">View Account Data</a>
									</li>
								</ul>
							</li>					
    <li>
                <a href="lihatstudent.jsp"><i class="glyphicon glyphicon-education nav_icon"></i>Student Data</a>
    </li>		
    <li>
                <a href="lihatdeskripsi.jsp"><i class="glyphicon glyphicon-paperclip nav_icon"></i>Description</a>
    </li>
    <li>
        <a href="datamajor.jsp"><i class="glyphicon glyphicon-list nav_icon"></i>Major Data <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level collapse">
            <li>
                <a href="addmajor.jsp">Add Major</a>
            </li>
            <li>
                <a href="lihatmajor.jsp">View Major</a>
            </li>
        </ul>
    </li>
    <%
    } else {
    %>					
    <li>
                <a href="lihatstudent.jsp"><i class="glyphicon glyphicon-education nav_icon"></i>Student Data</a>
    </li>			
    <li>
                <a href="lihatdeskripsi.jsp"><i class="glyphicon glyphicon-paperclip nav_icon"></i>Description</a>
    </li>
    <li>
        <a href="datamajor.jsp"><i class="glyphicon glyphicon-list nav_icon"></i>Major Data <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level collapse">
            <li>
                <a href="addmajor.jsp">Add Major</a>
            </li>
            <li>
                <a href="lihatmajor.jsp">View Major</a>
            </li>
        </ul>
    </li>
    <%  }
        }
    %>
</ul>