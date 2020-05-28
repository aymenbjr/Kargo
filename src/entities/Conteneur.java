package entities;
import java.io.Serializable;

import com.mysql.jdbc.Blob;

public class Conteneur implements Serializable{
	
	private Integer id_Conteneur;
	private String titre;
	private String description;
	private String Type;
	private double Taille;
	private String image;
	private double Prix;
	private double Poids;
	private double Capacite;
	private String Etat;
	
	
	public Integer getId_Conteneur() {
		return id_Conteneur;
	}
	public void setId_Conteneur(Integer id_Conteneur) {
		this.id_Conteneur = id_Conteneur;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public double getTaille() {
		return Taille;
	}
	public void setTaille(double taille) {
		Taille = taille;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String Image) {
		image = Image;
	}
	public double getPrix() {
		return Prix;
	}
	public void setPrix(double prix) {
		Prix = prix;
	}
	public double getPoids() {
		return Poids;
	}
	public void setPoids(double poids) {
		Poids = poids;
	}
	public double getCapacite() {
		return Capacite;
	}
	public void setCapacite(double capacite) {
		Capacite = capacite;
	}
	public String getEtat() {
		return Etat;
	}
	public void setEtat(String etat) {
		Etat = etat;
	}
	@Override
	public String toString() {
		return "Conteneur [id_Conteneur=" + id_Conteneur + ", titre=" + titre + ", description=" + description
				+ ", Type=" + Type + ", Taille=" + Taille + ", image=" + image + ", Prix=" + Prix + ", Poids=" + Poids
				+ ", Capacite=" + Capacite + ", Etat=" + Etat + "]";
	}
	public Conteneur(int id_Conteneur, String titre, String description, String type, double taille, String image,
			double prix, double poids, double capacite, String etat) {
		super();
		this.id_Conteneur = id_Conteneur;
		this.titre = titre;
		this.description = description;
		Type = type;
		Taille = taille;
		this.image = image;
		Prix = prix;
		Poids = poids;
		Capacite = capacite;
		Etat = etat;
	}
	public Conteneur() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Conteneur( String titre, String description, String type, double taille, String image,
			double prix, double poids, double capacite, String etat) {
		super();
		this.titre = titre;
		this.description = description;
		Type = type;
		Taille = taille;
		this.image = image;
		Prix = prix;
		Poids = poids;
		Capacite = capacite;
		Etat = etat;
	}
	public Conteneur( String titre, String description, String type, double taille,  
			double prix, double poids, double capacite, String etat) {
		super();
		this.titre = titre;
		this.description = description;
		Type = type;
		Taille = taille; 
		Prix = prix;
		Poids = poids;
		Capacite = capacite;
		Etat = etat;
	}
}
