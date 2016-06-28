<%-- 
    Document   : proses_UbahAdmin
    Created on : Apr 10, 2016, 11:25:59 PM
    Author     : Ugi Ispoyo Widodo
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
            String pswd2 = request.getParameter("passwordlama2");
   
   if(pswd1.equals(pswd2))
   {
       
            Admin ubahdata = new Admin();
            ubahdata.setIDAdmin(request.getParameter("idadmin"));
            ubahdata.setNama(request.getParameter("nama"));
            ubahdata.setUsername(request.getParameter("user"));
            ubahdata.setPassword(request.getParameter("passwordbaru1"));
            ubahdata.setStatus(request.getParameter("statusadmin"));
     /*DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            Admin c = new Admin();
    List<FileItem> formItems = upload.parseRequest(request);
                    for (FileItem item : formItems) {
                        // processes only fields that are not form fields
                        if (!item.isFormField()) {
                            String fileName = new File(item.getName()).getName();

                        }
            //Admin c = new Admin();
            String name,value;
                        if( item.isFormField() )
                        {
                            name = item.getFieldName();
                            value = item.getString(); 
                            if(name.equals("idadmin")) {
                                c.setIDAdmin(value);
                            }
                            if(name.equals("nama")) {
                                c.setNama(value);
                            }
                            if(name.equals("user")) {
                                c.setUsername(value);
                            }
                            if(name.equals("passwordbaru1")) {
                                c.setPassword(value);
                            }
                            if(name.equals("statusadmin")) {
                                c.setStatus(value);
                            }
                        }
                        
                    }*/
            int i = ubahdata.ubahDataAdmin();
            if(i > 0) {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatadmin.jsp");
                request.setAttribute("return","Data Has Been Updated");
                    dispatch.forward(request, response);
            }
            else {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatadmin.jsp");
                request.setAttribute("return","Data Cannot Updated!");
                    dispatch.forward(request, response);
            }
    }
    else
    {
                    RequestDispatcher dispatch = request.getRequestDispatcher("lihatadmin.jsp");
                request.setAttribute("return","Password Invalid!");
                    dispatch.forward(request, response);
    }
    %>