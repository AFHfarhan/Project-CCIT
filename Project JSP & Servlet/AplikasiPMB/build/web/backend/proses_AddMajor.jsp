<%-- 
    Document   : proses_AddMajor
    Created on : Apr 12, 2016, 1:22:25 PM
    Author     : INTELAMD
--%>

<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.Admin"%>
<!DOCTYPE html>
<%
    DiskFileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    Admin c = new Admin();
    List<FileItem> formItems = upload.parseRequest(request);
    for (FileItem item : formItems) {
        // processes only fields that are not form fields
        if (!item.isFormField()) {
            String fileName = new File(item.getName()).getName();

        }
        //Admin c = new Admin();
        String name, value;
        if (item.isFormField()) {
            name = item.getFieldName();
            value = item.getString();
            if (name.equals("idmajor")) {
                c.setIdMajor(value);
            }
            if (name.equals("program")) {
                c.setProgram(value);
            }
            if (name.equals("stage")) {
                c.setStage(value);
            }
            if (name.equals("concentration")) {
                c.setConcentration(value);
            }
            if (name.equals("statusmajor")) {
                c.setstatusmajor(value);
            }
            if (name.equals("quota")) {
                c.setQuota(value);
            }
        }
    }
    int i = c.tambahMajor();
    if (i > 0) 
    {
        RequestDispatcher dispatch = request.getRequestDispatcher("addmajor.jsp");
        request.setAttribute("status", "Data Major Has Been Saved!");
        dispatch.forward(request, response);
    }
    else
    {
        RequestDispatcher dispatch = request.getRequestDispatcher("addmajor.jsp");
        request.setAttribute("status", "Data Major Cannot Saved!");
        dispatch.forward(request, response);
    }
%>