package entities;

import java.sql.Date;

public class Commande {
	private int id_Demande;
	private Demande_Location DemLoc;
	private int id_Conteneur;
	private Conteneur Co;
	private int id_Client;
	private Client C;
	private java.sql.Date dateDebut;
	
	
	public int getId_Demande() {
		return id_Demande;
	}
	public void setId_Demande(int idDemande) {
		id_Demande = idDemande;
	}
	public Demande_Location getDemLoc() {
		return DemLoc;
	}
	public void setDemLoc(Demande_Location demLoc) {
		DemLoc = demLoc;
	}
	public int getId_Conteneur() {
		return id_Conteneur;
	}
	public void setId_Conteneur(int idConteneur) {
		id_Conteneur = idConteneur;
	}
	public Conteneur getCo() {
		return Co;
	}
	public void setCo(Conteneur co) {
		Co = co;
	}
	public int getId_Client() {
		return id_Client;
	}
	public void setId_Client(int idClient) {
		id_Client = idClient;
	}
	public Client getC() {
		return C;
	}
	public void setC(Client c) {
		C = c;
	}
	public java.sql.Date getDateDebut() {
		return dateDebut;
	}
	public void setDateDebut(java.sql.Date datedebut) {
		dateDebut = datedebut;
	}
	@Override
	public String toString() {
		return "Commande [Id_Demande=" + id_Demande + ", DemLoc=" + DemLoc + ", Id_Conteneur=" + id_Conteneur + ", Co="
				+ Co + ", Id_Client=" + id_Client + ", C=" + C + ", DateDebut=" + dateDebut + "]";
	}
	public Commande(int idDemande, Demande_Location demLoc, int idConteneur, Conteneur co, int idClient, Client c,
			Date datedebut) {
		super();
		id_Demande = idDemande;
		DemLoc = demLoc;
		id_Conteneur = idConteneur;
		Co = co;
		id_Client = idClient;
		C = c;
		dateDebut = datedebut;
	}
	public Commande() {	}
	
	public Commande(int idClient , int idConteneur) {
		this.id_Client = idClient;
		this.id_Conteneur = idConteneur;
		// date d'aujourdhui sous format sql ( java.sql.date)
		this.dateDebut  = new  Date( new java.util.Date().getTime());
	}
	
	
	
}
