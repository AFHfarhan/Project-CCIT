<%-- 
    Document   : proses-UbahDeskripsi
    Created on : Apr 14, 2016, 7:40:24 AM
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
            /*String id = request.getParameter("iddes");
            String visi = request.getParameter("visi");
            String misi = request.getParameter("misi");
            ubahdata.setPurpose(request.getParameter("purpose"));
            ubahdata.setMotto(request.getParameter("motto"));
            
            out.print(id);
            out.println(visi);
            out.println(misi);*/
            ubahdata.setIDDes(request.getParameter("iddes"));
            ubahdata.setVision(request.getParameter("visi"));
            ubahdata.setMision(request.getParameter("misi"));
            ubahdata.setPurpose(request.getParameter("purpose"));
            ubahdata.setMotto(request.getParameter("motto"));
     
     
            //out.print(visi);
            int i = ubahdata.ubahDeskripsi();
            if(i > 0) {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatdeskripsi.jsp");
                request.setAttribute("return","Data Has Been Updated!");
                    dispatch.forward(request, response);
            }
            else {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatdeskripsi.jsp");
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