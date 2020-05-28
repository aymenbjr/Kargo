package dao;

import java.util.List;

import entities.Client;
import entities.Conteneur;

public class MainTest {

	public static void main(String[] args) {
		IClient ic= new ClientImpl();
		IConteneur c=new ConteneurImpl();
		ic.addClient(new Client( "kkkkk","benjbara","654321","paris","+33623198455","","adambj@gmail.com"));
		ic.deleteClient(4);
//		c.addConteneur(new Conteneur("b","c","d",2,"d",6,2,0,"nv"));
//		c.deleteConteneur(18);
		
		
		
		
		
		
	/*	List<Client> clyan = ic.ListClient();
		for(Client c: clyan){
			System.out.println(c.getNom()+" ,"+c.getPrenom()+" ,"+c.getAdresse()+" ,"+c.getTel()+" ,"+c.getFax()+" ,"+c.getE_mail()+" .");
		} 
		
		List<Client> clyan2 = ic.ListParMC("aa");
		for(Client c: clyan2){
			System.out.println(c.getNom()+" ,"+c.getPrenom()+" ,"+c.getAdresse()+" ,"+c.getTel()+" ,"+c.getFax()+" ,"+c.getE_mail()+" .");
		}
	
		Client c=ic.getClient(543);
		System.out.println(c.getNom()+" ,"+c.getPrenom()+" ,"+c.getAdresse()+" ,"+c.getTel()+" ,"+c.getFax()+" ,"+c.getE_mail()+" .");
	*/ 
		
	
	}
	
}
