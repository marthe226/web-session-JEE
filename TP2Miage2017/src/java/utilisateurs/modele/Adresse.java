/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilisateurs.modele;

/**
 *
 * @author deptinfo
 */
public class Adresse {
    
    
   private int numéro ;
   private String nom ;
   private int cdpostal;
   private String ville;
    private String pays; 

    public Adresse(int numéro, String nom, int cdpostal, String ville, String pays) {
        this.numéro = numéro;
        this.nom = nom;
        this.cdpostal = cdpostal;
        this.ville = ville;
        this.pays = pays;
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
