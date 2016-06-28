<%-- 
    Document   : proses_HapusDataStudent
    Created on : Apr 14, 2016, 2:55:05 PM
    Author     : Ugi Ispoyo Widodo
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="Model.Admin" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String idStudentHapus = request.getParameter("idstudenthapus");
            out.print(idStudentHapus);
            Admin a = new Admin();
            a.setIdStudent(idStudentHapus);
            int i = a.hapusDataStudent();
            if(i > 0)
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatstudent.jsp");
                    request.setAttribute("return", "Data Has Been Deleted!");
                    dispatch.forward(request, response);
                }
                else
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatstudent.jsp");
                    request.setAttribute("return", "Data Cannot Deleted!");
                    dispatch.forward(request, response);
                }
    %>