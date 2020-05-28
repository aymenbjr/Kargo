package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Blob;

import entities.Client;
import entities.Conteneur;

public class ConteneurImpl implements IConteneur {

	@Override
	public void addConteneur(Conteneur c) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("insert into conteneur values (null,?,?,?,?,?,?,?,?,?)");
			st.setString(1, c.getTitre());
			st.setString(2, c.getDescription());
			st.setString(3, c.getType());
			st.setDouble(4, c.getTaille());
			st.setString(5, c.getImage());
			st.setDouble(6, c.getPrix());
			st.setDouble(7, c.getPoids());
			st.setDouble(8, c.getCapacite());
			st.setString(9, c.getEtat());
			st.executeUpdate();
			st.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Conteneur getConteneur(String id_c) {
		Conteneur c=null;
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Conteneur where Id_Conteneur=?");
			st.setString(1,  id_c);
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				c=new Conteneur();
				c.setId_Conteneur(Integer.parseInt(id_c));
				c.setTitre(rs.getString("Titre"));
				c.setDescription(rs.getString("Description"));
				c.setType(rs.getString("Type"));
				c.setTaille(rs.getDouble("Taille"));
				c.setImage(rs.getString("Image"));
				c.setPrix(rs.getDouble("Prix"));
				c.setPoids(rs.getDouble("Poids"));
				c.setCapacite(rs.getDouble("Capacite"));
				c.setEtat(rs.getString("Etat"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(c==null) throw new RuntimeException("Conteneur "+id_c+" nicht gefunden");
		
		return c;
	}

	@Override
	public void deleteConteneur(int id_c) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("delete from Conteneur where Id_Conteneur=?");
			st.setString(1, String.valueOf(id_c));
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Conteneur updateClonteneur(Conteneur c) {
		Connection conn=DBconnect.getConnection();		
		try {
			PreparedStatement st=conn.prepareStatement("update Conteneur set Titre = ?  , Description = ? , Type = ? ,  Taille = ? ,Prix = ?, Poids = ? , Capacite = ?, Etat = ?  where Id_Conteneur = ?");
			st.setString(1, c.getTitre());
			st.setString(2, c.getDescription());
			st.setString(3, c.getType());
			st.setDouble(4, c.getTaille());
			st.setDouble(5, c.getPrix());
			st.setDouble(6, c.getPoids());
			st.setDouble(7, c.getCapacite());
			st.setString(8, c.getEtat());
			st.setInt(9, c.getId_Conteneur()); 
			st.executeUpdate();
			st.close();
			}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}

	@Override
	public List<Conteneur> ListConteneur() {
		List<Conteneur> prodwyat = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Conteneur");
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Conteneur c=new Conteneur();
				c.setId_Conteneur(rs.getInt("Id_Conteneur"));
				c.setTitre(rs.getString("Titre"));
				c.setDescription(rs.getString("Description"));
				c.setType(rs.getString("Type"));
				c.setTaille(rs.getDouble("Taille"));
				c.setImage(rs.getString("Image"));
				c.setPrix(rs.getDouble("Prix"));
				c.setPoids(rs.getDouble("Poids"));
				c.setCapacite(rs.getDouble("Capacite"));
				c.setEtat(rs.getString("Etat"));
				prodwyat.add(c);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return prodwyat;
	}

	
	
	public List<Conteneur> ListParType(String type) {
		List<Conteneur> prodwyat = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Conteneur where Type like ?");
			st.setString(1, '%' + type + '%');
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Conteneur c=new Conteneur();
				c.setId_Conteneur(rs.getInt("Id_Conteneur"));
				c.setTitre(rs.getString("Titre"));
				c.setDescription(rs.getString("Description"));
				c.setType(type);
				c.setTaille(rs.getDouble("Taille"));
				c.setImage(rs.getString("Image"));
				c.setPrix(rs.getDouble("Prix"));
				c.setPoids(rs.getDouble("Poids"));
				c.setCapacite(rs.getDouble("Capacite"));
				c.setEtat(rs.getString("Etat"));
				prodwyat.add(c);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(prodwyat==null) throw new RuntimeException("Conteneur mit "+type+" nicht gefunden");
		return prodwyat;
	}
 
	@Override
	public List<Conteneur> ListParMC(String MC) {
		List<Conteneur> prodwyat = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Conteneur where Titre like ?");
			st.setString(1, "%"+MC+"%");
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Conteneur c=new Conteneur();
				c.setId_Conteneur(rs.getInt("Id_Conteneur"));
				c.setTitre(rs.getString("Titre"));
				c.setDescription(rs.getString("Description"));
				c.setType(rs.getString("Type"));
				c.setTaille(rs.getDouble("Taille"));
				c.setImage(rs.getString("Image"));
				c.setPrix(rs.getDouble("Prix"));
				c.setPoids(rs.getDouble("Poids"));
				c.setCapacite(rs.getDouble("Capacite"));
				c.setEtat(rs.getString("Etat"));
				prodwyat.add(c);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(prodwyat==null) throw new RuntimeException("Conteneur mit "+MC+" nicht gefunden");
		return prodwyat;
	}

	@Override
	public List<Conteneur> RechercheAvancee(String taill, String pri, String capacit) {
		List<Conteneur> prodwyat = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Conteneur where Taille >= ? and  Prix <= ? and Capacite >= ?");
			st.setString(1, taill);
			st.setString(2, pri);
			st.setString(3, capacit);
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Conteneur c=new Conteneur();
				c.setId_Conteneur(rs.getInt("Id_Conteneur"));
				c.setTitre(rs.getString("Titre"));
				c.setDescription(rs.getString("Description"));
				c.setType(rs.getString("Type"));
				c.setTaille(rs.getDouble("Taille"));
				c.setImage(rs.getString("Image"));
				c.setPrix(rs.getDouble("Prix"));
				c.setPoids(rs.getDouble("Poids"));
				c.setCapacite(rs.getDouble("Capacite"));
				c.setEtat(rs.getString("Etat"));
				prodwyat.add(c);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(prodwyat==null) throw new RuntimeException("Conteneur nicht gefunden");
		return prodwyat;
	}

}
