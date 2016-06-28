<%-- 
    Document   : test.jsp
    Created on : Apr 10, 2016, 6:22:49 PM
    Author     : Ugi Ispoyo Widodo
--%>

<%@page import="Model.Admin"%>
<!DOCTYPE html>
<%
            String Username = request.getParameter("username");
            String Passwords = request.getParameter("password");
            
            Admin a = new Admin();
            a.setUsername(Username);
            a.setPassword(Passwords);
            int i = a.loginAdmin();
            if(i > 0)
            {
                session.setAttribute("username", Username);
                response.sendRedirect("index.jsp");
            }
            else
            {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                request.setAttribute("return", "Password & Username Invalid!");
                rd.forward(request, response);
            }
            %>
