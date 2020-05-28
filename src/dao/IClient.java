package dao;

import java.util.List;

import entities.Client;


public interface IClient {
	public void addClient(Client c);
	public Client getClient(String id_c);
	public void deleteClient(int id_c);
	public Client updateClient(Client c);
	public List<Client> ListClient();
	public List<Client> ListParMC(String MC);
	public boolean existe(String eml, String mdp);
	public Client getClient(String eml, String mdp);
	public List<Client> ListClientID(String id_c);
	String getClient2(String id_c);
}
