package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;

import entities.Depot;

public class DepotImpl implements IDepot{

	@Override
	public void AddDepot(Depot d) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("insert into Depot values (?,?)");
			st.setString(1, d.getLibelle_Depot());
			st.setDouble(2, d.getCapacite_Depot());
			st.executeUpdate();
			st.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	


	@Override
	public Depot getDepot(String id_d) {
		Depot d=null;
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Depot where Id_Depot=?");
			st.setString(1, id_d );
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				d=new Depot();
				d.setId_Depot(Integer.parseInt(id_d));
				d.setId_Conteneur(rs.getInt("Id_Conteneur"));
				d.setLibelle_Depot(rs.getString("Dibelle_Depot"));
				d.setCapacite_Depot(rs.getDouble("Capacite_Depot"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(d==null) throw new RuntimeException("Depot "+id_d+" nicht gefunden");
		
		return d;
	}
	

	@Override
	public List<Depot> ListDepot() {
		List<Depot> dipo=new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Depot");
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Depot d=new Depot();
				d.setId_Depot(rs.getInt("Id_Depot"));
				d.setId_Conteneur(rs.getInt("Id_Conteneur"));
				d.setLibelle_Depot(rs.getString("Libelle_Depot"));
				d.setCapacite_Depot(rs.getDouble("Capacite_Depot"));
				dipo.add(d);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dipo;
	}

	@Override
	public List<Depot> ListParMC(String mc) {
		List<Depot> dipo=new ArrayList<>();
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("select * from Depot where Libelle_Depot like ?");
			st.setString(1, mc);
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Depot d=new Depot();
				d.setId_Depot(rs.getInt("Id_Depot"));
				d.setId_Conteneur(rs.getInt("Id_Conteneur"));
				d.setLibelle_Depot(rs.getString("Dibelle_Depot"));
				d.setCapacite_Depot(rs.getDouble("Capacite_Depot"));
				dipo.add(d);
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(dipo==null) throw new RuntimeException("Depot "+mc+" nicht gefunden");
		return dipo;
	}
 

	
	@Override
	public Depot updateDepot(Depot d) {
		Connection conn=DBconnect.getConnection();		
		try {
			PreparedStatement st=conn.prepareStatement("update Depot set (?,?)");
			st.setString(1, d.getLibelle_Depot());
			st.setDouble(2, d.getCapacite_Depot());
			st.executeUpdate();
			st.close();
			}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return d;
	}

	
	@Override
	public void deleteDepot(int id_d) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("delete from Depot where Id_Depot=?");
			st.setString(1, String.valueOf(id_d));
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	

}
