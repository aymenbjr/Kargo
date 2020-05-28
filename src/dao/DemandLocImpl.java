package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.*;

import entities.Demande_Location;

public class DemandLocImpl implements IDemandLoc{

	@Override
	public void addDemandLoc(Demande_Location dl) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("insert into Demande_Location values (?,?,?,?)");
			st.setDate(1,dl.getDate_Demande());
			st.setString(2, dl.getAdresse_Demande());
			st.setString(3, dl.getCode_Postal());
			st.setString(4, dl.getVille());
			st.executeUpdate();
			st.close();
				} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
	}
		}
	

	@Override
	public Demande_Location getDemLocation(String id_dl) {
		Demande_Location dl=null;
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Demande_Location where Id_Demande=?");
			st.setString(1, id_dl );
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				dl.setId_Demande(Integer.parseInt(id_dl));
				dl.setDate_Demande(rs.getDate("Date_Demande"));
				dl.setAdresse_Demande(rs.getString("Adresse_Demande"));
				dl.setCode_Postal(rs.getString("Code_Postal"));
				dl.setVille(rs.getString("Ville"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(dl==null) throw new RuntimeException("location  "+id_dl+" nicht gefunden");
		
		return dl;
	}

	@Override
	public List<Demande_Location> GetDemandLoc() {
		List<Demande_Location> kra = new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Demande_Location");
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Demande_Location dl=new Demande_Location();
				dl.setId_Demande(rs.getInt("Id_Demande"));
				dl.setDate_Demande(rs.getDate("Date_Demande"));
				dl.setAdresse_Demande(rs.getString("Adresse_Demande"));
				dl.setCode_Postal(rs.getString("Code_Postal"));
				dl.setVille(rs.getString("Ville"));
				kra.add(dl);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return kra;
	}
 

	@Override
	public Demande_Location updateDemLocation(Demande_Location dl) {
		Connection conn=DBconnect.getConnection();		
		try {
			PreparedStatement st=conn.prepareStatement("update Demande_Location set (?,?,?,?)");
			st.setDate(1,dl.getDate_Demande());
			st.setString(2, dl.getAdresse_Demande());
			st.setString(3, dl.getCode_Postal());
			st.setString(4, dl.getVille());
			st.executeUpdate();
			st.close();
			}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dl;
	}

	@Override
	public void deleteDemandLoc(int id_dl) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("delete from Demande_Location where Id_Demande=?");
			st.setString(1, "id_dl");
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


}
