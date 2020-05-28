package entities;
import java.io.Serializable;
import java.sql.Date;

public class Demande_Location implements Serializable{
	
	private int Id_Demande;
	private Date Date_Demande;
	private String 	Adresse_Demande;
	private String Code_Postal;
	private String Ville;
	private Client cl;
	private Conteneur Co;
	public int getId_Demande() {
		return Id_Demande;
	}
	public void setId_Demande(int id_Demande) {
		Id_Demande = id_Demande;
	}
	public Date getDate_Demande() {
		return Date_Demande;
	}
	public void setDate_Demande(Date date_Demande) {
		Date_Demande = date_Demande;
	}
	public String getAdresse_Demande() {
		return Adresse_Demande;
	}
	public void setAdresse_Demande(String adresse_Demande) {
		Adresse_Demande = adresse_Demande;
	}
	public String getCode_Postal() {
		return Code_Postal;
	}
	public void setCode_Postal(String code_Postal) {
		Code_Postal = code_Postal;
	}
	public String getVille() {
		return Ville;
	}
	public void setVille(String ville) {
		Ville = ville;
	}
	public Client getCl() {
		return cl;
	}
	public void setCl(Client cl) {
		this.cl = cl;
	}
	public Conteneur getCo() {
		return Co;
	}
	public void setCo(Conteneur co) {
		Co = co;
	}
	@Override
	public String toString() {
		return "Demande_Location [Id_Demande=" + Id_Demande + ", Date_Demande=" + Date_Demande + ", Adresse_Demande="
				+ Adresse_Demande + ", Code_Postal=" + Code_Postal + ", Ville=" + Ville + ", cl=" + cl + ", Co=" + Co
				+ "]";
	}
	public Demande_Location(int id_Demande, Date date_Demande, String adresse_Demande, String code_Postal, String ville,
			Client cl, Conteneur co) {
		super();
		Id_Demande = id_Demande;
		Date_Demande = date_Demande;
		Adresse_Demande = adresse_Demande;
		Code_Postal = code_Postal;
		Ville = ville;
		this.cl = cl;
		Co = co;
	}
	public Demande_Location() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
