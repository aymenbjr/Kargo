package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Client;
import entities.Commande;

public class CommandeImpl implements ICommande{

	@Override
	public void addCommande(Commande c) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("insert into Commande(Id_Conteneur,Id_Client,DateDebut) values (?,?,? )");
			st.setInt(1, c.getId_Conteneur());
			st.setInt(2, c.getId_Client());
			st.setDate(3,  c.getDateDebut() );
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteCommande(int id_c) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("delete from Commande where id_Demande=?");
			st.setString(1,String.valueOf(id_c));
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Commande> ListCommande() {
		List<Commande> cmd = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Commande");
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Commande c=new Commande();
				c.setId_Demande(rs.getInt("id_Demande"));
				c.setId_Conteneur(rs.getInt("id_Conteneur"));
				c.setId_Client(rs.getInt("id_Client"));
				c.setDateDebut(rs.getDate("dateDebut"));
				cmd.add(c);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cmd;
	}

	@Override
	public List<Commande> ListCommandeID(int id_c) {
		List<Commande> cmd = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Commande where id_Client=?");
			st.setInt(1,id_c);
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Commande c=new Commande();
				c.setId_Demande(rs.getInt("Id_Demande"));
				c.setId_Conteneur(rs.getInt("Id_Conteneur"));
				c.setId_Client(rs.getInt("Id_Client"));
				c.setDateDebut(rs.getDate("DateDebut"));
				cmd.add(c);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cmd;
	}

 
	

}
