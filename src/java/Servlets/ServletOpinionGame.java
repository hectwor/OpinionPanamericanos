/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import AbstractFactory.Interface.Opinion;
import AbstractFactory.Producer.FactoryProducer;
import AbstractFactory.method.AbstractFactory;
import Db.Dao.DAOOpinion;
import Strategy.RangeStrategy;
import Strategy.ScoreStrategy;
import Strategy.ValueStrategy;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hecto
 */
public class ServletOpinionGame extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletOpinionGame</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletOpinionGame at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        
        String id_game = request.getParameter("game");
        String namePerson = request.getParameter("namePerson");
        String comment = request.getParameter("comment");
        String type = request.getParameter("SelectCalication");
        ValueStrategy strategy = new ScoreStrategy(0);
        String resp = "";
        if(type.equalsIgnoreCase("score")){
             strategy = new ScoreStrategy(parseInt(request.getParameter("clasificationScore")));
        }else if(type.equalsIgnoreCase("range")){
            resp = request.getParameter("clasificationRange");
            String selected = (resp.equals("20/40")?"20/40":resp.equals("40/60")?
                             "40/60":resp.equals("60/80")?"60/80":"80/100");
            String[] parts = selected.split("/");
            System.out.println(selected);
            strategy = new RangeStrategy(parseInt(parts[0]), parseInt(parts[1]));
        }
        
        AbstractFactory factory=FactoryProducer.getFactory("Opinion");
        Opinion opinion = factory.getOpinion("rol-01", "Juego");
        opinion.setIdPersona(namePerson);
        opinion.setClasificacion(strategy.evaluate());
        opinion.setComentario(comment);
        opinion.setId(id_game);
        DAOOpinion dao = new DAOOpinion();
        dao.realizarOpinion(opinion);
        response.sendRedirect("index.jsp?cod=1");
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
