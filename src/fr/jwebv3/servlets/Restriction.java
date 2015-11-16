package fr.jwebv3.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Created by alexl on 07/11/2015.
 */
@WebServlet("/restriction")
public class Restriction extends HttpServlet {
    public static final String ACCES_PUBLIC     = "/accesPublic.jsp";
    public static final String ACCES_RESTREINT  = "/WEB-INF/accesRestreint.jsp";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";

    public void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        /*
         * Si l'objet utilisateur n'existe pas dans la session en cours, alors
         * l'utilisateur n'est pas connecté.
         */
        if (session.getAttribute(ATT_SESSION_USER) == null) {
            response.sendRedirect(request.getContextPath() + ACCES_PUBLIC);
        } else {
            this.getServletContext().getRequestDispatcher(ACCES_RESTREINT).forward(request, response);
        }
    }
}