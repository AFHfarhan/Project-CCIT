<%-- 
    Document   : proses_UbahMajor
    Created on : Apr 12, 2016, 12:55:17 PM
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
            ubahdata.setIdMajor(request.getParameter("idmajor"));
            ubahdata.setProgram(request.getParameter("program"));
            ubahdata.setStage(request.getParameter("stage"));
            ubahdata.setConcentration(request.getParameter("concentration"));
            ubahdata.setstatusmajor(request.getParameter("statusmajor"));
            ubahdata.setQuota(request.getParameter("quota"));
     
            int i = ubahdata.ubahDataMajor();
            if(i > 0) {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatmajor.jsp");
                request.setAttribute("return","Data Has Been Updated!");
                    dispatch.forward(request, response);
            }
            else {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatmajor.jsp");
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