package dao;

import java.util.List;

import entities.Conteneur;

public interface IConteneur {
	public void addConteneur(Conteneur c);
	public Conteneur getConteneur(String id_c);
	public void deleteConteneur(int id_c);
	public Conteneur updateClonteneur(Conteneur c);
	public List<Conteneur> ListConteneur();
	public List<Conteneur> ListParMC(String MC);
	List<Conteneur> ListParType(String type);
	public List<Conteneur> RechercheAvancee(String taille, String prix, String capacite);
}
