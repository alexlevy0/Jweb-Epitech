package fr.jwebv3.servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.jwebv3.beans.Utilisateur;
import fr.jwebv3.forms.ConnexionForm;

/**
 * Created by alexl on 07/11/2015.
 */
@WebServlet("/connexion")
public class Connexion extends HttpServlet {
    public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/connexion.jsp";
    public static final String VUE_HOME         = "/WEB-INF/index.jsp";
    public static final String ACCES_PUBLIC     = "/accesPublic.jsp";
    public static final String ACCES_RESTREINT  = "/WEB-INF/accesRestreint.jsp";

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ConnexionForm form = new ConnexionForm();
        Utilisateur utilisateur = form.connecterUtilisateur(request);

        HttpSession session = request.getSession();

        if (form.getErreurs().isEmpty()) {
            session.setAttribute(ATT_SESSION_USER, utilisateur);
        } else {
            session.setAttribute(ATT_SESSION_USER, null);
        }
        request.setAttribute(ATT_FORM, form);
        request.setAttribute(ATT_USER, utilisateur);

        this.getServletContext().getRequestDispatcher(VUE_HOME).forward(request, response);
    }
}