/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilisateur.gestionnaires;

import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import utilisateurs.modele.Utilisateur;

/**
 *
 * @author deptinfo
 */
@Stateless
public class GestionnaireUtilisateurs {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
     // Ici injection de code : on n'initialise pas. L'entity manager sera créé  
    // à partir du contenu de persistence.xml  
    @PersistenceContext  
    private EntityManager em;  
  
    public void creerUtilisateursDeTest() {  
        creeUtilisateur("John", "Lennon", "jlennon");  
        creeUtilisateur("Paul", "Mac Cartney", "pmc");  
        creeUtilisateur("Ringo", "Starr", "rstarr");  
        creeUtilisateur("Georges", "Harisson", "georgesH");  
    }  
  
    public Utilisateur creeUtilisateur(String nom, String prenom, String login) {  
        Utilisateur u = new Utilisateur(nom, prenom, login);
        em.persist(u);  
        return u;  
    }  
  
    public void supprimerUtilisateur(String login){
        Query q = em.createQuery("delete from Utilisateur u where u.login= :login"); 
        q.setParameter("login", login);
        q.executeUpdate();

    }
    
     public void updateUtilisateur(String login, String nom, String prenom) {  
      
        Query q = em.createQuery("update Utilisateur u set u.lastname = :nom,  u.firstname = :prenom where u.login= :login");
        q.setParameter("login", login);
        q.setParameter("nom", nom);
        q.setParameter("prenom", prenom);
        q.executeUpdate();
      
    } 
     
   public Collection <Utilisateur> pagination10(){
       Query query_all = em.createQuery("select u From Utilisteur u order by u.lastname");
       Collection <Utilisateur> all_user = query_all.getResultList();
       Query ten_user= em.createQuery("select u from Utilisateur u where u in : ids");
       ten_user.setParameter("ids", all_user);
       Collection <Utilisateur> page_user = query_ten.getResultList();
       return  userList;
   }  
    
    
   public Collection <Utilisateur> getUsersbylogin(String login) {  
        // Exécution d'une requête équivalente à un select *  
        Query q = em.createQuery("select u from Utilisateur u where u.login= :login"); 
        q.setParameter("login", login);
        Collection<Utilisateur> users= q.getResultList();  
        return users;
    } 
    
    public Collection<Utilisateur> getAllUsers() {  
        // Exécution d'une requête équivalente à un select *  
        Query q = em.createQuery("select u from Utilisateur u");  
        return q.getResultList();  
    }  
    // Add business logic below. (Right-click in editor and choose  
    // "Insert Code > Add Business Method")  
}
