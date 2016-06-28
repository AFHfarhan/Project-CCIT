<%-- 
    Document   : proses_Logout
    Created on : Apr 10, 2016, 6:32:31 PM
    Author     : Ugi Ispoyo Widodo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <%

        session.removeAttribute("username");
        session.removeAttribute("password");
        session.invalidate();
            response.sendRedirect("login.jsp");
        %>