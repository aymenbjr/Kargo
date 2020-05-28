package entities;
import java.io.Serializable;

public class Client implements Serializable{
	private int Id_Client;
	private int Id_Demande;
	private String Nom;
	private String Prenom;
	private String Password;
	private String Adresse;
	private String Tel;
	private String Fax;
	private String E_mail;
	
	
	public int getId_Client() {
		return Id_Client;
	}
	public void setId_Client(int id_Client) {
		Id_Client = id_Client;
	}
	public int getId_Demande() {
		return Id_Demande;
	}
	public void setId_Demande(int id_Demande) {
		Id_Demande = id_Demande;
	}
	
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String prenom) {
		Prenom = prenom;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getAdresse() {
		return Adresse;
	}
	public void setAdresse(String adresse) {
		Adresse = adresse;
	}
	public String getTel() {
		return Tel;
	}
	public void setTel(String tel) {
		Tel = tel;
	}
	public String getFax() {
		return Fax;
	}
	public void setFax(String fax) {
		Fax = fax;
	}
	public String getE_mail() {
		return E_mail;
	}
	public void setE_mail(String e_mail) {
		E_mail = e_mail;
	}
	@Override
	public String toString() {
		return "Client [Id_Client=" + Id_Client + ", Id_Demande=" + Id_Demande + ", Demloc="  + ", Nom=" + Nom
				+ ", Prenom=" + Prenom + ", Password=" + Password + ", Adresse=" + Adresse + ", Tel=" + Tel + ", Fax="
				+ Fax + ", E_mail=" + E_mail + "]";
	}
	public Client(int id_Client, int id_Demande, Demande_Location demloc, String nom, String prenom, String password,
			String adresse, String tel, String fax, String e_mail) {
		super();
		Id_Client = id_Client;
		Id_Demande = id_Demande;
		Nom = nom;
		Prenom = prenom;
		Password = password;
		Adresse = adresse;
		Tel = tel;
		Fax = fax;
		E_mail = e_mail;
	}
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Client( String nom, String prenom, String password,
			String adresse, String tel, String fax, String e_mail) {
		super(); 
		Nom = nom;
		Prenom = prenom;
		Password = password;
		Adresse = adresse;
		Tel = tel;
		Fax = fax;
		E_mail = e_mail;
	}
	
}