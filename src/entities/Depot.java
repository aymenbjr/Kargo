package entities;
import java.io.Serializable;

public class Depot implements Serializable{
	
	private int id_Depot;
	private int Id_Conteneur;
	private Conteneur Co;
	private String Libelle_Depot;
	private double Capacite_Depot;
	public int getId_Depot() {
		return id_Depot;
	}
	public void setId_Depot(int id_Depot) {
		this.id_Depot = id_Depot;
	}
	public int getId_Conteneur() {
		return Id_Conteneur;
	}
	public void setId_Conteneur(int id_Conteneur) {
		Id_Conteneur = id_Conteneur;
	}
	public Conteneur getCo() {
		return Co;
	}
	public void setCo(Conteneur co) {
		Co = co;
	}
	public String getLibelle_Depot() {
		return Libelle_Depot;
	}
	public void setLibelle_Depot(String libelle_Depot) {
		Libelle_Depot = libelle_Depot;
	}
	public double getCapacite_Depot() {
		return Capacite_Depot;
	}
	public void setCapacite_Depot(double capacite_Depot) {
		Capacite_Depot = capacite_Depot;
	}
	@Override
	public String toString() {
		return "Depot [id_Depot=" + id_Depot + ", Id_Conteneur=" + Id_Conteneur + ", Co=" + Co + ", Libelle_Depot="
				+ Libelle_Depot + ", Capacite_Depot=" + Capacite_Depot + "]";
	}
	public Depot(int id_Depot, int id_Conteneur, Conteneur co, String libelle_Depot, double capacite_Depot) {
		super();
		this.id_Depot = id_Depot;
		Id_Conteneur = id_Conteneur;
		Co = co;
		Libelle_Depot = libelle_Depot;
		Capacite_Depot = capacite_Depot;
	}
	public Depot() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	

}
