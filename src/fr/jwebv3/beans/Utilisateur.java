package fr.jwebv3.beans;

/**
 * Created by alexl on 07/11/2015.
 */
public class Utilisateur {

    private String email;
    private String motDePasse;
    private String nom;

    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }
    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }
    public String getMotDePasse() {
        return motDePasse;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getNom() {
        return nom;
    }
}