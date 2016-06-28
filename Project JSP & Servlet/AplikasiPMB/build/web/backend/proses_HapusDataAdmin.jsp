<%-- 
    Document   : proses_HapusDataAdmin
    Created on : Apr 10, 2016, 10:41:53 PM
    Author     : Ugi Ispoyo Widodo
--%>

<%@page import="Model.Admin" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String idAdminHapus = request.getParameter("idadminhapus");
    String status = request.getParameter("status");
            //out.print(idAdminHapus);
            Admin a = new Admin();
            if(status.equals("Admin"))
            {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatadmin.jsp");
                    request.setAttribute("return", "Admin Account Cannot be Deleted!");
                    dispatch.forward(request, response);
            }
            else 
            {
            a.setIDAdmin(idAdminHapus);
            int i = a.hapusDataAdmin();
            if(i > 0)
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatadmin.jsp");
                    request.setAttribute("return", "Account Data Has Been Deleted!");
                    dispatch.forward(request, response);
                }
                else
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatadmin.jsp");
                    request.setAttribute("return", "Account Data Cannot Delete!");
                    dispatch.forward(request, response);
                }
            }
    %>
