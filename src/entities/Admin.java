package entities;
import java.io.Serializable;

public class Admin extends Personne_Physique implements Serializable{
	private int Id_Admin;
	private int Id_Person_P;
	private Personne_Physique Pers_P;
	private int Id_Depot;
	private Depot Dep;
	private String Nom;
	private String Password;
	
	
	public int getId_Admin() {
		return Id_Admin;
	}
	public void setId_Admin(int id_Admin) {
		Id_Admin = id_Admin;
	}
	public int getId_Person_P() {
		return Id_Person_P;
	}
	public void setId_Person_P(int id_Person_P) {
		Id_Person_P = id_Person_P;
	}
	public Personne_Physique getPers_P() {
		return Pers_P;
	}
	public void setPers_P(Personne_Physique pers_P) {
		Pers_P = pers_P;
	}
	public int getId_Depot() {
		return Id_Depot;
	}
	public void setId_Depot(int id_Depot) {
		Id_Depot = id_Depot;
	}
	public Depot getDep() {
		return Dep;
	}
	public void setDep(Depot dep) {
		Dep = dep;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public String toString() {
		return "Admin [Id_Admin=" + Id_Admin + ", Id_Person_P=" + Id_Person_P + ", Pers_P=" + Pers_P + ", Id_Depot="
				+ Id_Depot + ", Dep=" + Dep + ", Nom=" + Nom + ", Password=" + Password + "]";
	}
	public Admin(int id_Person_P, int id_Client, Client cl, int id_Admin, int id_Person_P2, Personne_Physique pers_P,
			int id_Depot, Depot dep, String nom, String password) {
		super(id_Person_P, id_Client, cl);
		Id_Admin = id_Admin;
		Id_Person_P = id_Person_P2;
		Pers_P = pers_P;
		Id_Depot = id_Depot;
		Dep = dep;
		Nom = nom;
		Password = password;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(int id_Person_P, int id_Client, Client cl) {
		super(id_Person_P, id_Client, cl);
		// TODO Auto-generated constructor stub
	}
	public Admin(int id_Client, int id_Demande, Demande_Location demloc, String nom, String prenom, String password,
			String adresse, String tel, String fax, String e_mail) {
		super(id_Client, id_Demande, demloc, nom, prenom, password, adresse, tel, fax, e_mail);
		// TODO Auto-generated constructor stub
	}
	 
	
	
	
	
}
	
	