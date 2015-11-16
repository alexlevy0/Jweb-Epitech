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
@WebServlet("/deconnexion")
public class Deconnexion extends HttpServlet {
    public static final String URL_REDIRECTION = "http://localhost:8180/home";
    public static final String VUE = "/connexion";

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();

        response.sendRedirect( URL_REDIRECTION );
//        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }
}