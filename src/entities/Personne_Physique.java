package entities;
import java.io.Serializable;

public class Personne_Physique extends Client implements Serializable{
	
	private int Id_Person_P;
	private int Id_Client;
	private Client Cl;
	
	
	public int getId_Person_P() {
		return Id_Person_P;
	}
	public void setId_Person_P(int id_Person_P) {
		Id_Person_P = id_Person_P;
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
		return "Personne_Physique [Id_Person_P=" + Id_Person_P + ", Id_Client=" + Id_Client + ", Cl=" + Cl + "]";
	}
	public Personne_Physique(int id_Person_P, int id_Client, Client cl) {
		super();
		Id_Person_P = id_Person_P;
		Id_Client = id_Client;
		Cl = cl;
	}
	public Personne_Physique() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Personne_Physique(int id_Client, int id_Demande, Demande_Location demloc, String nom, String prenom,
			String password, String adresse, String tel, String fax, String e_mail) {
		super(id_Client, id_Demande, demloc, nom, prenom, password, adresse, tel, fax, e_mail);
		// TODO Auto-generated constructor stub
	}
	 
	
	
	

}
