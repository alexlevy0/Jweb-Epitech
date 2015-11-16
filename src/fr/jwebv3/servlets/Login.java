package fr.jwebv3.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Created by norius on 07.11.2015.
 */
@WebServlet("/log")
public class Login extends HttpServlet {
    public static final String VUE = "/WEB-INF/login.jsp";
    public static final String CHAMP_PASS = "motdepasse";
    public static final String CHAMP_NOM = "nom";
    public static final String ATT_ERREURS  = "erreurs";
    public static final String ATT_RESULTAT = "resultat";

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String resultat;
        Map<String, String> erreurs = new HashMap<String, String>();

        String motDePasse = request.getParameter(CHAMP_PASS);
        String nom = request.getParameter(CHAMP_NOM);
        try {
            validationNom( nom );
        } catch ( Exception e ) {
            erreurs.put( CHAMP_NOM, e.getMessage() );
        }
        if ( erreurs.isEmpty() ) {
            resultat = "Succes du login.";
        } else {
            resultat = "Echec du login.";
        }

        request.setAttribute(ATT_ERREURS, erreurs );
        request.setAttribute(ATT_RESULTAT, resultat );

        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

    private void validationNom(String nom) throws Exception {
        if (nom != null && nom.trim().length() < 3) {
            throw new Exception("Le nom d'utilisateur doit contenir au moins 3 caracteres.");
        }
    }
}