package fr.jwebv3.servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
/**
 * Created by alexl on 27/10/2015.
 */
@WebServlet("/home")
public class servlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String paramAuteur = request.getParameter("auteur");
        String message = "Transmission de variables : OK ! " + paramAuteur;
        request.setAttribute("test", message);
        request.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}