<%-- 
    Document   : prosesAddAdmin
    Created on : Apr 8, 2016, 11:54:07 PM
    Author     : Ugi Ispoyo Widodo
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
     /*       String UPLOAD_DIRECTORY = "upload";
 
    // upload settings
    int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
            Admin c = new Admin();
            if (!ServletFileUpload.isMultipartContent(request)) {
                // if not, we stop here
                PrintWriter writer = response.getWriter();
                writer.println("Error: Form must has enctype=multipart/form-data.");
                writer.flush();
                return;
            }
           String Idadmin = request.getParameter("idadmin");
            String Nama  = request.getParameter("nama");
            String User = request.getParameter("user");
            String Password  = request.getParameter("password");
            
            
            // configures upload settings
            DiskFileItemFactory factory = new DiskFileItemFactory();
            // sets memory threshold - beyond which files are stored in disk
            factory.setSizeThreshold(MEMORY_THRESHOLD);
            // sets temporary location to store files
            factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
            ServletFileUpload upload = new ServletFileUpload(factory);
                List<FileItem> formItems = upload.parseRequest(request);
                    for (FileItem item : formItems) {
                        // processes only fields that are not form fields
                        if (!item.isFormField()) {
                            String fileName = new File(item.getName()).getName();

                        }
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
                            if(name.equals("password")) {
                                c.setPassword(value);
                            }
                        }    
                    }
            /*c.setIDAdmin(Idadmin);
            c.setNama(Nama);
            c.setUsername(User);
            c.setPassword(Password);
                int i = c.tambahAdmin(/*Idadmin, Nama, User, Password);
                if(i > 0)
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("addadmin.jsp");
                    request.setAttribute("status", "Data Admin Berhasil Ditambah!");
                    dispatch.forward(request, response);
                }
                else
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("addadmin.jsp");
                    request.setAttribute("status", "Data Admin Gagal Ditambah!");
                    dispatch.forward(request, response);
                }
        }*/
    
    /*String Idadmin = request.getParameter("idadmin");
            String Nama  = request.getParameter("nama");
            String User = request.getParameter("user");
            String Password  = request.getParameter("password");
            
            Admin c = new Admin();
            c.setIDAdmin(Idadmin);
            c.setNama(Nama);
            c.setUsername(User);
            c.setPassword(Password);*/
            
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
                            if(name.equals("password")) {
                                c.setPassword(value);
                            }
                            if(name.equals("statusadmin")) {
                                c.setStatus(value);
                            }
                        }    
                    }
                int i = c.tambahAdmin(/*Idadmin, Nama, User, Password*/);
                if(i > 0)
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("addadmin.jsp");
                    request.setAttribute("status", "Data Admin Berhasil Ditambah!");
                    dispatch.forward(request, response);
                }
                else
                {
                    RequestDispatcher dispatch = request.getRequestDispatcher("addadmin.jsp");
                    request.setAttribute("status", "Data Admin Gagal Ditambah!");
                    dispatch.forward(request, response);
                }
%>