<%-- 
    Document   : proses-HapusDataMajor
    Created on : Apr 12, 2016, 1:08:00 PM
    Author     : INTELAMD
--%>

<%@page import="Model.Admin" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String idMajorHapus = request.getParameter("idmajorhapus");
            out.print(idMajorHapus);
            Admin a = new Admin();
            a.setIdMajor(idMajorHapus);
            int i = a.hapusDataMajor();
            if(i > 0)
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatmajor.jsp");
                    request.setAttribute("return", "Data Has Been Deleted!");
                    dispatch.forward(request, response);
                }
                else
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatmajor.jsp");
                    request.setAttribute("return", "Data Cannot Deleted!");
                    dispatch.forward(request, response);
                }
    %>

