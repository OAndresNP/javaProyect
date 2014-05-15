/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.SQLException.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Oscar Andres
 */
public class ServletUser extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
                String code = request.getParameter("code");
                String nombre = request.getParameter("nombre");
                String rol = request.getParameter("rol");
                String usuario = request.getParameter("usuario");
                String contraseña = request.getParameter("contrasenia");
                
       
                
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        String consult1,consult2;
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            if(request.getParameter("rol").equals("docente"))
            {
                String Codeescuela = request.getParameter("escuela");
                String Codefacultad = request.getParameter("facultad");
                consult1 = "insert into docente (id_docente,id_escuela,nombre) values ('"+code+"','"+Codeescuela+"','"+nombre+"')"; 
                consult2 = "insert into usuario(id_docente,pass,rol,user) values ('"+code+"','"+contraseña+"','"+rol+"','"+usuario+"')";
                conn = DriverManager.getConnection("jdbc:mysql://localhost/db_parcial3_java","root","");
                st = conn.createStatement();
                st.execute(consult1);
                st.execute( consult2);
                out.println("<a>Correct</a>");
            }  
            else if(request.getParameter("rol").equals("administrador"))
            {
                consult1 = "insert into administrador (id_admo,nombre) values ('"+code+"','"+nombre+"')"; 
                consult2 = "insert into usuario (id_admo,pass,rol,user) values ('"+code+"','"+contraseña+"','"+rol+"','"+usuario+"')";
                conn = DriverManager.getConnection("jdbc:mysql://localhost/db_parcial3_java","root","");
                st = conn.createStatement();
                st.execute(consult1);
                st.execute(consult2);
                out.println("<a>Correct</a>");
            }/* TODO output your page here. You may use following sample code. */
            
        } catch(SQLException e)
        {
            out.println(e);
        }
        finally {            
            out.close();
            if(rs!= null) rs.close();   
            if(st!= null) st.close();
            if(conn!=null)conn.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ServletUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(ServletUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(ServletUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch(SQLException e)
                {
                }
        
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ServletUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(ServletUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(ServletUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch(SQLException e)
                {
                }
                
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
