package dao;

import entities.Admin;
import entities.Client;

public interface IAdmin {
	public void addAdmin(Admin a);
	Admin getAdmin(String nom, String mdp);
	boolean login(String nom,String mdp);
}
