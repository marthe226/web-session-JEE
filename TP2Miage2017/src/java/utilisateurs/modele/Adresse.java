/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilisateurs.modele;

import java.util.ArrayList;
import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

/**
 *
 * @author deptinfo
 */
@Entity 
public class Adresse {
    
    
   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   private int id;
   private int numéro ;
   private String nom ;
   private int cdpostal;
   private String ville;
   private String pays; 
   //private Collection <Utilisateur>adresses; 

    /*@ManyToMany (cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Collection<Utilisateur> getAdresses() {
        return adresses;
    }

    public void setAdresses(Collection<Utilisateur> adresses) {
        this.adresses = adresses;
    }*/
   
    

    public Adresse(int numero, String nom, int cdpostal, String ville, String pays) {
        this.numéro = numero;
        this.nom = nom;
        this.cdpostal = cdpostal;
        this.ville = ville;
        this.pays = pays;
    }

    public Adresse() {
       
    }
    
    
    public int getNuméro() {
        return numéro;
    }

    public String getNom() {
        return nom;
    }

    public int getCdpostal() {
        return cdpostal;
    }

    public String getVille() {
        return ville;
    }

    public String getPays() {
        return pays;
    }

    public void setNuméro(int numéro) {
        this.numéro = numéro;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setCdpostal(int cdpostal) {
        this.cdpostal = cdpostal;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }
    
    

    
}
