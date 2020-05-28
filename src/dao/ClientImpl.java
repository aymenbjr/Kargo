package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Client;

public class ClientImpl implements IClient{
	
	
	@Override
	public Client getClient(String id_c) {
		Client c=null;
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Client where Id_Client=?");
			st.setString(1, id_c);
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				c=new Client();
				c.setId_Client(Integer.parseInt(id_c));
				c.setId_Demande(rs.getInt("Id_Demande"));
				c.setNom(rs.getString("Nom"));
				c.setPrenom(rs.getString("Prenom"));
				c.setPassword(rs.getString("Password"));
				c.setAdresse(rs.getString("Adresse"));
				c.setTel(rs.getString("Tel"));
				c.setFax(rs.getString("Fax"));
				c.setE_mail(rs.getString("E_mail"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(c==null) throw new RuntimeException("Client "+id_c+" nicht gefunden");
		
		return c;
	}
	

	@Override
	public void addClient(Client c) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("insert into Client(Nom,Prenom,Password,Adresse,Tel,Fax,E_mail) values (?,?,?,?,?,?,?)");
			st.setString(1, c.getNom());
			st.setString(2, c.getPrenom());
			st.setString(3, Encryption.encrypt(c.getPassword()));
			st.setString(4, c.getAdresse());
			st.setString(5, c.getTel());
			st.setString(6, c.getFax());
			st.setString(7, c.getE_mail());
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}

	
	

	@Override
	public void deleteClient(int id_c) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("delete from Client where Id_Client=?");
			st.setString(1,String.valueOf(id_c));
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Override
	public Client updateClient(Client c) {
	Connection conn=DBconnect.getConnection();		
	try {
		PreparedStatement st=conn.prepareStatement("update Client set Nom = ?  , Prenom = ? , Adresse = ? ,  Tel = ? ,E_mail = ?, Password = ? , Fax = ? where id_Client = ?");
		st.setString(1, c.getNom());
		st.setString(2, c.getPrenom());
		st.setString(3, c.getAdresse());
		st.setString(4, c.getTel());
		st.setString(5, c.getE_mail());
		st.setString(6, Encryption.encrypt(c.getPassword()));
		st.setString(7, c.getFax());
		st.setInt(8, c.getId_Client());
		st.executeUpdate();
		st.close();
		}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return c;
	}


	@Override
	public List<Client> ListClient() {
		List<Client> clyan = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Client");
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Client c=new Client();
				c.setId_Client(rs.getInt("Id_Client"));
				c.setId_Demande(rs.getInt("Id_Demande"));
				c.setNom(rs.getString("Nom"));
				c.setPrenom(rs.getString("Prenom"));
				c.setPassword(rs.getString("Password"));		
				c.setAdresse(rs.getString("Adresse"));
				c.setTel(rs.getString("Tel"));
				c.setFax(rs.getString("Fax"));
				c.setE_mail(rs.getString("E_mail"));
				clyan.add(c);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return clyan;
	}



	@Override
	public List<Client> ListParMC(String MC) {
		List<Client> clyan = new ArrayList<Client>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Client where Nom like ? ");
			st.setString(1, "%"+MC+"%");
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Client c=new Client();
				c.setId_Client(rs.getInt("Id_Client"));
				c.setId_Demande(rs.getInt("Id_Demande"));
				c.setNom(rs.getString("Nom"));
				c.setPrenom(rs.getString("Prenom"));
				c.setPassword(rs.getString("Password"));		
				c.setAdresse(rs.getString("Adresse"));
				c.setTel(rs.getString("Tel"));
				c.setFax(rs.getString("Fax"));
				c.setE_mail(rs.getString("E_mail"));
				clyan.add(c);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(clyan==null) throw new RuntimeException("Client mit "+MC+" nicht gefunden");
		return clyan;
	}

	@Override
	public boolean existe(String eml, String mdp) {
		Connection conn=DBconnect.getConnection();
		Client c=new Client();
		boolean b=false;
		try {
			PreparedStatement st=conn.prepareStatement("select Password from Client where E_mail=?");
			st.setString(1, eml);
		ResultSet rs=st.executeQuery();
		
		if(rs.next() && Encryption.decrypt(rs.getString("Password")).equals(mdp)){
			b=true;
		}
		
	}catch (SQLException e) {
	}
		return b;
	}

	@Override
	public Client getClient(String eml, String mdp) {
		Connection conn=DBconnect.getConnection();
		Client c=new Client();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Client where E_mail=? and Password=?");
			st.setString(1, eml);
			st.setString(2, mdp);
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				c.setId_Client(rs.getInt("Id_Client"));
				c.setId_Demande(rs.getInt("Id_Demande"));
				c.setNom(rs.getString("Nom"));
				c.setPrenom(rs.getString("Prenom"));
				c.setPassword(mdp);		
				c.setAdresse(rs.getString("Adresse"));
				c.setTel(rs.getString("Tel"));
				c.setFax(rs.getString("Fax"));
				c.setE_mail(rs.getString("E_mail"));
			}
			st.close();
		
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		if(c==null) throw new RuntimeException("Client mit dem Email "+eml+" und Passwort "+mdp+" nicht gefunden");
		return c;
}


	@Override
	public List<Client> ListClientID(String id_c) {
		List<Client> clyan = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Client where E_mail = ?");
			st.setString(1, id_c);
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Client c=new Client();
				c.setId_Client(rs.getInt("Id_Client"));
				c.setId_Demande(rs.getInt("Id_Demande"));
				c.setNom(rs.getString("Nom"));
				c.setPrenom(rs.getString("Prenom"));
				c.setPassword(rs.getString("Password"));		
				c.setAdresse(rs.getString("Adresse"));
				c.setTel(rs.getString("Tel"));
				c.setFax(rs.getString("Fax"));
				c.setE_mail(rs.getString("E_mail"));
				clyan.add(c);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public String getClient2(String id_c) {
		Client c=null;String mailih=null;
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select E_mail from Client where Id_Client=?");
			st.setString(1, id_c);
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				
				mailih=rs.getString("E_mail");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mailih;
	}
	
	
}
