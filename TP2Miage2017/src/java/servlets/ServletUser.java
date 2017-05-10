/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.util.Collection;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utilisateur.gestionnaires.GestionnaireUtilisateurs;
import utilisateurs.modele.Utilisateur;

/**
 *
 * @author deptinfo
 */
@WebServlet(name = "ServletUser", urlPatterns = {"/ServletUser"})
public class ServletUser extends HttpServlet {

    @EJB
    private GestionnaireUtilisateurs gestionnaireUtilisateurs;

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
        // Pratique pour décider de l'action à faire  
        String action = request.getParameter("action");  
        String forwardTo = "";  
        String message = "";  
  
        if (action != null) {  
            switch (action) {
                case "listerLesUtilisateurs":
                    {
                        // Collection<Utilisateur> liste= GestionnaireUtilisateurs.
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.getAllUsers();
                        request.setAttribute("listeDesUsers", liste);
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";
                        message = "Liste des utilisateurs";
                        break;
                    }
                case "pagination10":
                    {
                         // Collection<Utilisateur> liste= GestionnaireUtilisateurs.
                        gestionnaireUtilisateurs.pagination10(0);
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.pagination10(0);
                        request.setAttribute("listeDesUsers", liste);
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";
                        message = "Liste des utilisateurs 10 par 10";
                        break;
                    }    
                case "next":
                    {
                        
                        gestionnaireUtilisateurs.suivant();
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.suivant();
                        request.setAttribute("listeDesUsers", liste);
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";
                        message = "Suivant";
                        break;
                    }   
                 case "prev":
                    {
                        
                        gestionnaireUtilisateurs.precedent();
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.precedent();
                        request.setAttribute("listeDesUsers", liste);
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";
                        message = "Suivant";
                        break;
                    }   
                case "creerUtilisateursDeTest":
                    {
                        gestionnaireUtilisateurs.creerUtilisateursDeTest();
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.getAllUsers();
                        request.setAttribute("listeDesUsers", liste);
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";
                        message = "Utilisateus tests crées !";
                        break;
                    }
                case "creeUtilisateur":
                    {
                        gestionnaireUtilisateurs.creeUtilisateur(request.getParameter("nom"), request.getParameter("prenom"),request.getParameter("login"));
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.getAllUsers();
                        request.setAttribute("listeDesUsers", liste);
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";
                        message = "Utilisateur crée !";
                        break;
                    }  
                case "supprimerUtilisateur":
                    {
                        gestionnaireUtilisateurs.supprimerUtilisateur(request.getParameter("login"));
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.getAllUsers();
                        request.setAttribute("listeDesUsers", liste);
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";
                        message = "Utilisateur supprimé !";
                        break;
                    }
                      case "rechercherUtilisateur":
                    {
                        //gestionnaireUtilisateurs.getUsersbylogin(); 
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.getUsersbylogin(request.getParameter("login"));
                        request.setAttribute("listeDesUsers", liste);
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";
                        message = "Rechercher un utilisateur par login !";
                        break;
                    }
                case "updateUtilisateur":
                    {
                        //gestionnaireUtilisateurs.getUsersbylogin(); 
                       gestionnaireUtilisateurs.updateUtilisateur(request.getParameter("login"),request.getParameter("nom"), request.getParameter("prenom"));
                        Collection<Utilisateur> liste = gestionnaireUtilisateurs.getAllUsers();  
                        request.setAttribute("listeDesUsers", liste);  
                        forwardTo = "index.jsp?action=listerLesUtilisateurs";  
                        message = "modification utilisateurs"; 
                        break;
                    }
                case "connexion":
                {
                //gestion des sessions
                Utilisateur utilisateur = gestionnaireUtilisateurs.isLoginValid(request.getParameter("firstname"), request.getParameter("login"));
                    
                if(utilisateur!= null)
                    {
                        //Collection<Utilisateur> user = gestionnaireUtilisateurs.getAllUsers();
                        HttpSession session = request.getSession(true);
                        session.setAttribute("user", utilisateur);   
                        message = utilisateur.getFirstname()+"connecté";
                       
                    }
                    else 
                    {
                        message= "login ou username erroné";
                        
                    } 
                forwardTo = "index.jsp?action=listerLesUtilisateurs"; 
                     break;
                }
                
                case "deconnexion":
                {
                    HttpSession session = request.getSession(true);
                    session.invalidate();
                    message= "deconecté";
                    forwardTo = "index.jsp?action=listerLesUtilisateurs"; 
                }
                default:
                    forwardTo = "index.jsp?action=todo";
                    message = "La fonctionnalité pour le paramètre " + action + " est à implémenter !";
                    break;
            }
        }  
  
        RequestDispatcher dp = request.getRequestDispatcher(forwardTo + "&message=" + message);  
        dp.forward(request, response);  
        // Après un forward, plus rien ne peut être exécuté après !  
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
