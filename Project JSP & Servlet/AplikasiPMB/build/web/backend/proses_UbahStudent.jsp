<%-- 
    Document   : proses_UbahStudent
    Created on : Apr 14, 2016, 1:48:43 PM
    Author     : INTELAMD
--%>

<%@page import="Model.Admin" %>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String pswd1 = request.getParameter("passwordlama1");
            String pswd2 = request.getParameter("passwordlama2");//yang di input
   
            /*pswd1="qwerty";
   if(pswd1.equals(pswd2))
   {*/
       
            Admin ubahdata = new Admin();
            ubahdata.setIdStudent(request.getParameter("idstudent"));
            ubahdata.setIdMajor(request.getParameter("idmajor"));
            ubahdata.setfullname(request.getParameter("name"));
            ubahdata.setgender(request.getParameter("gender"));
            ubahdata.setbirth(request.getParameter("birth"));
            ubahdata.setschool(request.getParameter("school"));
            ubahdata.setmajor(request.getParameter("major"));
            ubahdata.setaddress(request.getParameter("address"));
            ubahdata.setphone(request.getParameter("phone"));
            ubahdata.setemail(request.getParameter("email"));
            ubahdata.setgraduation(request.getParameter("graduation"));
            ubahdata.setphoto(request.getParameter("photo"));
     
            int i = ubahdata.ubahDataStudent();
            if(i > 0) {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatstudent.jsp");
                request.setAttribute("return","Data Has Been Updated!");
                    dispatch.forward(request, response);
            }
            else {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatstudent.jsp");
                request.setAttribute("return","Data Cannot Updated!");
                    dispatch.forward(request, response);
            }
    /*}
    else
    {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatmajor.jsp");
                request.setAttribute("return","Password Invalid!");
                    dispatch.forward(request, response);
    }*/
    %>