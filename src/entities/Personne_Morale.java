package entities;
import java.io.Serializable;

public class Personne_Morale extends Client implements Serializable{
	
	private int Id_Person_M;
	private int Id_Client;
	private Client Cl;
	
	
	public int getId_Person_M() {
		return Id_Person_M;
	}
	public void setId_Person_M(int id_Person_M) {
		Id_Person_M = id_Person_M;
	}
	public int getId_Client() {
		return Id_Client;
	}
	public void setId_Client(int id_Client) {
		Id_Client = id_Client;
	}
	public Client getCl() {
		return Cl;
	}
	public void setCl(Client cl) {
		Cl = cl;
	}
	@Override
	public String toString() {
		return "Personne_Morale [Id_Person_M=" + Id_Person_M + ", Id_Client=" + Id_Client + ", Cl=" + Cl + "]";
	}
	public Personne_Morale(int id_Person_M, int id_Client, Client cl) {
		super();
		Id_Person_M = id_Person_M;
		Id_Client = id_Client;
		Cl = cl;
	}
	public Personne_Morale() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Personne_Morale(int id_Client, int id_Demande, Demande_Location demloc, String nom, String prenom,
			String password, String adresse, String tel, String fax, String e_mail) {
		super(id_Client, id_Demande, demloc, nom, prenom, password, adresse, tel, fax, e_mail);
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
