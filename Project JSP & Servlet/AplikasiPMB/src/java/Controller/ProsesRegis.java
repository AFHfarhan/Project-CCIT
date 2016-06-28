/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Code;
import Config.KoneksiDatabase;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 *
 * @author Ugi Ispoyo Widodo
 */
public class ProsesRegis extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    FileItem flItem = null;
    String IdStudent, IdMajor, Fullname, Gender, Birth, School, Major, Address, Phone, Email, Grayear, Photo;
private void processFormField(FileItem item) 
    {
        if (item.getFieldName().equals("ids")) 
        {
            IdStudent = item.getString();
        } 
        else if (item.getFieldName().equals("idm")) 
        {
            IdMajor = item.getString();
        }
        else if (item.getFieldName().equals("name"))
        {
            Fullname = item.getString();
        }
        else if (item.getFieldName().equals("gender")) 
        {
            Gender = item.getString();
        }
        else if (item.getFieldName().equals("birth")) 
        {
            Birth = item.getString();
        }
        else if (item.getFieldName().equals("school")) 
        {
            School = item.getString();
        }
        else if (item.getFieldName().equals("major")) 
        {
            Major = item.getString();
        }
        else if (item.getFieldName().equals("address")) 
        {
            Address = item.getString();
        }
        else if (item.getFieldName().equals("phone")) 
        {
            Phone = item.getString();
        }
        else if (item.getFieldName().equals("email")) 
        {
            Email = item.getString();
        }
        else if (item.getFieldName().equals("gra-year")) 
        {
            Grayear = item.getString();
        }
        else if (item.getFieldName().equals("photoubah")) 
        {
            Photo = item.getString();
        }
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            boolean isMultiPart = ServletFileUpload.isMultipartContent(request);
            if (isMultiPart) {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = upload.parseRequest(request);
                Iterator<FileItem> iter = items.iterator();
                while (iter.hasNext()) 
                {
                    FileItem fileItem = iter.next();
                    if (fileItem.isFormField()) 
                    {
                        processFormField(fileItem);
                    } 
                    else 
                    {
                        flItem = fileItem;
                    }
                }
                try 
                {
                    Photo = flItem.getName();
                    File savedFile = new File("D:\\Latihan Java\\web\\AplikasiPMB\\web\\backend\\images_student\\" + Photo);
                    flItem.write(savedFile);
                }
                catch(Exception e)
                { 
                    out.println(e);
                    System.out.println(e.getMessage());
                }

           KoneksiDatabase obj_con = new KoneksiDatabase();
           
           Code b = new Code();
           b.setIdStudent(IdStudent);
           b.setFullname(Fullname);
           b.setIdMajor(IdMajor);
           b.setGender(Gender);
           b.setBirth(Birth);
           b.setSchool(School);
           b.setmajor(Major);
           b.setAddress(Address);
           b.setPhone(Phone);
           b.setEmail(Email);
           b.setGraduation(Grayear);
           b.setPhoto(Photo);
           
           int i = b.Registration();
           int g = b.doUpdate(IdMajor);
           if(i > 0)
           {
                RequestDispatcher rd = request.getRequestDispatcher("frontend/index.jsp");
                request.setAttribute("return", "Regristration Successfully!");
                rd.forward(request, response);
                //response.sendRedirect("frontend/index.jsp");
           }
           else
           {
                RequestDispatcher rd = request.getRequestDispatcher("frontend/index.jsp");
                request.setAttribute("return", "Registration Failed!");
                rd.forward(request, response);
           }
        }
        }
        catch (Exception ex) 
        {
            out.println(ex.getCause());
            System.out.println(ex.getMessage());
        } 
            /* TODO output your page here. You may use following sample code. */
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
